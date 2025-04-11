part of 'passport_bloc.dart';

@freezed
class PassportEvent with _$PassportEvent {
  const factory PassportEvent.started() = _Started;
}
