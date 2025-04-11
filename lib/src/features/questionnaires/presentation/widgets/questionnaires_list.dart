import 'package:apr/src/features/questionnaires/_questionnaires.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class QuestionnairesList extends StatelessWidget {
  const QuestionnairesList({
    super.key,
    this.padding = EdgeInsets.zero,
  });

  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<QuestionnairesBloc>(
      create: (_) => QuestionnairesInjection.sl<QuestionnairesBloc>()
        ..add(const QuestionnairesEvent.started()),
      child: BlocBuilder<QuestionnairesBloc, QuestionnairesState>(
        builder: (context, state) {
          return state.maybeMap(
            orElse: () {
              return AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: GridView.count(
                  key: ValueKey(state),
                  padding: padding,
                  crossAxisCount: 2,
                  crossAxisSpacing: Insets.s,
                  mainAxisSpacing: Insets.s,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  childAspectRatio: 168 / 128,
                  children: state.maybeWhen(
                    orElse: () => List.generate(
                      6,
                      (index) => const UiQuestionnaireItemLoader(),
                    ),
                    success: (_) {
                      return _.map((e) {
                        return UiQuestionnaireItem(
                          title: e.title,
                          coins: e.bonusCost,
                          icon: UiIcons
                              .user, // TODO(afurmanchuk): Заменить иконку, на иконку от анкеты
                          time: Duration(minutes: e.passageTime.toInt()),
                          percent: e.percent,
                          onPressed: () async {
                            await context.pushNamed(
                              'Questionnaire',
                              pathParameters: {'id': e.questionnaireCode},
                            );
                            context.read<QuestionnairesBloc>()
                              ..add(const QuestionnairesEvent.refresh())
                              ..add(const QuestionnairesEvent.refreshPoints());
                          },
                        );
                      }).toList();
                    },
                  ),
                ),
              );
            },
            failure: (_) {
              return Center(child: Text(_.error.message));
            },
          );
        },
      ),
    );
  }
}
