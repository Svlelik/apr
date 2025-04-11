import 'package:apr/src/core/features/profile/_profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_dto.freezed.dart';
part 'city_dto.g.dart';

@freezed
class CityDTO with _$CityDTO {
  const factory CityDTO({
    @JsonKey(name: 'city') required String city,
    @JsonKey(name: 'city_code') required int code,
    @JsonKey(name: 'city_id') required int id,
    @JsonKey(name: 'region') RegionDTO? region,
  }) = _CityDTO;

  factory CityDTO.fromJson(Object? json) =>
      _$CityDTOFromJson(json! as Map<String, dynamic>);

  @override
  Map<String, dynamic> toJson();
}
