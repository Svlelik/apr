import 'package:freezed_annotation/freezed_annotation.dart';

part 'respondent_status_dto.freezed.dart';
part 'respondent_status_dto.g.dart';

@freezed
class RespondentStatusDTO with _$RespondentStatusDTO {
  const factory RespondentStatusDTO({
    @JsonKey(name: 'status_email') required StatusDTO email,
    @JsonKey(name: 'status_profile') required StatusDTO profile,
    @JsonKey(name: 'status_activity') required StatusDTO activity,
  }) = _RespondentStatusDTO;

  const RespondentStatusDTO._();

  factory RespondentStatusDTO.fromJson(Object? json) =>
      _$RespondentStatusDTOFromJson(json! as Map<String, dynamic>);

  @override
  Map<String, dynamic> toJson();

  bool get isMainFormFilled => profile.code == 'qr';

  bool get isPhoneNotConfirmed => profile.code == 'nc';

  bool get isExtendedFormFilled => profile.code == 'qa';

  bool get isExtendedFormNeedUpdate => profile.code == 'nu';

  bool get needToFeelMainForm => profile.code == 'nc' || profile.code == 'mc';
}

@freezed
class StatusDTO with _$StatusDTO {
  const factory StatusDTO({
    @JsonKey(name: 'status_code') required String code,
    @JsonKey(name: 'status_name') required String name,
  }) = _StatusDTO;

  factory StatusDTO.fromJson(Object? json) =>
      _$StatusDTOFromJson(json! as Map<String, dynamic>);

  @override
  Map<String, dynamic> toJson();
}
