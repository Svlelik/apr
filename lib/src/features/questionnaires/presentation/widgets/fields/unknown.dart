import 'package:apr/src/features/questionnaires/_questionnaires.dart';
import 'package:flutter/material.dart';

class QUnknownField<T> extends QField<T> {
  const QUnknownField({required super.question, super.key});

  @override
  Widget build(BuildContext context) {
    return QFieldWrapper(
      key: UniqueKey(),
      question: question,
      child: const Text('Unknown'),
    );
  }
}
