import 'package:apr_sdk/apr_sdk.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

extension OperationEntityExtension on OperationEntity {
  String get amountWithSign =>
      '${operationType == OperationType.charging || operationType == OperationType.refund ? '' : '-'} ${CostNumberFormat.costFormatter.format(amount)}';
}
