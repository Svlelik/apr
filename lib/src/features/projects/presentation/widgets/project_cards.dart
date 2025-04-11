import 'package:apr/src/core/_core.dart';
import 'package:apr/src/core/features/profile/_profile.dart';
import 'package:apr/src/features/bonuses/core/_core.dart';
import 'package:apr/src/features/home/presentation/_presentation.dart';
import 'package:apr/src/features/projects/_projects.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';
import 'package:url_launcher/url_launcher_string.dart';

class UiProjectCards extends StatelessWidget {
  const UiProjectCards({super.key});

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<ProjectsBloc, ProjectsState>(
        builder: (context, state) {
          Widget content = UiProjectProfileCard(
            width: 120,
            height: 120,
            useColor: false,
            title: ProjectsI18n.allProjectsDone,
            icon: UiIcon(
              Assets.icons.finishSurvey.path,
              useColor: false,
            ),
            text: TextSpan(
              text: ProjectsI18n.allProjectsDoneDesc,
              children: [
                TextSpan(
                  text: ProjectsI18n.withdrawAccumulatedPoints,
                  style: TextStyle(
                    color: context.color.primary.primary,
                    decorationColor: context.color.primary.primary,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      context.go(BonusesRoutePath.bonuses);
                    },
                ),
              ],
            ),
          );

          if (state.profile.isImported &&
              state.profile.status.isPhoneNotConfirmed) {
            if (state.profile.phone != null) {
              return UiProjectProfileCard(
                title: HomeI18n.fillProfile,
                text: TextSpan(
                  text: ProjectsI18n.fillProfileDescription('i0'),
                  style: context.text.body.medium,
                  children: [
                    TextSpan(
                      text: ProjectsI18n.fillProfileDescription('i1'),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => context.go(ProfileRoutePath.initial),
                      style: TextStyle(
                        color: context.color.primary.primary,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: ProjectsI18n.fillProfileDescription('i2'),
                    ),
                  ],
                ),
              );
            } else {
              return UiProjectProfileCard(
                title: ProjectsI18n.needToConfirmPhoneNumberTitle,
                iconBackgroundColor: context.color.error.errorContainer,
                icon: UiIcon(
                  Assets.iconsWeb.alerts.warnTriangle.path,
                  color: context.color.error.error,
                  width: 24,
                  height: 24,
                ),
                text: TextSpan(
                  text: ProjectsI18n.needToConfirmPhoneNumberDescription('i0'),
                  style: context.text.body.medium,
                  children: [
                    TextSpan(
                      text: ProjectsI18n.needToConfirmPhoneNumberDescription(
                        'i1',
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => context.go(ProfileRoutePath.initial),
                      style: TextStyle(
                        color: context.color.primary.primary,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: ProjectsI18n.needToConfirmPhoneNumberDescription(
                        'i2',
                      ),
                    ),
                  ],
                ),
              );
            }
          }

          if (state.profile.status.needToFeelMainForm) {
            return UiProjectProfileCard(
              title: HomeI18n.fillProfile,
              text: TextSpan(
                text: ProjectsI18n.fillProfileDescription('i0'),
                style: context.text.body.medium,
                children: [
                  TextSpan(
                    text: ProjectsI18n.fillProfileDescription('i1'),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => context.go(ProfileRoutePath.initial),
                    style: TextStyle(
                      color: context.color.primary.primary,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(
                    text: ProjectsI18n.fillProfileDescription('i2'),
                  ),
                ],
              ),
            );
          }

          if (state.profile.status.isMainFormFilled) {
            content = UiProjectProfileCard(
              title: ProjectsI18n.newPollsWillAppearHere,
              text: TextSpan(
                text: ProjectsI18n.fillProfileDescriptionQuestionnaires('i0'),
                style: context.text.body.medium,
                children: [
                  TextSpan(
                    text:
                        ProjectsI18n.fillProfileDescriptionQuestionnaires('i1'),
                    recognizer: TapGestureRecognizer()
                      ..onTap =
                          () => context.goRelative(ProfileRoutePath.initial),
                    style: TextStyle(
                      color: context.color.primary.primary,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(
                    text:
                        ProjectsI18n.fillProfileDescriptionQuestionnaires('i2'),
                  ),
                ],
              ),
            );
          }

          if (state.profile.status.profile.code == 'qa' &&
              state.profile.status.activity.code == 'nw') {
            content = UiProjectProfileCard(
              title: ProjectsI18n.newPollsWillAppearHere,
            );
          }

          final double maxRightContentWidth = _calculateMaxRightContentWidth(
            context,
            state.projects,
          );

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (state.projects.isEmpty &&
                  (state.status.isFetchingSuccess ||
                      state.status.isFetchingFailure))
                SizedBox(width: double.infinity, child: content),
              ...state.projects.map(
                (e) {
                  return UiPollCard(
                    translates: {
                      SurveyStatus.incomplete: ProjectsI18n.incomplete,
                    },
                    onPressed: () {
                      if (e.startLink != null) {
                        launchUrlString(e.startLink!);
                      }
                    },
                    copyToClipBoard: () => copyToClipBoard(e.startLink),
                    project: ProjectEntity(
                      projectId: e.projectId,
                      profileUid: e.profileUid,
                      statusType: e.statusType,
                      timeCreate: e.timeCreate,
                      duration: e.duration,
                      points: e.points,
                    ),
                    rightContentSize: maxRightContentWidth,
                  );
                },
              ),
            ],
          );
        },
      );
}

double _calculateMaxRightContentWidth(
  BuildContext context,
  List<ProjectEntity> projects,
) {
  double maxWidth = 0;

  for (final project in projects) {
    final String point = project.points.length == 1
        ? project.points.first.toString()
        : project.points.length == 2
            ? '${project.points.first}-${project.points.last}'
            : '0';

    final textWidth = _getTextWidth(
          context,
          point,
          context.text.display.small.copyWith(
            color: context.color.primary.onPrimaryContainer,
          ),
        ) +
        _getTextWidth(
          context,
          project.duration.toString(),
          context.text.label.large.copyWith(
            color: context.color.surface.onSurfaceVariant,
          ),
        );
    if (textWidth > maxWidth) {
      maxWidth = textWidth;
    }
  }

  return maxWidth + 250;
}

double _getTextWidth(
  BuildContext context,
  String text,
  TextStyle style,
) {
  final textPainter = TextPainter(
    text: TextSpan(text: text, style: style),
    textDirection: TextDirection.ltr,
    maxLines: 1,
  )..layout();

  return textPainter.size.width;
}

void copyToClipBoard(String? text) {
  Clipboard.setData(
    ClipboardData(
      text: text ?? '',
    ),
  );
}
