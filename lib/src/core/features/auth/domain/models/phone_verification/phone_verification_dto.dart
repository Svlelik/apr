import 'package:apr/src/core/_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_verification_dto.freezed.dart';
part 'phone_verification_dto.g.dart';

@freezed
class PhoneVerificationDTO with _$PhoneVerificationDTO {
  const factory PhoneVerificationDTO({
    @JsonKey(name: 'session_id') required String sessionId,
    @JsonKey(name: 'timer', fromJson: fromJsonDateTimeUTCRequired)
    required DateTime timer,
  }) = _PhoneVerificationDTO;

  factory PhoneVerificationDTO.fromJson(Object? json) =>
      _$PhoneVerificationDTOFromJson(json! as Map<String, dynamic>);

  @override
  Map<String, dynamic> toJson();
}
