import 'package:apr/src/features/questionnaires/_questionnaires.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/reactive_forms.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class GeneratorQuestionnaire extends StatefulWidget {
  const GeneratorQuestionnaire({
    required this.questions,
    required this.currentSize,
    super.key,
  });

  final List<QuestionModel> questions;

  final PageSize currentSize;

  @override
  State<GeneratorQuestionnaire> createState() => GeneratorQuestionnaireState();
}

class GeneratorQuestionnaireState extends State<GeneratorQuestionnaire>
    implements IGeneratorQuestionnaire {
  @override
  late final FormGroup form;

  @override
  Map<int, List<QuestionModel>> pages = {};

  @override
  PageSize get currentSize => widget.currentSize;

  @override
  List<QuestionModel> get questions => widget.questions;

  final PageController _controller = PageController();

  @override
  void initState() {
    super.initState();
    generateForm();
    _subscribeToForm();
    generatePages();
  }

  @override
  void generateForm() {
    form = FormGroup(_generateFields());

    _toggleVisibilityFields();
  }

  void _subscribeToForm() {
    form.valueChanges.listen(_toggleVisibilityFields);
  }

  void _toggleVisibilityFields([Map<String, Object?>? value]) {
    final formValue = value ?? form.value;

    for (final question in questions) {
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
            form.control(formControlName).markAsEnabled();
          } else {
            form.control(formControlName).markAsDisabled();
          }
        }

        generatePages();
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

        return value == answerCode;
      case VisibilityConditionTypeCodeEnum.more:
        return int.parse('$value') > int.parse(answerCode);
      case VisibilityConditionTypeCodeEnum.less:
        return int.parse('$value') < int.parse(answerCode);
    }
  }

  @override
  void generatePages() {
    pages = {};

    for (final fieldKey in form.value.keys) {
      final question = getQuestionByCode(fieldKey);

      final pageNum = getCurrentPageSized(question);

      if (form.control(fieldKey).enabled) {
        if (!pages.containsKey(getCurrentPageSized(question))) {
          pages.putIfAbsent(pageNum, () => []);
        }

        pages[pageNum]?.add(question);
      }
    }

    setState(() {});
  }

  void onPressedPrev() {
    _controller.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  void onPressedNext() {
    _controller.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
      formGroup: form,
      child: PageView(
        controller: _controller,
        children: pages.values.map((e) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(Insets.l),
            child: Column(
              children: e.map((e) => getFieldByTypeCode(context, e)).toList(),
            ),
          );
        }).toList(),
      ),
      //  Column(
      //   children: [

      // Expanded(
      //   child: Wrap(
      //     children: pages.values.mapIndexed((index, e) {
      //       return Container(
      //         width: context.mediaQuerySize.width / 4,
      //         height: context.mediaQuerySize.width / 4,
      //         padding: const EdgeInsets.all(Insets.l),
      //         decoration: BoxDecoration(color: _colors.elementAt(index)),
      //         child: Column(
      //           children:
      //               e.map((e) => getFieldByTypeCode(context, e)).toList(),
      //         ),
      //       );
      //     }).toList(),
      //   ),

      // ),
      // FilledButton(
      //   onPressed: () {
      //     form.markAllAsTouched();
      //   },
      //   child: const Text(''),
      // ),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     FilledButton(onPressed: onPressedPrev, child: const Text('Prev')),
      //     FilledButton(onPressed: onPressedNext, child: const Text('Next')),
      //   ],
      // ),
      //   ],
      // ),
    );
  }

  @override
  int getCurrentPageSized(QuestionModel questionModel) {
    switch (currentSize) {
      case PageSize.xs:
        return questionModel.pageNumXs;
      case PageSize.m:
        return questionModel.pageNumM;
      case PageSize.xl:
        return questionModel.pageNumXl;
    }
  }

  @override
  Widget getFieldByTypeCode(BuildContext context, QuestionModel question) {
    if (question.controlType.isInfo) {
      return QInfoField(question: question);
    }

    if (question.controlType.isText) {
      return QTextField(question: question);
    }

    if (question.controlType.isDate) {
      return QDateField(question: question);
    }

    if (question.controlType.isCheckBox) {
      return QCheckboxField(question: question);
    }

    if (question.controlType.isSwitchItem) {
      return QSwitchField(question: question);
    }

    if (question.controlType.isRadioList) {
      return QRadioListField(question: question);
    }

    if (question.controlType.isSegmentedButton) {
      return QSegmentedButtonField(question: question);
    }

    if (question.controlType.isNumber) {
      return QNumberField(question: question);
    }

    if (question.controlType.isDropdownList) {
      return QDropdownListField(question: question);
    }

    if (question.controlType.isDropdownListMulti) {
      return QDropdownListMultiField(question: question);
    }

    return QUnknownField<void>(question: question);
  }

  @override
  void onSubmit() {}

  Map<String, AbstractControl<dynamic>> _generateFields() {
    final Map<String, AbstractControl<dynamic>> _controls = {};

    for (final element in questions) {
      _controls.putIfAbsent(element.questionCode, () {
        return _createFormControl(element);
      });
    }

    return _controls;
  }

  FormControl<T> _createFormControlByType<T>(QuestionModel question) {
    return FormControl<T>(
      validators: [
        if (question.isRequired) Validators.required,
      ],
    );
  }

  // ignore: strict_raw_type
  FormControl _createFormControl(QuestionModel question) {
    if (question.controlType.isDropdownListMulti) {
      return _createFormControlByType<List<String>>(question);
    }

    if (question.controlType.isSwitchItem) {
      return _createFormControlByType<bool>(question);
    }

    if (question.controlType.isCheckBox) {
      return _createFormControlByType<bool>(question);
    }

    return _createFormControlByType<String>(question);
  }

  QuestionModel getQuestionByCode(String code) {
    return questions.firstWhere((element) => element.questionCode == code);
  }
}










