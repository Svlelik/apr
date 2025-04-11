import 'package:apr/src/features/questionnaires/_questionnaires.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

part 'questionnaire_bloc.freezed.dart';
part 'questionnaire_event.dart';
part 'questionnaire_state.dart';

class QuestionnaireBloc extends Bloc<QuestionnaireEvent, QuestionnaireState> {
  QuestionnaireBloc({
    required QuestionnairesRepository repository,
    required DialogService dialogService,
  })  : _repository = repository,
        _dialogService = dialogService,
        super(const _Initial()) {
    on<_Started>(_started);
    on<_Loaded>(_loaded);
    on<_Failed>(_failed);
    on<_FormUpdated>(_formUpdated);
    on<_ClearCacheForm>(_clearCacheForm);
    on<_UpdateAnswers>(_updateAnswers);
  }

  final QuestionnairesRepository _repository;

  final DialogService _dialogService;

  Future<void> _started(
    _Started event,
    Emitter<QuestionnaireState> emit,
  ) async {
    emit(const _Loading());

    final result = await _repository.getQuestionnaire(event.id);

    await result.fold((l) {
      add(_Failed(error: l));
    }, (r) async {
      final questionnaires = await _repository.getQuestionnaires();

      questionnaires.fold((failure) => add(_Failed(error: failure)),
          (questionnaires) {
        add(
          _Loaded(
            questionnaire: r,
            allAnswers: _fillAnswers(
              questionnaires
                  .where((e) => e.questionnaireCode != r.questionnaireCode)
                  .toList(),
            ),
          ),
        );
      });
    });
  }

  Map<String, Object?> _fillAnswers(List<QuestionnaireModel> questionnaires) {
    final _answers = <String, Object?>{};
    for (final questionnaire in questionnaires) {
      for (final question in questionnaire.questions) {
        if (question.answer != null) {
          _answers[question.questionCode] =
              _convertValueToType(question.answer?.value, null, question);
        }
      }
    }
    return _answers;
  }

  dynamic _convertValueToType(
    dynamic answerValue,
    dynamic cacheValue,
    QuestionModel question,
  ) {
    if (question.controlType.isDropdownListMulti ||
        question.controlType.isMultiList) {
      if (answerValue != null) {
        return (answerValue as List).cast<String>();
      }

      return (cacheValue != null
          ? (cacheValue as List).cast<String>()
          : cacheValue);
    }

    if (question.controlType.isSwitchItem) {
      if (answerValue != null) {
        return (answerValue as List).single;
      }

      return cacheValue;
    }

    if (question.controlType.isCheckBox) {
      if (answerValue != null) {
        return (answerValue as List).single;
      }

      return cacheValue;
    }

    if (question.controlType.isDate) {
      if (answerValue != null) {
        return DateTime.tryParse(
          (answerValue as List).firstOrNull?.toString() ?? '',
        );
      }

      if (cacheValue != null) {
        return DateTime.tryParse(cacheValue.toString());
      } else {
        return null;
      }
    }

    if (answerValue != null && (answerValue as List).firstOrNull != null) {
      return answerValue.single;
    }

    return cacheValue;
  }

  Future<void> _loaded(
    _Loaded event,
    Emitter<QuestionnaireState> emit,
  ) async {
    emit(
      _Success(
        questionnaire: event.questionnaire,
        cacheData: await _repository
            .readFormFromLocal(event.questionnaire.questionnaireCode),
        onPopInvoked: _showConfirmDialog,
        allAnswers: event.allAnswers,
        // callback: () => _dialogService.showDialog(child: child)
      ),
    );
  }

  Future<void> _failed(
    _Failed event,
    Emitter<QuestionnaireState> emit,
  ) async {
    emit(_Failure(error: event.error));
  }

  Future<void> _formUpdated(
    _FormUpdated event,
    Emitter<QuestionnaireState> emit,
  ) async {
    state.maybeWhen(
      orElse: () {},
      success: (questionnaire, _, cacheData, __) {
        _repository.saveFormToLocal(
          questionnaire.questionnaireCode,
          event.data,
        );
      },
    );
  }

  Future<void> _clearCacheForm(
    _ClearCacheForm event,
    Emitter<QuestionnaireState> emit,
  ) async {
    await _repository.deleteFormFromLocal(event.id);
  }

  Future<bool> _showConfirmDialog() async {
    final result = await _dialogService.showDialog<bool>(
      child: UiConfirmDialog(
        title: QuestionnairesI18n.saveResultTitle,
        description: QuestionnairesI18n.saveResultDescription,
        noButtonText: QuestionnairesI18n.notSaveBtn,
        yesButtonText: QuestionnairesI18n.saveBtn,
      ),
    );

    if (result == false) {
      await state.maybeWhen(
        orElse: () {},
        success: (questionnaire, _, cacheData, __) async {
          await _repository
              .deleteFormFromLocal(questionnaire.questionnaireCode);
        },
      );
    } else {}

    return result ?? false;
  }

  Future<void> _updateAnswers(
    _UpdateAnswers event,
    Emitter<QuestionnaireState> emit,
  ) async {
    try {
      await _repository.updateAnswers(event.data);

      add(_ClearCacheForm(event.id));

      // add(_Started(id: event.id));
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
    }
  }

  Future<void> updateAnswers({
    required String id,
    required UpdateAnswerRequestDTO data,
  }) async {
    try {
      await _repository.updateAnswers(data);

      await _repository.deleteFormFromLocal(id);
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
    }
  }
}
