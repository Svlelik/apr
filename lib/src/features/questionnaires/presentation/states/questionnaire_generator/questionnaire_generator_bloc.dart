import 'dart:async';

import 'package:apr/src/core/utils/_utils.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opo_ui_kit_r/reactive_forms.dart';

part 'questionnaire_generator_bloc.freezed.dart';
part 'questionnaire_generator_event.dart';
part 'questionnaire_generator_state.dart';

class QuestionnaireGeneratorBloc
    extends Bloc<QuestionnaireGeneratorEvent, QuestionnaireGeneratorState> {
  QuestionnaireGeneratorBloc()
      : super(
          _Initial(
            form: FormGroup({}),
          ),
        ) {
    on<_Started>(_onStarted);
    on<_GeneratePages>(_generatePages);
  }

  StreamSubscription<Map<String, Object?>?>? valueChangesSubscription;

  Future<void> _onStarted(
    _Started event,
    Emitter<QuestionnaireGeneratorState> emit,
  ) async {
    final questions = [...event.questions]
      ..sort((a, b) => a.sortOrder.compareTo(b.sortOrder));

    emit(
      state.copyWith(
        questionnaire: event.questionnaire,
        questions: questions,
        currentSize: event.currentSize,
        allAnswers: event.allAnswers,
      ),
    );

    _generateForm(emit, event.cacheData);
    _subscribeToForm(emit, event.onUpdateForm);
    _toggleVisibilityFields(emit, state.form.value);

    add(const _GeneratePages());
  }

  void _generateForm(
    Emitter<QuestionnaireGeneratorState> emit, [
    Map<String, dynamic>? cacheData,
  ]) {
    emit(state.copyWith(form: FormGroup(_generateFields(cacheData))));

    _toggleVisibilityFields(emit);
  }

  void _subscribeToForm(
    Emitter<QuestionnaireGeneratorState> emit, [
    void Function(Map<String, Object?> data)? onUpdateForm,
  ]) {
    valueChangesSubscription = state.form.valueChanges.listen((event) {
      if (event != null) {
        event.forEach(_handleQuestionAnswers);
        onUpdateForm?.call(event);
      }
      _toggleVisibilityFields(emit, event);
    });
  }

  /// Обработка ответов на параметр `cancel_other_options`, который отвечает за
  /// уникальность ответа.
  void _handleQuestionAnswers(
    String questionCode,
    Object? answerCodes,
  ) {
    // Проверяем, что ответов больше одного
    if (answerCodes is! List) return;
    if (answerCodes.length <= 1) return;

    // Получаем все доступные опции для выбранного вопроса
    final optionsByQuestion = state.questions
        .firstWhere((q) => q.questionCode == questionCode)
        .options;

    // Конвертируем ответы в опции
    final optionsByAnswers = answerCodes.map(
      (answerCode) {
        return optionsByQuestion.firstWhere(
          (option) => option.code == (answerCode as String),
        );
      },
    );

    // Проверяем, есть ли в списке хотя бы один ответ
    // с флагом cancelOtherOptions == true
    final isThereCancelOtherOptions = optionsByAnswers.any(
      (option) {
        return option.cancelOtherOptions ?? false;
      },
    );

    if (isThereCancelOtherOptions) {
      // Проверяем, имеет ли последний выбранный ответ
      // флаг cancelOtherOptions == true
      final isLastAnswerCancelOtherOptions = optionsByQuestion
              .firstWhere(
                (op) => op.code == (answerCodes.last as String),
              )
              .cancelOtherOptions ??
          false;

      final control = state.form.controls[questionCode];

      if (isLastAnswerCancelOtherOptions) {
        // Если последний ответ "уникальный" - очищаем все другие ответы
        control?.patchValue([answerCodes.last as String]);
      } else {
        // Иначе очищаем список от "уникальных" ответов
        final notUniqueAnswers = answerCodes.where(
          (answerCode) {
            final option = optionsByAnswers.firstWhere(
              (op) => op.code == (answerCode as String),
            );
            return (option.cancelOtherOptions ?? false) == false;
          },
        ).toList();

        control?.patchValue(notUniqueAnswers);
      }
    }
  }

  void _toggleVisibilityFields(
    Emitter<QuestionnaireGeneratorState> emit, [
    Map<String, Object?>? value,
  ]) {
    final Map<String, Object?> formValue = {
      ...value ?? state.form.value,
      ...state.allAnswers,
    };

    for (final question in state.questions) {
      final formControlName = question.questionCode;

      if (question.visibility != null) {
        final List<VisibilityConditionModel> visibilityConditions =
            question.visibility?.visibilityConditions ?? [];
        final VisibilityActionCodeEnum? visibilityActionCode =
            question.visibility?.visibilityActionCode;

        if (visibilityConditions.isNotEmpty) {
          late bool condition;

          if (visibilityActionCode!.isOr) {
            condition = visibilityConditions.any((element) {
              return _visibilityCondition(
                element.visibilityConditionTypeCode,
                formValue[element.questionCode],
                element.answerCode,
              );
            });
          }

          if (visibilityActionCode.isAnd) {
            condition = visibilityConditions.every((element) {
              return _visibilityCondition(
                element.visibilityConditionTypeCode,
                formValue[element.questionCode],
                element.answerCode,
              );
            });
          }

          if (condition) {
            if (state.form.control(formControlName).disabled) {
              state.form.control(formControlName).markAsEnabled();
            }
          } else {
            /*
               TODO: Удаляем ответ в форме (и на бэке?)
            */
            if (state.form.control(formControlName).value != null &&
                state.form.control(formControlName).enabled) {
              state.form.control(formControlName)
                ..patchValue(null, emitEvent: false)
                ..markAsDisabled();
            } else {
              if (state.form.control(formControlName).enabled) {
                state.form.control(formControlName).markAsDisabled();
              }
            }
          }
        }

        add(const _GeneratePages());
      }
    }
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

  void _generatePages(
    _GeneratePages event,
    Emitter<QuestionnaireGeneratorState> emit,
  ) {
    final Map<int, List<QuestionModel>> pages = {};

    for (final fieldKey in state.form.value.keys) {
      final question = _getQuestionByCode(fieldKey);

      final pageNum = _getCurrentPageSized(question);

      if (state.form.control(fieldKey).enabled) {
        if (!pages.containsKey(pageNum)) {
          pages.putIfAbsent(pageNum, () => []);
        }

        pages[pageNum]?.add(question);
      }
    }

    emit(state.copyWith(pages: pages, status: StateStatus.ready));
  }

  int _getCurrentPageSized(QuestionModel questionModel) {
    switch (state.currentSize) {
      case PageSize.xs:
        return questionModel.pageNumXs;
      case PageSize.m:
        return questionModel.pageNumM;
      case PageSize.xl:
        return questionModel.pageNumXl;
    }
  }

  Map<String, AbstractControl<dynamic>> _generateFields([
    Map<String, dynamic>? cacheData,
  ]) {
    final Map<String, AbstractControl<dynamic>> controls = {};

    for (final element in state.questions) {
      controls.putIfAbsent(element.questionCode, () {
        return _createFormControl(element, cacheData?[element.questionCode]);
      });
    }

    return controls;
  }

  FormControl<T> _createFormControlByType<T>(
    QuestionModel question,
    dynamic value,
  ) {
    final formControl = FormControl<T>(
      value: value as T?,
      validators: [
        if (question.isRequired) Validators.required,
        ...question.validators.map((e) {
          return Validators.pattern(e.regex, validationMessage: e.errorMessage);
        }),
      ],
    );

    if (value != null) {
      formControl.markAsTouched();
    }

    return formControl;
  }

  dynamic _convertValueToType(
    dynamic answerValue,
    dynamic cacheValue,
    QuestionModel question,
  ) {
    cacheValue = null;
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
        return bool.tryParse((answerValue as List).single as String);
      }

      return cacheValue;
    }

    if (question.controlType.isCheckBox) {
      if (answerValue != null) {
        return bool.tryParse((answerValue as List).single as String);
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

  // ignore: strict_raw_type
  FormControl _createFormControl(QuestionModel question, dynamic value) {
    if (question.controlType.isDropdownListMulti) {
      return _createFormControlByType<List<String>>(
        question,
        _convertValueToType(
          question.answer?.value,
          value,
          question,
        ),
      );
    }

    if (question.controlType.isSwitchItem) {
      return _createFormControlByType<bool>(
        question,
        _convertValueToType(
          question.answer?.value,
          value,
          question,
        ),
      );
    }

    if (question.controlType.isCheckBox) {
      return _createFormControlByType<bool>(
        question,
        _convertValueToType(
          question.answer?.value,
          value,
          question,
        ),
      );
    }

    if (question.controlType.isMultiList) {
      return _createFormControlByType<List<String>>(
        question,
        _convertValueToType(
          question.answer?.value,
          value,
          question,
        ),
      );
    }

    if (question.controlType.isDate) {
      return _createFormControlByType<DateTime>(
        question,
        _convertValueToType(
          question.answer?.value,
          value,
          question,
        ),
      );
    }

    return _createFormControlByType<String>(
      question,
      _convertValueToType(
        question.answer?.value,
        value,
        question,
      ),
    );
  }

  QuestionModel _getQuestionByCode(String code) {
    return state.questions
        .firstWhere((element) => element.questionCode == code);
  }

  @override
  Future<void> close() {
    valueChangesSubscription?.cancel();

    return super.close();
  }
}
