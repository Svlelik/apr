part of 'rop_cubit.dart';

@freezed
class RopState with _$RopState {
  const factory RopState.initial({
    @Default(StateStatus.pure) StateStatus status,
    String? error,
    List<RopDatumModel>? ropResponse,
  }) = _RopInitialState;

  factory RopState.fromJson(Object? json) =>
      _$RopStateFromJson(json! as Map<String, dynamic>);

  const RopState._();

  @override
  Map<String, dynamic> toJson();
}