// abstract class IGeneratorQuestionnaire {
//   IGeneratorQuestionnaire({
//     required this.questions,
//     required this.currentSize,
//   });

//   final List<QuestionModel> questions;

//   final PageSize currentSize;

//   Map<int, List<QuestionModel>> pages = {};

//   late final FormGroup form;

//   int getCurrentPageSized(QuestionModel questionModel);

//   Widget getFieldByTypeCode(BuildContext context, QuestionModel question);

//   void generatePages();

//   void generateForm();

//   void onPressedPrev();

//   void onPressedNext();

//   void onSubmit();

//   Widget build(BuildContext context);
// }

// class GeneratorQuestionnaire implements IGeneratorQuestionnaire {
//   GeneratorQuestionnaire({
//     required this.questions,
//     required this.currentSize,
//   }) {
//     generateForm();
//     listenForm();
//     generatePages();
//   }

//   @override
//   final List<QuestionModel> questions;

//   @override
//   final PageSize currentSize;

//   @override
//   late final FormGroup form;

//   final PageController _controller = PageController();

//   @override
//   Map<int, List<QuestionModel>> pages = {};

//   final List<Color> _colors = List.generate(
//     20,
//     (index) =>
//         Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(0.3),
//   );

//   @override
//   void onSubmit() {
//     form.markAllAsTouched();

//     if (form.invalid) {
//       form.controls.forEach((key, value) {
//         if (value.invalid) {
//         }
//       });
//     }
//   }

//   @override
//   void onPressedPrev() {
//     _controller.previousPage(
//       duration: const Duration(milliseconds: 200),
//       curve: Curves.ease,
//     );
//   }

//   @override
//   void onPressedNext() {
//     _controller.nextPage(
//       duration: const Duration(milliseconds: 200),
//       curve: Curves.ease,
//     );
//     // if (_controller.page?.toInt() == pages.length - 1) {
//     //   _controller.animateToPage(
//     //     0,
//     //     duration: const Duration(milliseconds: 200),
//     //     curve: Curves.ease,
//     //   );
//     // } else {
//     //   _controller.nextPage(
//     //     duration: const Duration(milliseconds: 200),
//     //     curve: Curves.ease,
//     //   );
//     // }
//   }

//   void listenForm() {
//     for (final question in questions) {
//       final List<VisibilityConditionModel> visibilityConditions =
//           question.visibility?.visibilityConditions ?? [];

//       if (visibilityConditions.isNotEmpty) {
//         final condition = visibilityConditions.any((element) {
//           final value = form.value[element.questionCode];

//           if (value == null) {
//             return false;
//           }

//           switch (element.visibilityConditionType.code) {
//             case VisibilityConditionTypeCodeEnum.equals:
//               return (value as int) == int.parse(element.answerCode);
//             case VisibilityConditionTypeCodeEnum.more:
//               return (value as int) > int.parse(element.answerCode);
//             case VisibilityConditionTypeCodeEnum.less:
//               return (value as int) < int.parse(element.answerCode);
//           }
//         });

