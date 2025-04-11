import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_error.freezed.dart';
part 'server_error.g.dart';

@freezed
class ServerError with _$ServerError {
  const factory ServerError({
    @JsonKey(name: '__typename') required String typeName,
    String? message,
  }) = _ServerError;

  const ServerError._();

  factory ServerError.fromJson(Object? json) =>
      _$ServerErrorFromJson(json! as Map<String, dynamic>);

  @override
  Map<String, dynamic> toJson();

  bool get hasError => typeName == 'ReturnError';
}
