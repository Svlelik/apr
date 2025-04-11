import 'package:apr/src/core/_core.dart';
import 'package:apr/src/core/features/profile/_profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'user.entity.freezed.dart';
part 'user.entity.g.dart';

@immutable
abstract class UserEntity {
  @literal
  const factory UserEntity.notAuthenticated() = NotAuthenticatedUser;

  const factory UserEntity.authenticated({
    required String id,
    required RespondentStatusDTO status,
    required int fullness,
    required bool isApprovalParticipation,
    String? email,
    DateTime? birthday,
    String? lastName,
    String? firstName,
    String? middleName,
    String? phone,
    CityDTO? city,
    SexDTO? sex,
    DateTime? changeDate,
    bool isApprovalPDN,
    String? locality,
    RegionDTO? region,
    DateTime? registrationDate,
    String? telegramUsername,
    int? profileId,
  }) = AuthenticatedUser;

  bool get isAuthenticated;
  bool get isNotAuthenticated;
  AuthenticatedUser? get authenticatedOrNull;

  T when<T extends Object?>({
    required T Function(AuthenticatedUser user) authenticated,
    required T Function() notAuthenticated,
  });
}

@immutable
class NotAuthenticatedUser implements UserEntity {
  @literal
  const NotAuthenticatedUser();

  @override
  bool get isAuthenticated => false;

  @override
  bool get isNotAuthenticated => true;

  @override
  AuthenticatedUser? get authenticatedOrNull => null;

  @override
  T when<T extends Object?>({
    required T Function(AuthenticatedUser user) authenticated,
    required T Function() notAuthenticated,
  }) =>
      notAuthenticated();

  @override
  String toString() => 'User is not authenticated';

  @override
  bool operator ==(Object other) => other is NotAuthenticatedUser;

  @override
  int get hashCode => 0;
}

@freezed
class AuthenticatedUser with _$AuthenticatedUser implements UserEntity {
  const factory AuthenticatedUser({
    @JsonKey(name: 'profile_uid') required String id,

    /// 1	Заполнена расширенная анкета
    /// 2	Анкета регистрации респондента не изменялась более 1 года
    /// 3	Расширенная анкета респондента не изменялась более 1 года
    /// 4	Респондент создал обращение к удалению аккаунта
    /// 5	Респондент в панели уже 3 месяца
    /// 6	Респондент в панели уже 1 год
    /// 7	Респондент в панели уже 2 года
    /// 8	Респондент заполнил первый пробный опрос
    /// 9	Респондент заполнил только один пробный опрос и получил 5 и более приглашений на другие опросы
    /// 10	Респондент минимум один раз откликнулся на приглашение на любой не пробный опрос, и с этого момента прошло меньше года
    /// 11	Респондент ни разу не откликался на опросы весь последний год
    /// 12	Очищены ответы в расширенной анкете, ранее достигнутый процент заполненности стал меньше 100.
    @JsonKey(name: 'respondent_status') required RespondentStatusDTO status,
    String? email,
    DateTime? birthday,
    @JsonKey(name: 'profile_id') int? profileId,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'middle_name') String? middleName,
    @JsonKey(name: 'change_date') DateTime? changeDate,
    @Default(0) int fullness,
    @Default(false)
    @JsonKey(name: 'is_approval_participation')
    bool isApprovalParticipation,
    @Default(false) @JsonKey(name: 'is_approval_pdn') bool isApprovalPDN,
    @Default(false) @JsonKey(name: 'is_imported') bool isImported,
    String? locality,
    RegionDTO? region,
    @JsonKey(name: 'registration_date') DateTime? registrationDate,
    @JsonKey(name: 'telegram_username') String? telegramUsername,
    String? phone,
    CityDTO? city,
    SexDTO? sex,
    String? metaStatus,
  }) = _AuthenticatedUser;

  factory AuthenticatedUser.fromJson(Object? json) =>
      _$AuthenticatedUserFromJson(json! as Map<String, dynamic>);

  const AuthenticatedUser._();

  @override
  Map<String, dynamic> toJson();

  @override
  AuthenticatedUser? get authenticatedOrNull =>
      isNotAuthenticated ? null : this;

  @override
  bool get isAuthenticated => !isNotAuthenticated;

  @override
  bool get isNotAuthenticated => id == '-1';

  @override
  T when<T extends Object?>({
    required T Function(AuthenticatedUser user) authenticated,
    required T Function() notAuthenticated,
  }) {
    throw UnimplementedError();
  }

  static const AuthenticatedUser empty = AuthenticatedUser(
    id: '-1',
    email: '',
    lastName: '',
    firstName: '',
    status: RespondentStatusDTO(
      email: StatusDTO(code: 'np', name: 'Не указан'),
      profile: StatusDTO(code: 'mc', name: 'Телефон подтвержден'),
      activity: StatusDTO(code: 'mc', name: 'Телефон подтвержден'),
    ),
  );

  static const AuthenticatedUser demo = AuthenticatedUser(
    id: '-2',
    email: 'demo',
    lastName: 'demo',
    firstName: 'demo',
    status: RespondentStatusDTO(
      email: StatusDTO(code: 'np', name: 'Не указан'),
      profile: StatusDTO(code: 'mc', name: 'Телефон подтвержден'),
      activity: StatusDTO(code: 'mc', name: 'Телефон подтвержден'),
    ),
  );

  String get fullName => '$lastName $firstName';

  String get shortName {
    // final shortName = '$lastName ${firstName[0]}.';

    return 'shortName';
  }

  bool get isNew => status.profile.code == 'mc';

  String? get birthdayFormatted =>
      birthday != null ? DateFormat.yMd().format(birthday!) : null;

  String get clearPhone => phone?.replaceAll(RegExp('[() -]'), '') ?? '';

  String get formattedPhone =>
      clearPhone.replaceFirst('+7', '').replaceAllMapped(
            RegExp(r'(\d{3})(\d{3})(\d{2})(\d+)'),
            (Match m) => '+7 (${m[1]}) ${m[2]}-${m[3]}-${m[4]}',
          );

  AuthenticatedUser updatePhone(String phone) =>
      copyWith(phone: phone.replaceAll(RegExp('[() -]'), ''));
}
