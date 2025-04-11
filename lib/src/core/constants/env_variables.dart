import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvVariables {
  static Uri get profileService {
    // const value = String.fromEnvironment('PROFILE_SERVICE');

    // if (value.isEmpty) {
    //   return Uri.parse(dotenv.get('PROFILE_SERVICE', fallback: ''));
    // }
    final value = FirebaseRemoteConfig.instance.getString('PROFILE_SERVICE');
    return Uri.parse(
      value.isNotEmpty ? value : dotenv.get('PROFILE_SERVICE', fallback: ''),
    );
  }

  static Uri get questionnaire {
    // const value = String.fromEnvironment('QUESTIONNAIRE');

    // if (value.isEmpty) {
    //   return Uri.parse(dotenv.get('QUESTIONNAIRE', fallback: ''));
    // }

    // return Uri.parse(
    //   const String.fromEnvironment('QUESTIONNAIRE'),
    // );

    final value = FirebaseRemoteConfig.instance.getString('QUESTIONNAIRE');
    return Uri.parse(
      value.isNotEmpty ? value : dotenv.get('QUESTIONNAIRE', fallback: ''),
    );
  }

  static Uri get pointsService {
    final value = FirebaseRemoteConfig.instance.getString('POINTS_SERVICE');
    return Uri.parse(
      value.isNotEmpty ? value : dotenv.get('POINTS_SERVICE', fallback: ''),
    );
  }

  static SpaceEnv get space {
    // const value = String.fromEnvironment('SPACE');

    // if (value.isEmpty) {
    //   return SpaceEnv.fromString(dotenv.get('SPACE', fallback: ''));
    // }

    final value = FirebaseRemoteConfig.instance.getString('SPACE');
    return SpaceEnv.fromString(
      value.isNotEmpty ? value : dotenv.get('SPACE', fallback: ''),
    );
  }

  static Uri get strapiApi {
    final value = '${FirebaseRemoteConfig.instance.getString('STRAPI')}/api';

    if (value.isEmpty) {
      return Uri.parse('${dotenv.get('STRAPI', fallback: '')}/api');
    }

    return Uri.parse(
      value.isNotEmpty ? value : ('${dotenv.get('STRAPI', fallback: '')}/api'),
    );
  }

  static Uri get projects {
    final value = FirebaseRemoteConfig.instance.getString('PROJECTS');

    return Uri.parse(
      value.isNotEmpty ? value : dotenv.get('PROJECTS', fallback: ''),
    );
  }

  static Uri get strapi {
    final value = FirebaseRemoteConfig.instance.getString('STRAPI');

    if (value.isEmpty) {
      return Uri.parse(dotenv.get('STRAPI', fallback: ''));
    }

    return Uri.parse(
      value.isNotEmpty ? value : dotenv.get('STRAPI', fallback: ''),
    );
  }
}

enum SpaceEnv {
  dev,
  prod,
  stage;

  bool get isDev => this == dev;

  bool get isProd => this == prod;

  bool get isStage => this == stage;

  static SpaceEnv fromString(String value) {
    switch (value) {
      case 'dev':
        return SpaceEnv.dev;
      case 'prod':
        return SpaceEnv.prod;
      case 'stage':
        return SpaceEnv.stage;
      default:
        return SpaceEnv.prod;
    }
  }
}
