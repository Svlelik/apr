import 'package:apr/src/core/features/profile/_profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'region_dto.freezed.dart';
part 'region_dto.g.dart';

@freezed
class RegionDTO with _$RegionDTO {
  const factory RegionDTO({
    @JsonKey(name: 'region_id') required int id,
    @JsonKey(name: 'region') required String region,
    @JsonKey(name: 'fed') FedDTO? fed,
  }) = _RegionDTO;

  const RegionDTO._();

  factory RegionDTO.fromJson(Object? json) =>
      _$RegionDTOFromJson(json! as Map<String, dynamic>);

  @override
  Map<String, dynamic> toJson();
}
