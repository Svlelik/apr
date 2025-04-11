import 'package:apr/src/core/_core.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opo_ui_kit_r/reactive_forms.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

part 'withdraw_to_card_bloc.freezed.dart';
part 'withdraw_to_card_event.dart';
part 'withdraw_to_card_form.dart';
part 'withdraw_to_card_state.dart';

class WithdrawToCardBloc
    extends Bloc<WithdrawToCardEvent, WithdrawToCardState> {
  WithdrawToCardBloc({
    required PointsRepository pointsRepository,
  })  : _pointsRepository = pointsRepository,
        super(const WithdrawToCardState()) {
    on<_Init>(_init);
    on<_AddSpending>(_addSpending);
  }

  final PointsRepository _pointsRepository;

  Future<void> _init(
    _Init event,
    Emitter<WithdrawToCardState> emit,
  ) async {
    try {
      final futures = await Future.wait([
        _pointsRepository.getPointsConfig(),
        _pointsRepository.getWithdrawalOfPoints(),
      ]);

      final failure = _catchError(futures);

      if (failure != null) {
        emit(state.copyWith(error: failure.message));
        return;
      }

      final config = (futures[0] as Either<Failure, PointsConfig>).getRight();

      final pointsResponse =
          (futures[1] as Either<Failure, BonusesDTO>).getRight();

      if (config != null && pointsResponse?.amount != null) {
        final form = WithdrawToCardForm();

        await form.init(
          WithdrawToCardFormInitParams(
            profile: event.profile,
            pointsConfig: config,
            userPoints: pointsResponse?.amount ?? 0,
            availableSpendAmount: pointsResponse?.availableSpendAmount ?? 0,
          ),
        );

        emit(
          state.copyWith(
            form: form,
            pointsConfig: config,
            userPoints: pointsResponse!.amount,
            availableSpendAmount: pointsResponse.availableSpendAmount,
          ),
        );
      }
    } catch (e) {}
  }

  Future<void> _addSpending(
    _AddSpending event,
    Emitter<WithdrawToCardState> emit,
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
        reason: SpendingReason.card,
        amount: values.entries
            .firstWhere((e) => e.key == WithdrawToCardForm.withdrawalAmount)
            .value! as int,
        isApprovalPdn: values.entries
            .firstWhere((e) => e.key == WithdrawToCardForm.approvalPdn)
            .value! as bool,
        firstName: values.entries
            .firstWhere((e) => e.key == WithdrawToCardForm.firstName)
            .value! as String,
        surName: values.entries
            .firstWhere((e) => e.key == WithdrawToCardForm.surname)
            .value! as String,
        lastName: values.entries
            .firstWhere((e) => e.key == WithdrawToCardForm.lastName)
            .value! as String,
        cardNum: _formatCardNumber(
          values.entries
              .firstWhere((e) => e.key == WithdrawToCardForm.cardNumber)
              .value! as String,
        ),
        isMoneyCard: true,
        isApprovalPartners: true, //TODO: Add logic
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

  String _formatCardNumber(String number) {
    return number.replaceAll(' ', '');
  }

  Failure? _catchError(List<Either<Failure, dynamic>> futures) {
    final eitherWithFailure =
        futures.firstWhereOrNull((element) => element.isLeft());

    return eitherWithFailure?.fold((left) => left, (_) => null);
  }
}
