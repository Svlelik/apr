import 'package:apr/src/core/_core.dart';
import 'package:apr/src/features/bonuses/features/_features.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opo_ui_kit_r/reactive_forms.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

part 'withdraw_to_phone_bloc.freezed.dart';
part 'withdraw_to_phone_event.dart';
part 'withdraw_to_phone_form.dart';
part 'withdraw_to_phone_state.dart';

class WithdrawToPhoneBloc
    extends Bloc<WithdrawToPhoneEvent, WithdrawToPhoneState> {
  WithdrawToPhoneBloc({
    required PointsRepository pointsRepository,
  })  : _pointsRepository = pointsRepository,
        super(const WithdrawToPhoneState()) {
    on<_Init>(_init);
    on<_AddSpending>(_addSpending);
  }

  final PointsRepository _pointsRepository;

  Future<void> _init(
    _Init event,
    Emitter<WithdrawToPhoneState> emit,
  ) async {
    try {
      final futures = await Future.wait([
        _pointsRepository.getPointsConfig(),
        _pointsRepository.getWithdrawalOfPoints(),
        _pointsRepository.getMobileOperators(),
      ]);

      final failure = _catchError(futures);

      if (failure != null) {
        emit(state.copyWith(error: failure.message));
        return;
      }

      final config = (futures[0] as Either<Failure, PointsConfig>).getRight()!;

      final pointsResponse =
          (futures[1] as Either<Failure, BonusesDTO>).getRight()!;

      final mobileOperators =
          (futures[2] as Either<Failure, List<MobileOperator>>).getRight()!;

      final form = WithdrawToPhoneForm();

      await form.init(
        WithdrawToPhoneFormInitParams(
          profile: event.profile,
          pointsConfig: config,
          userPoints: pointsResponse.amount,
          availableSpendAmount: pointsResponse.availableSpendAmount,
        ),
      );

      emit(
        state.copyWith(
          form: form,
          pointsConfig: config,
          userPoints: pointsResponse.amount,
          availableSpendAmount: pointsResponse.availableSpendAmount,
          operators: mobileOperators,
        ),
      );
    } catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<void> _addSpending(
    _AddSpending event,
    Emitter<WithdrawToPhoneState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          addSpendingInProcess: true,
          addSpendingSuccess: false,
        ),
      );

      final values = state.form!.form.rawValue;

      final response = await _pointsRepository.addSpending(
        reason: SpendingReason.phone,
        amount: values.entries
            .firstWhere((e) => e.key == WithdrawToPhoneForm.withdrawalAmount)
            .value! as int,
        firstName: values.entries
            .firstWhere((e) => e.key == WithdrawToPhoneForm.firstName)
            .value! as String,
        surName: values.entries
            .firstWhere((e) => e.key == WithdrawToPhoneForm.surname)
            .value! as String,
        lastName: values.entries
            .firstWhere((e) => e.key == WithdrawToPhoneForm.lastName)
            .value! as String,
        phone: _formatPhoneNumber(
          values.entries
              .firstWhere((e) => e.key == WithdrawToPhoneForm.phoneNumber)
              .value! as String,
        ),
        mobileOperator: (values.entries
                .firstWhere((e) => e.key == WithdrawToPhoneForm.mobileOperator)
                .value! as MobileOperator)
            .mobileOperatorCode,
        isPhone: true,
        isApprovalPartners: values.entries
            .firstWhere((e) => e.key == WithdrawToPhoneForm.approvalPartnerList)
            .value! as bool,
        isApprovalPdn: values.entries
            .firstWhere((e) => e.key == WithdrawToPhoneForm.approvalPdn)
            .value! as bool,
      );

      response.fold(
        (failure) {},
        (_) {
          emit(
            state.copyWith(
              addSpendingInProcess: false,
              addSpendingSuccess: true,
            ),
          );
        },
      );
    } catch (e) {
      emit(
        state.copyWith(
          addSpendingInProcess: false,
        ),
      );
    }
  }

  String _formatPhoneNumber(String phoneNumber) {
    return phoneNumber.replaceAll(AppConstants.unformattedPhoneRegExp, '');
  }

  Failure? _catchError(List<Either<Failure, dynamic>> futures) {
    final eitherWithFailure =
        futures.firstWhereOrNull((element) => element.isLeft());

    return eitherWithFailure?.getLeft();
  }
}
