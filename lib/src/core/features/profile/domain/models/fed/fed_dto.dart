import 'package:freezed_annotation/freezed_annotation.dart';

part 'fed_dto.freezed.dart';
part 'fed_dto.g.dart';

@freezed
class FedDTO with _$FedDTO {
  const factory FedDTO({
    @JsonKey(name: 'fed_id') required int id,
    @JsonKey(name: 'fed') required String text,
  }) = _FedDTO;

  const FedDTO._();

  factory FedDTO.fromJson(Object? json) =>
      _$FedDTOFromJson(json! as Map<String, dynamic>);

  @override
  Map<String, dynamic> toJson();
}
