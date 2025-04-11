import 'package:apr/src/core/features/profile/_profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dicts_dto.freezed.dart';
part 'dicts_dto.g.dart';

@freezed
class DictsDTO with _$DictsDTO {
  const factory DictsDTO({
    @Default([]) @JsonKey(name: 'cities') List<CityDTO> cities,
    @Default([]) @JsonKey(name: 'sexes') List<SexDTO> sexes,
    @Default([]) @JsonKey(name: 'feds') List<FedDTO> feds,
    @Default([]) @JsonKey(name: 'regions') List<RegionDTO> regions,
  }) = _DictsDTO;

  factory DictsDTO.fromJson(Object? json) =>
      _$DictsDTOFromJson(json! as Map<String, dynamic>);

  @override
  Map<String, dynamic> toJson();
}
