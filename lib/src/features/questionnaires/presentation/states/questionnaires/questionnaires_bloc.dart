import 'dart:async';

import 'package:apr/src/core/_core.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'questionnaires_bloc.freezed.dart';
part 'questionnaires_event.dart';
part 'questionnaires_state.dart';

class QuestionnairesBloc
    extends Bloc<QuestionnairesEvent, QuestionnairesState> {
  QuestionnairesBloc({
    required QuestionnairesRepository repository,
    required AuthManager<AuthenticatedUser> authManager,
  })  : _repository = repository,
        _authManager = authManager,
        super(const _Initial()) {
    on<_Started>(_started);
    on<_Loaded>(_loaded);
    on<_Failed>(_failed);
    on<_Refresh>(_refresh);
  }

  static const _systemType = 'system';

  final QuestionnairesRepository _repository;

  final AuthManager<AuthenticatedUser> _authManager;

  final Map<String, dynamic> _answers = {};

  Future<void> _started(
    _Started event,
    Emitter<QuestionnairesState> emit,
  ) async {
    emit(const _Loading());

    final result = await _repository.getQuestionnaires();

    result.fold((l) {
      add(_Failed(error: l));
    }, (questionnaires) {
      _fillAnswers(questionnaires);
      add(
        _Loaded(
          questionnaires: _computeQuestionnaireVisibilities(questionnaires),
        ),
      );
    });
  }

  void _fillAnswers(List<QuestionnaireModel> questionnaires) {
    _answers.clear();
    for (final questionnaire in questionnaires) {
      for (final question in questionnaire.questions) {
        if (question.answer != null) {
          _answers[question.questionCode] =
              _convertValueToType(question.answer?.value, null, question);
        }
      }
    }
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

  List<QuestionnaireModel> _computeQuestionnaireVisibilities(
    List<QuestionnaireModel> questionnaires,
  ) {
    final result = List<QuestionnaireModel>.empty(growable: true);

    for (final questionnaire in questionnaires) {
      if (questionnaire.visibility == null) {
        result.add(questionnaire);
      } else {
        final isVisible =
            _computeVisibilityConditions(questionnaire.visibility!);
        if (isVisible) {
          result.add(questionnaire);
        }
      }
    }

    return result.where((e) => e.questionnaireStatus != _systemType).toList();
  }

  bool _computeVisibilityConditions(VisibilityModel visibility) {
    if (visibility.visibilityConditions.isEmpty) {
      return true;
    }

    bool condition = true;

    if (visibility.visibilityActionCode.isOr) {
      condition = visibility.visibilityConditions.any((element) {
        return _visibilityCondition(
          element.visibilityConditionTypeCode,
          _answers[element.questionCode],
          element.answerCode,
        );
      });
    }

    if (visibility.visibilityActionCode.isAnd) {
      condition = visibility.visibilityConditions.every((element) {
        return _visibilityCondition(
          element.visibilityConditionTypeCode,
          _answers[element.questionCode],
          element.answerCode,
        );
      });
    }

    return condition;
  }

  bool _visibilityCondition(
    VisibilityConditionTypeCodeEnum code,
    Object? value,
    String answerCode,
  ) {
    if (value == null || '$value'.isEmpty) {
      return false;
    }

    switch (code) {
      case VisibilityConditionTypeCodeEnum.equals:
        if (value is List) {
          return value.contains(answerCode);
        }

        final code = bool.tryParse(answerCode);

        if (code != null) {
          return value == bool.tryParse(answerCode);
        }

        return value == answerCode;
      case VisibilityConditionTypeCodeEnum.more:
        final int? formattedValue = int.tryParse('$value');
        final int? formattedAnswerCode = int.tryParse(answerCode);

        if (formattedValue != null && formattedAnswerCode != null) {
          return formattedValue > formattedAnswerCode;
        }

        return false;

      case VisibilityConditionTypeCodeEnum.less:
        return int.parse('$value') < int.parse(answerCode);
    }
  }

  Future<void> _loaded(
    _Loaded event,
    Emitter<QuestionnairesState> emit,
  ) async {
    emit(_Success(questionnaires: event.questionnaires));
  }

  Future<void> _failed(
    _Failed event,
    Emitter<QuestionnairesState> emit,
  ) async {
    emit(_Failure(error: event.error));
  }

  Future<void> _refresh(
    _Refresh event,
    Emitter<QuestionnairesState> emit,
  ) async {
    emit(const _Loading());

    final result = await _repository.getQuestionnaires();

    unawaited(_authManager.verify());

    result.fold((failure) {
      add(_Failed(error: failure));
    }, (questionnaires) {
      _fillAnswers(questionnaires);
      add(
        _Loaded(
          questionnaires: _computeQuestionnaireVisibilities(questionnaires),
        ),
      );
    });
  }
}
