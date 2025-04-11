FROM 192.168.215.16:5000/flutter:3.22.2 AS android-base

USER root
ENV ANDROID_HOME=/opt/android-sdk \
    PATH=$PATH:/opt/android-sdk/cmdline-tools/latest/bin:/opt/android-sdk/platform-tools \
    FLUTTER_ROOT=/opt/flutter

RUN apt-get update && apt-get install -y unzip wget curl git \
    && rm -rf /var/lib/apt/lists/* \
    && wget https://download.java.net/java/GA/jdk17.0.2/dfd4a8d0985749f896bed50d7138ee7f/8/GPL/openjdk-17.0.2_linux-x64_bin.tar.gz \
    && tar -xzf openjdk-17.0.2_linux-x64_bin.tar.gz -C /usr/local \
    && ln -s /usr/local/jdk-17.0.2 /usr/local/java \
    && update-alternatives --install "/usr/bin/java" "java" "/usr/local/java/bin/java" 1 \
    && rm openjdk-17.0.2_linux-x64_bin.tar.gz \
    && mkdir -p ${ANDROID_HOME}/cmdline-tools \
    && wget -q https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip -O /tmp/cmdline-tools.zip \
    && unzip -q /tmp/cmdline-tools.zip -d ${ANDROID_HOME}/cmdline-tools \
    && mv ${ANDROID_HOME}/cmdline-tools/cmdline-tools ${ANDROID_HOME}/cmdline-tools/latest \
    && rm /tmp/cmdline-tools.zip \
    && yes | ${ANDROID_HOME}/cmdline-tools/latest/bin/sdkmanager --licenses --verbose \
    && ${ANDROID_HOME}/cmdline-tools/latest/bin/sdkmanager "platforms;android-34" \
    && ${ANDROID_HOME}/cmdline-tools/latest/bin/sdkmanager "build-tools;34.0.0" \
    && ${ANDROID_HOME}/cmdline-tools/latest/bin/sdkmanager "platform-tools" \
    && ${ANDROID_HOME}/cmdline-tools/latest/bin/sdkmanager "cmdline-tools;latest"

RUN useradd -ms /bin/bash builder    
RUN chown -R builder:builder /usr/local/flutter

USER builder
WORKDIR /home/builder

RUN mkdir /home/builder/app && echo "flutter.sdk=/opt/flutter" > /home/builder/app/local.properties

RUN git config --global --add safe.directory /usr/local/flutter

ENV FLUTTER_SUPPRESS_ANALYTICS=true \
    CI=true \
    JAVA_HOME=/usr/local/java \
    PATH=$PATH:/opt/android-sdk/cmdline-tools/latest/bin:/opt/android-sdk/platform-tools:$JAVA_HOME/bin

ARG SSH_PRIVATE_KEY
RUN mkdir -p ~/.ssh && \
    echo "$SSH_PRIVATE_KEY" > ~/.ssh/id_rsa && \
    chmod 700 ~/.ssh && \
    chmod 600 ~/.ssh/id_rsa && \
    ssh-keyscan gitlab.kantar-tns.local >> ~/.ssh/known_hosts && \
    chmod 644 ~/.ssh/known_hosts

RUN ssh -T git@gitlab.kantar-tns.local || true

FROM android-base AS build-env
ARG FLAVOR=prod
WORKDIR /home/builder/app
COPY --chown=builder:builder . .
RUN flutter pub get \
    && flutter pub run build_runner build --delete-conflicting-outputs \
    && flutter build appbundle --dart-define=flavor=$FLAVOR --release --verbose

FROM alpine:latest AS artifact
ARG FLAVOR=prod
COPY --from=build-env /home/builder/app/build/app/outputs/bundle/${FLAVOR}Release/app-${FLAVOR}-release.aab /output/

FROM scratch
COPY --from=artifact /output /output