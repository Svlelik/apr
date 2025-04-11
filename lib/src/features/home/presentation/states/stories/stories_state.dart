part of 'stories_bloc.dart';

@freezed
class StoriesState with _$StoriesState {
  const factory StoriesState({
    @Default(StateStatus.pure) StateStatus status,
    String? error,
    StoriesResponseModel? storesResponse,
  }) = _Initial;
}
