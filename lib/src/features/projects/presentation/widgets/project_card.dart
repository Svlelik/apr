import 'package:apr/src/features/projects/_projects.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class UiPollCard extends StatelessWidget {
  const UiPollCard({
    required this.project,
    super.key,
    this.onPressed,
    this.translates,
    this.copyToClipBoard,
    this.rightContentSize,
  });

  final ProjectEntity project;

  final VoidCallback? onPressed;

  final VoidCallback? copyToClipBoard;

  final Map<SurveyStatus, String>? translates;

  final double? rightContentSize;

  String get points {
    if (project.points.length == 1) {
      return '${project.points.first}';
    }

    if (project.points.length == 2) {
      return '${project.points.first}-${project.points.last}';
    }

    return '0';
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.all(Insets.l),
          margin: const EdgeInsets.only(bottom: Insets.s),
          decoration: BoxDecoration(
            color: context.color.constant.white,
            borderRadius: BorderRadius.circular(Insets.xl),
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: Insets.l),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              points,
                              style: context.text.display.small.copyWith(
                                color: context.color.primary.onPrimaryContainer,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: Insets.xxs,
                                top: Insets.xs,
                              ),
                              child: UiIcon(
                                Assets.icons.icons24.bonus.path,
                                color: context.color.primary.onPrimaryContainer,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '№${project.projectId}',
                              style: context.text.title.small.copyWith(
                                color: context.color.surface.onSurfaceVariant,
                              ),
                            ),
                            if (project.timeCreate != null)
                              Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: Insets.s,
                                ),
                                width: Insets.xs,
                                height: Insets.xs,
                                decoration: BoxDecoration(
                                  color: context.color.surface.outline,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            if (project.timeCreate != null)
                              Text(
                                DateFormat.yMd().format(project.timeCreate!),
                                style: context.text.body.small.copyWith(
                                  color: context.color.surface.outline,
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      if (project.duration != null)
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: Insets.s,
                            horizontal: Insets.m,
                          ),
                          decoration: BoxDecoration(
                            color: context.color.surface.surfaceContainerLow,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Text(
                            '~${project.duration} ${ProjectsI18n.min}',
                            style: context.text.label.large.copyWith(
                              color: context.color.surface.onSurfaceVariant,
                            ),
                          ),
                        ),
                      UiSurveyStatus(surveyStatus: project.surveyStatus),
                      const Spacer(),
                      TextButton(
                        onPressed: copyToClipBoard,
                        child: const Icon(UiIconsWeb.copy),
                      ),
                      Container(
                        padding: const EdgeInsets.all(Insets.m),
                        decoration: BoxDecoration(
                          color: context.color.surface.surfaceContainerLow,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          UiIcons.arrowR,
                          color: context.color.surface.onSurfaceDim,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      );
}

class UiSurveyStatus extends StatelessWidget {
  const UiSurveyStatus({super.key, this.surveyStatus, this.translates});

  final SurveyStatus? surveyStatus;

  final Map<SurveyStatus, String>? translates;

  @override
  Widget build(BuildContext context) {
    if (surveyStatus == null || surveyStatus != SurveyStatus.incomplete) {
      return const SizedBox.shrink();
    }

    String status = surveyStatus!.name;

    if (translates != null) {
      status = translates![surveyStatus] ?? surveyStatus!.name;
    }

    return Container(
      margin: const EdgeInsets.only(left: Insets.xs),
      padding: const EdgeInsets.symmetric(
        vertical: Insets.s,
        horizontal: Insets.m,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: context.color.surface.onSurfaceOpacity03,
      ),
      child: Text(
        status,
        style: context.text.label.large.copyWith(
          color: context.color.surface.onSurfaceVariant,
        ),
      ),
    );
  }
}