//         //  if(condition) {
//         //     form.addAll({..._createFormControl(question)});
//         //   } else {

//         //   }
//       }
//     }
// // form.valueChanges.listen((event) {

// //  });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ReactiveForm(
//       formGroup: form,
//       child: Column(
//         children: [
//           Expanded(
//             child: Wrap(
//               children: pages.values.mapIndexed((index, e) {
//                 return Container(
//                   width: context.mediaQuerySize.width / 4,
//                   height: context.mediaQuerySize.width / 4,
//                   padding: const EdgeInsets.all(Insets.l),
//                   decoration: BoxDecoration(color: _colors.elementAt(index)),
//                   child: Column(
//                     children:
//                         e.map((e) => getFieldByTypeCode(context, e)).toList(),
//                   ),
//                 );
//               }).toList(),
//             ),

//             // PageView(
//             //   controller: _controller,
//             //   children: pages.values.map((e) {
//             //     return SingleChildScrollView(
//             //       padding: const EdgeInsets.all(Insets.l),
//             //       child: Column(
//             //         children: e.map(getFieldByTypeCode).toList(),
//             //       ),
//             //     );
//             //   }).toList(),
//             // ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               FilledButton(onPressed: onPressedPrev, child: const Text('Prev')),
//               FilledButton(onPressed: onPressedNext, child: const Text('Next')),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   void generatePages() {
//     for (final element in questions) {
//       final pageNum = getCurrentPageSized(element);

//       if (!pages.containsKey(getCurrentPageSized(element))) {
//         pages.putIfAbsent(pageNum, () => []);
//       }

//       pages[pageNum]?.add(element);
//     }
//   }

//   @override
//   int getCurrentPageSized(QuestionModel questionModel) {
//     switch (currentSize) {
//       case PageSize.xs:
//         return questionModel.pageNumXs;
//       case PageSize.m:
//         return questionModel.pageNumM;
//       case PageSize.xl:
//         return questionModel.pageNumXl;
//     }
//   }

//   @override
//   Widget getFieldByTypeCode(BuildContext context, QuestionModel question) {
//     switch (question.controlType.controlTypeCode) {
//       case ControlTypeCodeEnum.info:
//         return QInfoField(question: question);
//       case ControlTypeCodeEnum.text:
//         return QTextField(question: question);
//       case ControlTypeCodeEnum.date:
//         return QDateField(question: question);
//       case ControlTypeCodeEnum.checkBox:
//         return QCheckboxField(question: question);
//       case ControlTypeCodeEnum.switchItem:
//         return QSwitchField(question: question);
//       case ControlTypeCodeEnum.radioList:
//         return QRadioListField(question: question);
//       case ControlTypeCodeEnum.segmentedButton:
//         return QSegmentedButtonField(question: question);
//       case ControlTypeCodeEnum.number:
//         return QNumberField(question: question);
//       case ControlTypeCodeEnum.dropdownList:
//         return QDropdownListField(question: question);
//       case ControlTypeCodeEnum.dropdownListMulti:
//         return QDropdownListMultiField(question: question);
//     }
//   }

//   Map<String, AbstractControl<dynamic>> generateFields() {
//     final Map<String, AbstractControl<dynamic>> _controls = {};

//     for (final element in questions) {
//       if (element.controlType.controlTypeCode.isDropdownListMulti) {
//         _controls.putIfAbsent(
//           element.questionCode,
//           () => _createFormControl<List<String>>(element),
//         );
//       } else if (element.controlType.controlTypeCode.isSwitchItem) {
//         _controls.putIfAbsent(
//           element.questionCode,
//           () => _createFormControl<bool>(element),
//         );
//       } else if (element.controlType.controlTypeCode.isCheckBox) {
//         _controls.putIfAbsent(
//           element.questionCode,
//           () => _createFormControl<bool>(element),
//         );
//       } else if (element.controlType.controlTypeCode.isNumber) {
//         _controls.putIfAbsent(
//           element.questionCode,
//           () => _createFormControl<num>(element),
//         );
//       } else {
//         _controls.putIfAbsent(
//           element.questionCode,
//           () => _createFormControl<String>(element),
//         );
//       }
//     }

//     return _controls;
//   }

//   FormControl<T> _createFormControl<T>(QuestionModel question) {
//     return FormControl<T>(
//       validators: [
//         if (question.isRequired) Validators.required,
//       ],
//     );
//   }

//   @override
//   void generateForm() {
//     form = FormGroup(generateFields());
//   }
// }
