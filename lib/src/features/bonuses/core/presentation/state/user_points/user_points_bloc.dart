import 'dart:async';

import 'package:apr/src/core/utils/helpers/either_helper.dart';
import 'package:apr/src/features/questionnaires/_questionnaires.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:event_bus/event_bus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_points_bloc.freezed.dart';
part 'user_points_event.dart';
part 'user_points_state.dart';

class UserPointsBloc extends Bloc<UserPointsEvent, UserPointsState> {
  UserPointsBloc({
    required PointsRepository repository,
    required EventBus eventBus,
  })  : _repository = repository,
        _eventBus = eventBus,
        super(const UserPointsState.initial()) {
    on<_Fetch>(_fetchPoints);

    _listenerQuestionnairesEvent =
        _eventBus.on<QuestionnairesEvent>().listen((event) {
      if (event == const QuestionnairesEvent.refreshPoints()) {
        add(const _Fetch());
      }
    });
  }

  final PointsRepository _repository;

  final EventBus _eventBus;

  late StreamSubscription<QuestionnairesEvent> _listenerQuestionnairesEvent;

  Future<void> _fetchPoints(
    _Fetch event,
    Emitter<UserPointsState> emit,
  ) async {
    emit(const UserPointsState.fetching());

    try {
      final futures = await Future.wait([
        _repository.getWithdrawalOfPoints(),
        _repository.getPointsConfig(),
      ]);

      final failure = _catchError(futures);

      if (failure != null) {
        emit(
          UserPointsState.error(message: failure.message),
        );
        return;
      }

      final userPoints = (futures[0] as Either<Failure, BonusesDTO>).getRight();
      final pointsConfig =
          (futures[1] as Either<Failure, PointsConfig>).getRight();

      emit(
        UserPointsState.success(
          dto: userPoints!,
          pointsConfig: pointsConfig!,
        ),
      );
    } catch (e) {
      emit(UserPointsState.error(message: e.toString()));
    }
  }

  Failure? _catchError(List<Either<Failure, dynamic>> futures) {
    final eitherWithFailure =
        futures.firstWhereOrNull((element) => element.isLeft());

    return eitherWithFailure?.fold((left) => left, (_) => null);
  }

  @override
  Future<void> close() async {
    await _listenerQuestionnairesEvent.cancel();
    await super.close();
  }
}
