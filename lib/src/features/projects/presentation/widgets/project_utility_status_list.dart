import 'package:apr/src/features/operations/_operations.dart';
import 'package:apr/src/features/projects/_projects.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class ProjectUtilityStatusList extends StatelessWidget {
  const ProjectUtilityStatusList({
    super.key,
    this.padding = const EdgeInsets.symmetric(horizontal: Insets.l),
  });

  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<PollArchiveCubit, PollArchiveState>(
        buildWhen: (previous, current) =>
            previous.projectStatus != current.projectStatus,
        builder: (context, state) => Padding(
          padding: padding,
          child: Wrap(
            spacing: Insets.xs,
            children: [
              InkWell(
                onTap: () {
                  context.read<PollArchiveCubit>().setOperationType(null);
                },
                borderRadius: BorderRadius.circular(100),
                child: UiTag(
                  content: Text(
                    OperationsI18n.all,
                    style: context.text.label.large.copyWith(
                      color: state.projectStatus == null
                          ? Colors.white
                          : context.color.surface.onSurface,
                    ),
                  ),
                  backgroundColor: state.projectStatus == null
                      ? context.color.secondary.secondary
                      : Colors.white,
                ),
              ),
              ...[
                ProjectUtilityStatus.finished,
                ProjectUtilityStatus.unfinished,
              ].map(
                (status) => InkWell(
                  onTap: () {
                    context.read<PollArchiveCubit>().setOperationType(status);
                  },
                  borderRadius: BorderRadius.circular(100),
                  child: UiTag(
                    content: Text(
                      ProjectsI18n.projectUtilityStatus(status),
                      style: context.text.label.large.copyWith(
                        color: state.projectStatus == status
                            ? Colors.white
                            : context.color.surface.onSurface,
                      ),
                    ),
                    backgroundColor: state.projectStatus == status
                        ? context.color.secondary.secondary
                        : Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
