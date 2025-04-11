part of 'faq_cubit.dart';

@freezed
class FaqState with _$FaqState {
  const factory FaqState({
    @Default(StateStatus.pure) StateStatus status,
    String? error,
    List<FaqDatumModel>? faqResponse,
  }) = _FaqState;
}
