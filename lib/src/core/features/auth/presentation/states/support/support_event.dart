part of 'support_bloc.dart';

@freezed
class SupportEvent with _$SupportEvent {
  const factory SupportEvent.started() = _Started;

  const factory SupportEvent.send() = _Send;
}
