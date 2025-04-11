import 'package:freezed_annotation/freezed_annotation.dart';

part 'sex_dto.freezed.dart';
part 'sex_dto.g.dart';

@freezed
class SexDTO with _$SexDTO {
  const factory SexDTO({
    @JsonKey(name: 'sex_id') required int id,
    @JsonKey(name: 'sex') required String sex,
  }) = _SexDTO;

  factory SexDTO.fromJson(Object? json) =>
      _$SexDTOFromJson(json! as Map<String, dynamic>);

  @override
  Map<String, dynamic> toJson();
}
