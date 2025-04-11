import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_model.freezed.dart';
part 'onboarding_model.g.dart';

@freezed
class OnboardingModel with _$OnboardingModel {
  const factory OnboardingModel({
    required String title,    
  }) = _OnboardingModel;

  factory OnboardingModel.fromJson(Object? json) =>
      _$OnboardingModelFromJson(json! as Map<String, dynamic>);

  @override
  Map<String, dynamic> toJson();
}
