import 'package:apr/src/core/ui/widgets/_widgets.dart';
import 'package:apr/src/features/main/presentation/_presentation.dart';
import 'package:apr/src/features/operations/presentation/_presentation.dart';
import 'package:apr/src/features/projects/_projects.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class PollArchivePage extends StatefulWidget {
  const PollArchivePage({super.key});

  @override
  State<PollArchivePage> createState() => _PollArchivePageState();
}

class _PollArchivePageState extends InjectableLoadState<PollArchivePage,
    PollArchiveCubit, PollArchiveState> {
  void _onReachedEnd() {
    if (cubit.state.currentPage < cubit.state.countPage) {
      cubit.getOperations(cubit.state.currentPage + 1);
    }
  }

  String _formatProjectPoints(
    List<int> projectPoints,
  ) {
    if (projectPoints.isEmpty) {
      return '';
    }
    if (projectPoints.length == 1) {
      return projectPoints.first.toString();
    } else {
      final int minValue = projectPoints.reduce((a, b) => a < b ? a : b);
      final int maxValue = projectPoints.reduce((a, b) => a > b ? a : b);
      return '$minValue - $maxValue';
    }
  }

  @override
  Widget builder(BuildContext context, PollArchiveState state) => Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UiAprHeaderMobileBar(
              title: MainI18n.surveyArchive,
              onBackTap: context.pop,
            ),
            const SizedBox(height: Insets.l),
            const ProjectUtilityStatusList(),
            const SizedBox(height: Insets.l),
            UiDropDownDateRangeMobile(
              onChanged: (range) {
                cubit.setDateTimeRange(range);
              },
            ),
            const SizedBox(height: Insets.l),
            Expanded(
              child: ScrollableListView(
                onReachedEnd: _onReachedEnd,
                onRefresh: () async => cubit.getOperations(1),
                padding: const EdgeInsets.symmetric(horizontal: Insets.l),
                noItemsBuilder: (context) => _buildEmptyProjectsView(
                  MediaQuery.of(context).size.width,
                ),
                itemCount: state.isLoading
                    ? state.projects.isEmpty
                        ? 10
                        // : state.projects.length + 3
                        : state.projects.length
                    : state.projects.length,
                itemBuilder: (context, index) {
                  if (state.isLoading && state.projects.isEmpty) {
                    return _buildLoader();
                  } else {
                    return Column(
                      children: [
                        _buildItem(state.projects[index]),
                        if (state.isLoading &&
                            state.projects.isNotEmpty &&
                            index == state.projects.length - 1)
                          const Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: UiLoader(),
                              ),
                              SizedBox(height: Insets.s),
                            ],
                          ),
                      ],
                    );
                  }
                },
              ),
            ),
          ],
        ),
      );

  Widget _buildEmptyProjectsView(double sizeWidth) => SizedBox(
        height: 150,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ProjectsI18n.surveyArchiveIsEmpty,
              style: context.text.headline.small.copyWith(fontSize: 11),
            ),
            const SizedBox(height: 10),
            Text(
              ProjectsI18n.surveyArchiveIsEmptyDesc,
              style: context.text.body.small2,
            ),
          ],
        ),
      );

  Widget _buildLoader() => const Column(
        children: [
          UiAprBalanceHistoryCardLoader(),
          SizedBox(height: Insets.s),
        ],
      );

  Widget _buildItem(ProjectEntity projectEntity) => Column(
        children: [
          PollArchiveOperationCard(
            isMobile: true,
            isExtended: false,
            operationNumber: '№${projectEntity.projectId}',
            operationDate: projectEntity.timeEnd != null
                ? DateFormat('dd.MM.yyyy').format(
                    DateTime.parse(
                      projectEntity.timeEnd!,
                    ),
                  )
                : '',
            operationCount: _formatProjectPoints(
              projectEntity.points,
            ),
            tab: projectEntity.surveyStatus == SurveyStatus.refused
                ? Chip(
                    label: Text(
                      ProjectsI18n.optingOut,
                    ),
                  )
                : null,
          ),
          const SizedBox(height: Insets.s),
        ],
      );

  @override
  void dispose() {
    cubit.close();
    super.dispose();
  }
}
