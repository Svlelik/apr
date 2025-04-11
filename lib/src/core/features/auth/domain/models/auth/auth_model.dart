import 'package:apr/src/core/_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class AuthModel with _$AuthModel {
  const factory AuthModel({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'profile') AuthenticatedUser? profile,
  }) = _AuthModel;

  factory AuthModel.fromJson(Object? json) =>
      _$AuthModelFromJson(json! as Map<String, dynamic>);

  @override
  Map<String, dynamic> toJson();
}
