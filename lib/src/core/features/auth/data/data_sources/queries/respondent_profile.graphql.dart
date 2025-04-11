import 'package:apr/scalar.dart';
import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class Fragment$ProfileFragment {
  Fragment$ProfileFragment({
    this.birthday,
    required this.change_date,
    this.city,
    this.email,
    this.first_name,
    this.fullness,
    required this.is_approval_participation,
    required this.is_approval_pdn,
    this.is_blocked,
    this.is_test_user,
    this.is_imported,
    this.last_name,
    this.locality,
    this.middle_name,
    this.phone,
    required this.profile_id,
    required this.profile_uid,
    this.region,
    required this.registration_date,
    required this.respondent_status,
    this.sex,
    this.telegram_username,
    required this.user_edit,
    this.$__typename = 'Profile',
  });

  factory Fragment$ProfileFragment.fromJson(Map<String, dynamic> json) {
    final l$birthday = json['birthday'];
    final l$change_date = json['change_date'];
    final l$city = json['city'];
    final l$email = json['email'];
    final l$first_name = json['first_name'];
    final l$fullness = json['fullness'];
    final l$is_approval_participation = json['is_approval_participation'];
    final l$is_approval_pdn = json['is_approval_pdn'];
    final l$is_blocked = json['is_blocked'];
    final l$is_test_user = json['is_test_user'];
    final l$is_imported = json['is_imported'];
    final l$last_name = json['last_name'];
    final l$locality = json['locality'];
    final l$middle_name = json['middle_name'];
    final l$phone = json['phone'];
    final l$profile_id = json['profile_id'];
    final l$profile_uid = json['profile_uid'];
    final l$region = json['region'];
    final l$registration_date = json['registration_date'];
    final l$respondent_status = json['respondent_status'];
    final l$sex = json['sex'];
    final l$telegram_username = json['telegram_username'];
    final l$user_edit = json['user_edit'];
    final l$$__typename = json['__typename'];
    return Fragment$ProfileFragment(
      birthday: (l$birthday as String?),
      change_date: (l$change_date as String),
      city: l$city == null
          ? null
          : Fragment$CityFragment.fromJson((l$city as Map<String, dynamic>)),
      email: (l$email as String?),
      first_name: (l$first_name as String?),
      fullness: (l$fullness as int?),
      is_approval_participation: (l$is_approval_participation as bool),
      is_approval_pdn: (l$is_approval_pdn as bool),
      is_blocked: (l$is_blocked as bool?),
      is_test_user: (l$is_test_user as bool?),
      is_imported: (l$is_imported as bool?),
      last_name: (l$last_name as String?),
      locality: (l$locality as String?),
      middle_name: (l$middle_name as String?),
      phone: (l$phone as String?),
      profile_id: (l$profile_id as int),
      profile_uid: (l$profile_uid as String),
      region: l$region == null
          ? null
          : Fragment$RegionFragment.fromJson(
              (l$region as Map<String, dynamic>)),
      registration_date: (l$registration_date as String),
      respondent_status: Fragment$ProfileFragment$respondent_status.fromJson(
          (l$respondent_status as Map<String, dynamic>)),
      sex: l$sex == null
          ? null
          : Fragment$SexFragment.fromJson((l$sex as Map<String, dynamic>)),
      telegram_username: (l$telegram_username as String?),
      user_edit: (l$user_edit as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String? birthday;

  final String change_date;

  final Fragment$CityFragment? city;

  final String? email;

  final String? first_name;

  final int? fullness;

  final bool is_approval_participation;

  final bool is_approval_pdn;

  final bool? is_blocked;

  final bool? is_test_user;

  final bool? is_imported;

  final String? last_name;

  final String? locality;

  final String? middle_name;

  final String? phone;

  final int profile_id;

  final String profile_uid;

  final Fragment$RegionFragment? region;

  final String registration_date;

  final Fragment$ProfileFragment$respondent_status respondent_status;

  final Fragment$SexFragment? sex;

  final String? telegram_username;

  final String user_edit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$birthday = birthday;
    _resultData['birthday'] = l$birthday;
    final l$change_date = change_date;
    _resultData['change_date'] = l$change_date;
    final l$city = city;
    _resultData['city'] = l$city?.toJson();
    final l$email = email;
    _resultData['email'] = l$email;
    final l$first_name = first_name;
    _resultData['first_name'] = l$first_name;
    final l$fullness = fullness;
    _resultData['fullness'] = l$fullness;
    final l$is_approval_participation = is_approval_participation;
    _resultData['is_approval_participation'] = l$is_approval_participation;
    final l$is_approval_pdn = is_approval_pdn;
    _resultData['is_approval_pdn'] = l$is_approval_pdn;
    final l$is_blocked = is_blocked;
    _resultData['is_blocked'] = l$is_blocked;
    final l$is_test_user = is_test_user;
    _resultData['is_test_user'] = l$is_test_user;
    final l$is_imported = is_imported;
    _resultData['is_imported'] = l$is_imported;
    final l$last_name = last_name;
    _resultData['last_name'] = l$last_name;
    final l$locality = locality;
    _resultData['locality'] = l$locality;
    final l$middle_name = middle_name;
    _resultData['middle_name'] = l$middle_name;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$profile_id = profile_id;
    _resultData['profile_id'] = l$profile_id;
    final l$profile_uid = profile_uid;
    _resultData['profile_uid'] = l$profile_uid;
    final l$region = region;
    _resultData['region'] = l$region?.toJson();
    final l$registration_date = registration_date;
    _resultData['registration_date'] = l$registration_date;
    final l$respondent_status = respondent_status;
    _resultData['respondent_status'] = l$respondent_status.toJson();
    final l$sex = sex;
    _resultData['sex'] = l$sex?.toJson();
    final l$telegram_username = telegram_username;
    _resultData['telegram_username'] = l$telegram_username;
    final l$user_edit = user_edit;
    _resultData['user_edit'] = l$user_edit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$birthday = birthday;
    final l$change_date = change_date;
    final l$city = city;
    final l$email = email;
    final l$first_name = first_name;
    final l$fullness = fullness;
    final l$is_approval_participation = is_approval_participation;
    final l$is_approval_pdn = is_approval_pdn;
    final l$is_blocked = is_blocked;
    final l$is_test_user = is_test_user;
    final l$is_imported = is_imported;
    final l$last_name = last_name;
    final l$locality = locality;
    final l$middle_name = middle_name;
    final l$phone = phone;
    final l$profile_id = profile_id;
    final l$profile_uid = profile_uid;
    final l$region = region;
    final l$registration_date = registration_date;
    final l$respondent_status = respondent_status;
    final l$sex = sex;
    final l$telegram_username = telegram_username;
    final l$user_edit = user_edit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$birthday,
      l$change_date,
      l$city,
      l$email,
      l$first_name,
      l$fullness,
      l$is_approval_participation,
      l$is_approval_pdn,
      l$is_blocked,
      l$is_test_user,
      l$is_imported,
      l$last_name,
      l$locality,
      l$middle_name,
      l$phone,
      l$profile_id,
      l$profile_uid,
      l$region,
      l$registration_date,
      l$respondent_status,
      l$sex,
      l$telegram_username,
      l$user_edit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ProfileFragment) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$birthday = birthday;
    final lOther$birthday = other.birthday;
    if (l$birthday != lOther$birthday) {
      return false;
    }
    final l$change_date = change_date;
    final lOther$change_date = other.change_date;
    if (l$change_date != lOther$change_date) {
      return false;
    }
    final l$city = city;
    final lOther$city = other.city;
    if (l$city != lOther$city) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$first_name = first_name;
    final lOther$first_name = other.first_name;
    if (l$first_name != lOther$first_name) {
      return false;
    }
    final l$fullness = fullness;
    final lOther$fullness = other.fullness;
    if (l$fullness != lOther$fullness) {
      return false;
    }
    final l$is_approval_participation = is_approval_participation;
    final lOther$is_approval_participation = other.is_approval_participation;
    if (l$is_approval_participation != lOther$is_approval_participation) {
      return false;
    }
    final l$is_approval_pdn = is_approval_pdn;
    final lOther$is_approval_pdn = other.is_approval_pdn;
    if (l$is_approval_pdn != lOther$is_approval_pdn) {
      return false;
    }
    final l$is_blocked = is_blocked;
    final lOther$is_blocked = other.is_blocked;
    if (l$is_blocked != lOther$is_blocked) {
      return false;
    }
    final l$is_test_user = is_test_user;
    final lOther$is_test_user = other.is_test_user;
    if (l$is_test_user != lOther$is_test_user) {
      return false;
    }
    final l$is_imported = is_imported;
    final lOther$is_imported = other.is_imported;
    if (l$is_imported != lOther$is_imported) {
      return false;
    }
    final l$last_name = last_name;
    final lOther$last_name = other.last_name;
    if (l$last_name != lOther$last_name) {
      return false;
    }
    final l$locality = locality;
    final lOther$locality = other.locality;
    if (l$locality != lOther$locality) {
      return false;
    }
    final l$middle_name = middle_name;
    final lOther$middle_name = other.middle_name;
    if (l$middle_name != lOther$middle_name) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$profile_id = profile_id;
    final lOther$profile_id = other.profile_id;
    if (l$profile_id != lOther$profile_id) {
      return false;
    }
    final l$profile_uid = profile_uid;
    final lOther$profile_uid = other.profile_uid;
    if (l$profile_uid != lOther$profile_uid) {
      return false;
    }
    final l$region = region;
    final lOther$region = other.region;
    if (l$region != lOther$region) {
      return false;
    }
    final l$registration_date = registration_date;
    final lOther$registration_date = other.registration_date;
    if (l$registration_date != lOther$registration_date) {
      return false;
    }
    final l$respondent_status = respondent_status;
    final lOther$respondent_status = other.respondent_status;
    if (l$respondent_status != lOther$respondent_status) {
      return false;
    }
    final l$sex = sex;
    final lOther$sex = other.sex;
    if (l$sex != lOther$sex) {
      return false;
    }
    final l$telegram_username = telegram_username;
    final lOther$telegram_username = other.telegram_username;
    if (l$telegram_username != lOther$telegram_username) {
      return false;
    }
    final l$user_edit = user_edit;
    final lOther$user_edit = other.user_edit;
    if (l$user_edit != lOther$user_edit) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ProfileFragment
    on Fragment$ProfileFragment {
  CopyWith$Fragment$ProfileFragment<Fragment$ProfileFragment> get copyWith =>
      CopyWith$Fragment$ProfileFragment(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ProfileFragment<TRes> {
  factory CopyWith$Fragment$ProfileFragment(
    Fragment$ProfileFragment instance,
    TRes Function(Fragment$ProfileFragment) then,
  ) = _CopyWithImpl$Fragment$ProfileFragment;

  factory CopyWith$Fragment$ProfileFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ProfileFragment;

  TRes call({
    String? birthday,
    String? change_date,
    Fragment$CityFragment? city,
    String? email,
    String? first_name,
    int? fullness,
    bool? is_approval_participation,
    bool? is_approval_pdn,
    bool? is_blocked,
    bool? is_test_user,
    bool? is_imported,
    String? last_name,
    String? locality,
    String? middle_name,
    String? phone,
    int? profile_id,
    String? profile_uid,
    Fragment$RegionFragment? region,
    String? registration_date,
    Fragment$ProfileFragment$respondent_status? respondent_status,
    Fragment$SexFragment? sex,
    String? telegram_username,
    String? user_edit,
    String? $__typename,
  });
  CopyWith$Fragment$CityFragment<TRes> get city;
  CopyWith$Fragment$RegionFragment<TRes> get region;
  CopyWith$Fragment$ProfileFragment$respondent_status<TRes>
      get respondent_status;
  CopyWith$Fragment$SexFragment<TRes> get sex;
}

class _CopyWithImpl$Fragment$ProfileFragment<TRes>
    implements CopyWith$Fragment$ProfileFragment<TRes> {
  _CopyWithImpl$Fragment$ProfileFragment(
    this._instance,
    this._then,
  );

  final Fragment$ProfileFragment _instance;

  final TRes Function(Fragment$ProfileFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? birthday = _undefined,
    Object? change_date = _undefined,
    Object? city = _undefined,
    Object? email = _undefined,
    Object? first_name = _undefined,
    Object? fullness = _undefined,
    Object? is_approval_participation = _undefined,
    Object? is_approval_pdn = _undefined,
    Object? is_blocked = _undefined,
    Object? is_test_user = _undefined,
    Object? is_imported = _undefined,
    Object? last_name = _undefined,
    Object? locality = _undefined,
    Object? middle_name = _undefined,
    Object? phone = _undefined,
    Object? profile_id = _undefined,
    Object? profile_uid = _undefined,
    Object? region = _undefined,
    Object? registration_date = _undefined,
    Object? respondent_status = _undefined,
    Object? sex = _undefined,
    Object? telegram_username = _undefined,
    Object? user_edit = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ProfileFragment(
        birthday:
            birthday == _undefined ? _instance.birthday : (birthday as String?),
        change_date: change_date == _undefined || change_date == null
            ? _instance.change_date
            : (change_date as String),
        city: city == _undefined
            ? _instance.city
            : (city as Fragment$CityFragment?),
        email: email == _undefined ? _instance.email : (email as String?),
        first_name: first_name == _undefined
            ? _instance.first_name
            : (first_name as String?),
        fullness:
            fullness == _undefined ? _instance.fullness : (fullness as int?),
        is_approval_participation: is_approval_participation == _undefined ||
                is_approval_participation == null
            ? _instance.is_approval_participation
            : (is_approval_participation as bool),
        is_approval_pdn:
            is_approval_pdn == _undefined || is_approval_pdn == null
                ? _instance.is_approval_pdn
                : (is_approval_pdn as bool),
        is_blocked: is_blocked == _undefined
            ? _instance.is_blocked
            : (is_blocked as bool?),
        is_test_user: is_test_user == _undefined
            ? _instance.is_test_user
            : (is_test_user as bool?),
        is_imported: is_imported == _undefined
            ? _instance.is_imported
            : (is_imported as bool?),
        last_name: last_name == _undefined
            ? _instance.last_name
            : (last_name as String?),
        locality:
            locality == _undefined ? _instance.locality : (locality as String?),
        middle_name: middle_name == _undefined
            ? _instance.middle_name
            : (middle_name as String?),
        phone: phone == _undefined ? _instance.phone : (phone as String?),
        profile_id: profile_id == _undefined || profile_id == null
            ? _instance.profile_id
            : (profile_id as int),
        profile_uid: profile_uid == _undefined || profile_uid == null
            ? _instance.profile_uid
            : (profile_uid as String),
        region: region == _undefined
            ? _instance.region
            : (region as Fragment$RegionFragment?),
        registration_date:
            registration_date == _undefined || registration_date == null
                ? _instance.registration_date
                : (registration_date as String),
        respondent_status: respondent_status == _undefined ||
                respondent_status == null
            ? _instance.respondent_status
            : (respondent_status as Fragment$ProfileFragment$respondent_status),
        sex: sex == _undefined ? _instance.sex : (sex as Fragment$SexFragment?),
        telegram_username: telegram_username == _undefined
            ? _instance.telegram_username
            : (telegram_username as String?),
        user_edit: user_edit == _undefined || user_edit == null
            ? _instance.user_edit
            : (user_edit as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$CityFragment<TRes> get city {
    final local$city = _instance.city;
    return local$city == null
        ? CopyWith$Fragment$CityFragment.stub(_then(_instance))
        : CopyWith$Fragment$CityFragment(local$city, (e) => call(city: e));
  }

  CopyWith$Fragment$RegionFragment<TRes> get region {
    final local$region = _instance.region;
    return local$region == null
        ? CopyWith$Fragment$RegionFragment.stub(_then(_instance))
        : CopyWith$Fragment$RegionFragment(
            local$region, (e) => call(region: e));
  }

  CopyWith$Fragment$ProfileFragment$respondent_status<TRes>
      get respondent_status {
    final local$respondent_status = _instance.respondent_status;
    return CopyWith$Fragment$ProfileFragment$respondent_status(
        local$respondent_status, (e) => call(respondent_status: e));
  }

  CopyWith$Fragment$SexFragment<TRes> get sex {
    final local$sex = _instance.sex;
    return local$sex == null
        ? CopyWith$Fragment$SexFragment.stub(_then(_instance))
        : CopyWith$Fragment$SexFragment(local$sex, (e) => call(sex: e));
  }
}

class _CopyWithStubImpl$Fragment$ProfileFragment<TRes>
    implements CopyWith$Fragment$ProfileFragment<TRes> {
  _CopyWithStubImpl$Fragment$ProfileFragment(this._res);

  TRes _res;

  call({
    String? birthday,
    String? change_date,
    Fragment$CityFragment? city,
    String? email,
    String? first_name,
    int? fullness,
    bool? is_approval_participation,
    bool? is_approval_pdn,
    bool? is_blocked,
    bool? is_test_user,
    bool? is_imported,
    String? last_name,
    String? locality,
    String? middle_name,
    String? phone,
    int? profile_id,
    String? profile_uid,
    Fragment$RegionFragment? region,
    String? registration_date,
    Fragment$ProfileFragment$respondent_status? respondent_status,
    Fragment$SexFragment? sex,
    String? telegram_username,
    String? user_edit,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$CityFragment<TRes> get city =>
      CopyWith$Fragment$CityFragment.stub(_res);

  CopyWith$Fragment$RegionFragment<TRes> get region =>
      CopyWith$Fragment$RegionFragment.stub(_res);

  CopyWith$Fragment$ProfileFragment$respondent_status<TRes>
      get respondent_status =>
          CopyWith$Fragment$ProfileFragment$respondent_status.stub(_res);

  CopyWith$Fragment$SexFragment<TRes> get sex =>
      CopyWith$Fragment$SexFragment.stub(_res);
}

const fragmentDefinitionProfileFragment = FragmentDefinitionNode(
  name: NameNode(value: 'ProfileFragment'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Profile'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'birthday'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'change_date'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'city'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'CityFragment'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'email'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'first_name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'fullness'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'is_approval_participation'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'is_approval_pdn'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'is_blocked'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'is_test_user'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'is_imported'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'last_name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'locality'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'middle_name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'phone'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'profile_id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'profile_uid'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'region'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'RegionFragment'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'registration_date'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'respondent_status'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'status_email'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'status_code'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'status_name'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ]),
        ),
        FieldNode(
          name: NameNode(value: 'status_profile'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'status_code'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'status_name'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ]),
        ),
        FieldNode(
          name: NameNode(value: 'status_activity'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'status_code'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'status_name'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ]),
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'sex'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'SexFragment'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'telegram_username'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'user_edit'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentProfileFragment = DocumentNode(definitions: [
  fragmentDefinitionProfileFragment,
  fragmentDefinitionCityFragment,
  fragmentDefinitionRegionFragment,
  fragmentDefinitionFedFragment,
  fragmentDefinitionSexFragment,
]);

class Fragment$ProfileFragment$respondent_status {
  Fragment$ProfileFragment$respondent_status({
    required this.status_email,
    required this.status_profile,
    required this.status_activity,
    this.$__typename = 'Statuses',
  });

  factory Fragment$ProfileFragment$respondent_status.fromJson(
      Map<String, dynamic> json) {
    final l$status_email = json['status_email'];
    final l$status_profile = json['status_profile'];
    final l$status_activity = json['status_activity'];
    final l$$__typename = json['__typename'];
    return Fragment$ProfileFragment$respondent_status(
      status_email:
          Fragment$ProfileFragment$respondent_status$status_email.fromJson(
              (l$status_email as Map<String, dynamic>)),
      status_profile:
          Fragment$ProfileFragment$respondent_status$status_profile.fromJson(
              (l$status_profile as Map<String, dynamic>)),
      status_activity:
          Fragment$ProfileFragment$respondent_status$status_activity.fromJson(
              (l$status_activity as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ProfileFragment$respondent_status$status_email status_email;

  final Fragment$ProfileFragment$respondent_status$status_profile
      status_profile;

  final Fragment$ProfileFragment$respondent_status$status_activity
      status_activity;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$status_email = status_email;
    _resultData['status_email'] = l$status_email.toJson();
    final l$status_profile = status_profile;
    _resultData['status_profile'] = l$status_profile.toJson();
    final l$status_activity = status_activity;
    _resultData['status_activity'] = l$status_activity.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$status_email = status_email;
    final l$status_profile = status_profile;
    final l$status_activity = status_activity;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$status_email,
      l$status_profile,
      l$status_activity,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ProfileFragment$respondent_status) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$status_email = status_email;
    final lOther$status_email = other.status_email;
    if (l$status_email != lOther$status_email) {
      return false;
    }
    final l$status_profile = status_profile;
    final lOther$status_profile = other.status_profile;
    if (l$status_profile != lOther$status_profile) {
      return false;
    }
    final l$status_activity = status_activity;
    final lOther$status_activity = other.status_activity;
    if (l$status_activity != lOther$status_activity) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ProfileFragment$respondent_status
    on Fragment$ProfileFragment$respondent_status {
  CopyWith$Fragment$ProfileFragment$respondent_status<
          Fragment$ProfileFragment$respondent_status>
      get copyWith => CopyWith$Fragment$ProfileFragment$respondent_status(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ProfileFragment$respondent_status<TRes> {
  factory CopyWith$Fragment$ProfileFragment$respondent_status(
    Fragment$ProfileFragment$respondent_status instance,
    TRes Function(Fragment$ProfileFragment$respondent_status) then,
  ) = _CopyWithImpl$Fragment$ProfileFragment$respondent_status;

  factory CopyWith$Fragment$ProfileFragment$respondent_status.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ProfileFragment$respondent_status;

  TRes call({
    Fragment$ProfileFragment$respondent_status$status_email? status_email,
    Fragment$ProfileFragment$respondent_status$status_profile? status_profile,
    Fragment$ProfileFragment$respondent_status$status_activity? status_activity,
    String? $__typename,
  });
  CopyWith$Fragment$ProfileFragment$respondent_status$status_email<TRes>
      get status_email;
  CopyWith$Fragment$ProfileFragment$respondent_status$status_profile<TRes>
      get status_profile;
  CopyWith$Fragment$ProfileFragment$respondent_status$status_activity<TRes>
      get status_activity;
}

class _CopyWithImpl$Fragment$ProfileFragment$respondent_status<TRes>
    implements CopyWith$Fragment$ProfileFragment$respondent_status<TRes> {
  _CopyWithImpl$Fragment$ProfileFragment$respondent_status(
    this._instance,
    this._then,
  );

  final Fragment$ProfileFragment$respondent_status _instance;

  final TRes Function(Fragment$ProfileFragment$respondent_status) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status_email = _undefined,
    Object? status_profile = _undefined,
    Object? status_activity = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ProfileFragment$respondent_status(
        status_email: status_email == _undefined || status_email == null
            ? _instance.status_email
            : (status_email
                as Fragment$ProfileFragment$respondent_status$status_email),
        status_profile: status_profile == _undefined || status_profile == null
            ? _instance.status_profile
            : (status_profile
                as Fragment$ProfileFragment$respondent_status$status_profile),
        status_activity: status_activity == _undefined ||
                status_activity == null
            ? _instance.status_activity
            : (status_activity
                as Fragment$ProfileFragment$respondent_status$status_activity),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ProfileFragment$respondent_status$status_email<TRes>
      get status_email {
    final local$status_email = _instance.status_email;
    return CopyWith$Fragment$ProfileFragment$respondent_status$status_email(
        local$status_email, (e) => call(status_email: e));
  }

  CopyWith$Fragment$ProfileFragment$respondent_status$status_profile<TRes>
      get status_profile {
    final local$status_profile = _instance.status_profile;
    return CopyWith$Fragment$ProfileFragment$respondent_status$status_profile(
        local$status_profile, (e) => call(status_profile: e));
  }

  CopyWith$Fragment$ProfileFragment$respondent_status$status_activity<TRes>
      get status_activity {
    final local$status_activity = _instance.status_activity;
    return CopyWith$Fragment$ProfileFragment$respondent_status$status_activity(
        local$status_activity, (e) => call(status_activity: e));
  }
}

class _CopyWithStubImpl$Fragment$ProfileFragment$respondent_status<TRes>
    implements CopyWith$Fragment$ProfileFragment$respondent_status<TRes> {
  _CopyWithStubImpl$Fragment$ProfileFragment$respondent_status(this._res);

  TRes _res;

  call({
    Fragment$ProfileFragment$respondent_status$status_email? status_email,
    Fragment$ProfileFragment$respondent_status$status_profile? status_profile,
    Fragment$ProfileFragment$respondent_status$status_activity? status_activity,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ProfileFragment$respondent_status$status_email<TRes>
      get status_email =>
          CopyWith$Fragment$ProfileFragment$respondent_status$status_email.stub(
              _res);

  CopyWith$Fragment$ProfileFragment$respondent_status$status_profile<TRes>
      get status_profile =>
          CopyWith$Fragment$ProfileFragment$respondent_status$status_profile
              .stub(_res);

  CopyWith$Fragment$ProfileFragment$respondent_status$status_activity<TRes>
      get status_activity =>
          CopyWith$Fragment$ProfileFragment$respondent_status$status_activity
              .stub(_res);
}

class Fragment$ProfileFragment$respondent_status$status_email {
  Fragment$ProfileFragment$respondent_status$status_email({
    required this.status_code,
    required this.status_name,
    this.$__typename = 'Status',
  });

  factory Fragment$ProfileFragment$respondent_status$status_email.fromJson(
      Map<String, dynamic> json) {
    final l$status_code = json['status_code'];
    final l$status_name = json['status_name'];
    final l$$__typename = json['__typename'];
    return Fragment$ProfileFragment$respondent_status$status_email(
      status_code: (l$status_code as String),
      status_name: (l$status_name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String status_code;

  final String status_name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$status_code = status_code;
    _resultData['status_code'] = l$status_code;
    final l$status_name = status_name;
    _resultData['status_name'] = l$status_name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$status_code = status_code;
    final l$status_name = status_name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$status_code,
      l$status_name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ProfileFragment$respondent_status$status_email) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$status_code = status_code;
    final lOther$status_code = other.status_code;
    if (l$status_code != lOther$status_code) {
      return false;
    }
    final l$status_name = status_name;
    final lOther$status_name = other.status_name;
    if (l$status_name != lOther$status_name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ProfileFragment$respondent_status$status_email
    on Fragment$ProfileFragment$respondent_status$status_email {
  CopyWith$Fragment$ProfileFragment$respondent_status$status_email<
          Fragment$ProfileFragment$respondent_status$status_email>
      get copyWith =>
          CopyWith$Fragment$ProfileFragment$respondent_status$status_email(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ProfileFragment$respondent_status$status_email<
    TRes> {
  factory CopyWith$Fragment$ProfileFragment$respondent_status$status_email(
    Fragment$ProfileFragment$respondent_status$status_email instance,
    TRes Function(Fragment$ProfileFragment$respondent_status$status_email) then,
  ) = _CopyWithImpl$Fragment$ProfileFragment$respondent_status$status_email;

  factory CopyWith$Fragment$ProfileFragment$respondent_status$status_email.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$ProfileFragment$respondent_status$status_email;

  TRes call({
    String? status_code,
    String? status_name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ProfileFragment$respondent_status$status_email<
        TRes>
    implements
        CopyWith$Fragment$ProfileFragment$respondent_status$status_email<TRes> {
  _CopyWithImpl$Fragment$ProfileFragment$respondent_status$status_email(
    this._instance,
    this._then,
  );

  final Fragment$ProfileFragment$respondent_status$status_email _instance;

  final TRes Function(Fragment$ProfileFragment$respondent_status$status_email)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status_code = _undefined,
    Object? status_name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ProfileFragment$respondent_status$status_email(
        status_code: status_code == _undefined || status_code == null
            ? _instance.status_code
            : (status_code as String),
        status_name: status_name == _undefined || status_name == null
            ? _instance.status_name
            : (status_name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ProfileFragment$respondent_status$status_email<
        TRes>
    implements
        CopyWith$Fragment$ProfileFragment$respondent_status$status_email<TRes> {
  _CopyWithStubImpl$Fragment$ProfileFragment$respondent_status$status_email(
      this._res);

  TRes _res;

  call({
    String? status_code,
    String? status_name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$ProfileFragment$respondent_status$status_profile {
  Fragment$ProfileFragment$respondent_status$status_profile({
    required this.status_code,
    required this.status_name,
    this.$__typename = 'Status',
  });

  factory Fragment$ProfileFragment$respondent_status$status_profile.fromJson(
      Map<String, dynamic> json) {
    final l$status_code = json['status_code'];
    final l$status_name = json['status_name'];
    final l$$__typename = json['__typename'];
    return Fragment$ProfileFragment$respondent_status$status_profile(
      status_code: (l$status_code as String),
      status_name: (l$status_name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String status_code;

  final String status_name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$status_code = status_code;
    _resultData['status_code'] = l$status_code;
    final l$status_name = status_name;
    _resultData['status_name'] = l$status_name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$status_code = status_code;
    final l$status_name = status_name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$status_code,
      l$status_name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ProfileFragment$respondent_status$status_profile) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$status_code = status_code;
    final lOther$status_code = other.status_code;
    if (l$status_code != lOther$status_code) {
      return false;
    }
    final l$status_name = status_name;
    final lOther$status_name = other.status_name;
    if (l$status_name != lOther$status_name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ProfileFragment$respondent_status$status_profile
    on Fragment$ProfileFragment$respondent_status$status_profile {
  CopyWith$Fragment$ProfileFragment$respondent_status$status_profile<
          Fragment$ProfileFragment$respondent_status$status_profile>
      get copyWith =>
          CopyWith$Fragment$ProfileFragment$respondent_status$status_profile(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ProfileFragment$respondent_status$status_profile<
    TRes> {
  factory CopyWith$Fragment$ProfileFragment$respondent_status$status_profile(
    Fragment$ProfileFragment$respondent_status$status_profile instance,
    TRes Function(Fragment$ProfileFragment$respondent_status$status_profile)
        then,
  ) = _CopyWithImpl$Fragment$ProfileFragment$respondent_status$status_profile;

  factory CopyWith$Fragment$ProfileFragment$respondent_status$status_profile.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$ProfileFragment$respondent_status$status_profile;

  TRes call({
    String? status_code,
    String? status_name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ProfileFragment$respondent_status$status_profile<
        TRes>
    implements
        CopyWith$Fragment$ProfileFragment$respondent_status$status_profile<
            TRes> {
  _CopyWithImpl$Fragment$ProfileFragment$respondent_status$status_profile(
    this._instance,
    this._then,
  );

  final Fragment$ProfileFragment$respondent_status$status_profile _instance;

  final TRes Function(Fragment$ProfileFragment$respondent_status$status_profile)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status_code = _undefined,
    Object? status_name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ProfileFragment$respondent_status$status_profile(
        status_code: status_code == _undefined || status_code == null
            ? _instance.status_code
            : (status_code as String),
        status_name: status_name == _undefined || status_name == null
            ? _instance.status_name
            : (status_name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ProfileFragment$respondent_status$status_profile<
        TRes>
    implements
        CopyWith$Fragment$ProfileFragment$respondent_status$status_profile<
            TRes> {
  _CopyWithStubImpl$Fragment$ProfileFragment$respondent_status$status_profile(
      this._res);

  TRes _res;

  call({
    String? status_code,
    String? status_name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$ProfileFragment$respondent_status$status_activity {
  Fragment$ProfileFragment$respondent_status$status_activity({
    required this.status_code,
    required this.status_name,
    this.$__typename = 'Status',
  });

  factory Fragment$ProfileFragment$respondent_status$status_activity.fromJson(
      Map<String, dynamic> json) {
    final l$status_code = json['status_code'];
    final l$status_name = json['status_name'];
    final l$$__typename = json['__typename'];
    return Fragment$ProfileFragment$respondent_status$status_activity(
      status_code: (l$status_code as String),
      status_name: (l$status_name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String status_code;

  final String status_name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$status_code = status_code;
    _resultData['status_code'] = l$status_code;
    final l$status_name = status_name;
    _resultData['status_name'] = l$status_name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$status_code = status_code;
    final l$status_name = status_name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$status_code,
      l$status_name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Fragment$ProfileFragment$respondent_status$status_activity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$status_code = status_code;
    final lOther$status_code = other.status_code;
    if (l$status_code != lOther$status_code) {
      return false;
    }
    final l$status_name = status_name;
    final lOther$status_name = other.status_name;
    if (l$status_name != lOther$status_name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ProfileFragment$respondent_status$status_activity
    on Fragment$ProfileFragment$respondent_status$status_activity {
  CopyWith$Fragment$ProfileFragment$respondent_status$status_activity<
          Fragment$ProfileFragment$respondent_status$status_activity>
      get copyWith =>
          CopyWith$Fragment$ProfileFragment$respondent_status$status_activity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ProfileFragment$respondent_status$status_activity<
    TRes> {
  factory CopyWith$Fragment$ProfileFragment$respondent_status$status_activity(
    Fragment$ProfileFragment$respondent_status$status_activity instance,
    TRes Function(Fragment$ProfileFragment$respondent_status$status_activity)
        then,
  ) = _CopyWithImpl$Fragment$ProfileFragment$respondent_status$status_activity;

  factory CopyWith$Fragment$ProfileFragment$respondent_status$status_activity.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$ProfileFragment$respondent_status$status_activity;

  TRes call({
    String? status_code,
    String? status_name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ProfileFragment$respondent_status$status_activity<
        TRes>
    implements
        CopyWith$Fragment$ProfileFragment$respondent_status$status_activity<
            TRes> {
  _CopyWithImpl$Fragment$ProfileFragment$respondent_status$status_activity(
    this._instance,
    this._then,
  );

  final Fragment$ProfileFragment$respondent_status$status_activity _instance;

  final TRes Function(
      Fragment$ProfileFragment$respondent_status$status_activity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status_code = _undefined,
    Object? status_name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ProfileFragment$respondent_status$status_activity(
        status_code: status_code == _undefined || status_code == null
            ? _instance.status_code
            : (status_code as String),
        status_name: status_name == _undefined || status_name == null
            ? _instance.status_name
            : (status_name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ProfileFragment$respondent_status$status_activity<
        TRes>
    implements
        CopyWith$Fragment$ProfileFragment$respondent_status$status_activity<
            TRes> {
  _CopyWithStubImpl$Fragment$ProfileFragment$respondent_status$status_activity(
      this._res);

  TRes _res;

  call({
    String? status_code,
    String? status_name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$CityFragment {
  Fragment$CityFragment({
    required this.city,
    required this.city_code,
    required this.city_id,
    required this.population,
    this.region,
    this.$__typename = 'DictCityType',
  });

  factory Fragment$CityFragment.fromJson(Map<String, dynamic> json) {
    final l$city = json['city'];
    final l$city_code = json['city_code'];
    final l$city_id = json['city_id'];
    final l$population = json['population'];
    final l$region = json['region'];
    final l$$__typename = json['__typename'];
    return Fragment$CityFragment(
      city: (l$city as String),
      city_code: bigIntToIntFromJson(l$city_code),
      city_id: (l$city_id as int),
      population: (l$population as int),
      region: l$region == null
          ? null
          : Fragment$RegionFragment.fromJson(
              (l$region as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String city;

  final int city_code;

  final int city_id;

  final int population;

  final Fragment$RegionFragment? region;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$city = city;
    _resultData['city'] = l$city;
    final l$city_code = city_code;
    _resultData['city_code'] = bigIntToIntToJson(l$city_code);
    final l$city_id = city_id;
    _resultData['city_id'] = l$city_id;
    final l$population = population;
    _resultData['population'] = l$population;
    final l$region = region;
    _resultData['region'] = l$region?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$city = city;
    final l$city_code = city_code;
    final l$city_id = city_id;
    final l$population = population;
    final l$region = region;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$city,
      l$city_code,
      l$city_id,
      l$population,
      l$region,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$CityFragment) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$city = city;
    final lOther$city = other.city;
    if (l$city != lOther$city) {
      return false;
    }
    final l$city_code = city_code;
    final lOther$city_code = other.city_code;
    if (l$city_code != lOther$city_code) {
      return false;
    }
    final l$city_id = city_id;
    final lOther$city_id = other.city_id;
    if (l$city_id != lOther$city_id) {
      return false;
    }
    final l$population = population;
    final lOther$population = other.population;
    if (l$population != lOther$population) {
      return false;
    }
    final l$region = region;
    final lOther$region = other.region;
    if (l$region != lOther$region) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CityFragment on Fragment$CityFragment {
  CopyWith$Fragment$CityFragment<Fragment$CityFragment> get copyWith =>
      CopyWith$Fragment$CityFragment(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$CityFragment<TRes> {
  factory CopyWith$Fragment$CityFragment(
    Fragment$CityFragment instance,
    TRes Function(Fragment$CityFragment) then,
  ) = _CopyWithImpl$Fragment$CityFragment;

  factory CopyWith$Fragment$CityFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CityFragment;

  TRes call({
    String? city,
    int? city_code,
    int? city_id,
    int? population,
    Fragment$RegionFragment? region,
    String? $__typename,
  });
  CopyWith$Fragment$RegionFragment<TRes> get region;
}

class _CopyWithImpl$Fragment$CityFragment<TRes>
    implements CopyWith$Fragment$CityFragment<TRes> {
  _CopyWithImpl$Fragment$CityFragment(
    this._instance,
    this._then,
  );

  final Fragment$CityFragment _instance;

  final TRes Function(Fragment$CityFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? city = _undefined,
    Object? city_code = _undefined,
    Object? city_id = _undefined,
    Object? population = _undefined,
    Object? region = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CityFragment(
        city: city == _undefined || city == null
            ? _instance.city
            : (city as String),
        city_code: city_code == _undefined || city_code == null
            ? _instance.city_code
            : (city_code as int),
        city_id: city_id == _undefined || city_id == null
            ? _instance.city_id
            : (city_id as int),
        population: population == _undefined || population == null
            ? _instance.population
            : (population as int),
        region: region == _undefined
            ? _instance.region
            : (region as Fragment$RegionFragment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$RegionFragment<TRes> get region {
    final local$region = _instance.region;
    return local$region == null
        ? CopyWith$Fragment$RegionFragment.stub(_then(_instance))
        : CopyWith$Fragment$RegionFragment(
            local$region, (e) => call(region: e));
  }
}

class _CopyWithStubImpl$Fragment$CityFragment<TRes>
    implements CopyWith$Fragment$CityFragment<TRes> {
  _CopyWithStubImpl$Fragment$CityFragment(this._res);

  TRes _res;

  call({
    String? city,
    int? city_code,
    int? city_id,
    int? population,
    Fragment$RegionFragment? region,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$RegionFragment<TRes> get region =>
      CopyWith$Fragment$RegionFragment.stub(_res);
}

const fragmentDefinitionCityFragment = FragmentDefinitionNode(
  name: NameNode(value: 'CityFragment'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'DictCityType'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'city'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'city_code'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'city_id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'population'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'region'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'RegionFragment'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentCityFragment = DocumentNode(definitions: [
  fragmentDefinitionCityFragment,
  fragmentDefinitionRegionFragment,
  fragmentDefinitionFedFragment,
]);

class Fragment$RegionFragment {
  Fragment$RegionFragment({
    this.fed,
    required this.region,
    required this.region_id,
    this.$__typename = 'DictRegionType',
  });

  factory Fragment$RegionFragment.fromJson(Map<String, dynamic> json) {
    final l$fed = json['fed'];
    final l$region = json['region'];
    final l$region_id = json['region_id'];
    final l$$__typename = json['__typename'];
    return Fragment$RegionFragment(
      fed: l$fed == null
          ? null
          : Fragment$FedFragment.fromJson((l$fed as Map<String, dynamic>)),
      region: (l$region as String),
      region_id: (l$region_id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$FedFragment? fed;

  final String region;

  final int region_id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$fed = fed;
    _resultData['fed'] = l$fed?.toJson();
    final l$region = region;
    _resultData['region'] = l$region;
    final l$region_id = region_id;
    _resultData['region_id'] = l$region_id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$fed = fed;
    final l$region = region;
    final l$region_id = region_id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$fed,
      l$region,
      l$region_id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$RegionFragment) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$fed = fed;
    final lOther$fed = other.fed;
    if (l$fed != lOther$fed) {
      return false;
    }
    final l$region = region;
    final lOther$region = other.region;
    if (l$region != lOther$region) {
      return false;
    }
    final l$region_id = region_id;
    final lOther$region_id = other.region_id;
    if (l$region_id != lOther$region_id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$RegionFragment on Fragment$RegionFragment {
  CopyWith$Fragment$RegionFragment<Fragment$RegionFragment> get copyWith =>
      CopyWith$Fragment$RegionFragment(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$RegionFragment<TRes> {
  factory CopyWith$Fragment$RegionFragment(
    Fragment$RegionFragment instance,
    TRes Function(Fragment$RegionFragment) then,
  ) = _CopyWithImpl$Fragment$RegionFragment;

  factory CopyWith$Fragment$RegionFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$RegionFragment;

  TRes call({
    Fragment$FedFragment? fed,
    String? region,
    int? region_id,
    String? $__typename,
  });
  CopyWith$Fragment$FedFragment<TRes> get fed;
}

class _CopyWithImpl$Fragment$RegionFragment<TRes>
    implements CopyWith$Fragment$RegionFragment<TRes> {
  _CopyWithImpl$Fragment$RegionFragment(
    this._instance,
    this._then,
  );

  final Fragment$RegionFragment _instance;

  final TRes Function(Fragment$RegionFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? fed = _undefined,
    Object? region = _undefined,
    Object? region_id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$RegionFragment(
        fed: fed == _undefined ? _instance.fed : (fed as Fragment$FedFragment?),
        region: region == _undefined || region == null
            ? _instance.region
            : (region as String),
        region_id: region_id == _undefined || region_id == null
            ? _instance.region_id
            : (region_id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$FedFragment<TRes> get fed {
    final local$fed = _instance.fed;
    return local$fed == null
        ? CopyWith$Fragment$FedFragment.stub(_then(_instance))
        : CopyWith$Fragment$FedFragment(local$fed, (e) => call(fed: e));
  }
}

class _CopyWithStubImpl$Fragment$RegionFragment<TRes>
    implements CopyWith$Fragment$RegionFragment<TRes> {
  _CopyWithStubImpl$Fragment$RegionFragment(this._res);

  TRes _res;

  call({
    Fragment$FedFragment? fed,
    String? region,
    int? region_id,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$FedFragment<TRes> get fed =>
      CopyWith$Fragment$FedFragment.stub(_res);
}

const fragmentDefinitionRegionFragment = FragmentDefinitionNode(
  name: NameNode(value: 'RegionFragment'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'DictRegionType'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'fed'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'FedFragment'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'region'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'region_id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentRegionFragment = DocumentNode(definitions: [
  fragmentDefinitionRegionFragment,
  fragmentDefinitionFedFragment,
]);

class Fragment$SexFragment {
  Fragment$SexFragment({
    required this.sex,
    required this.sex_id,
    this.$__typename = 'DictSexType',
  });

  factory Fragment$SexFragment.fromJson(Map<String, dynamic> json) {
    final l$sex = json['sex'];
    final l$sex_id = json['sex_id'];
    final l$$__typename = json['__typename'];
    return Fragment$SexFragment(
      sex: (l$sex as String),
      sex_id: (l$sex_id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String sex;

  final int sex_id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sex = sex;
    _resultData['sex'] = l$sex;
    final l$sex_id = sex_id;
    _resultData['sex_id'] = l$sex_id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sex = sex;
    final l$sex_id = sex_id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sex,
      l$sex_id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$SexFragment) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$sex = sex;
    final lOther$sex = other.sex;
    if (l$sex != lOther$sex) {
      return false;
    }
    final l$sex_id = sex_id;
    final lOther$sex_id = other.sex_id;
    if (l$sex_id != lOther$sex_id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$SexFragment on Fragment$SexFragment {
  CopyWith$Fragment$SexFragment<Fragment$SexFragment> get copyWith =>
      CopyWith$Fragment$SexFragment(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$SexFragment<TRes> {
  factory CopyWith$Fragment$SexFragment(
    Fragment$SexFragment instance,
    TRes Function(Fragment$SexFragment) then,
  ) = _CopyWithImpl$Fragment$SexFragment;

  factory CopyWith$Fragment$SexFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SexFragment;

  TRes call({
    String? sex,
    int? sex_id,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$SexFragment<TRes>
    implements CopyWith$Fragment$SexFragment<TRes> {
  _CopyWithImpl$Fragment$SexFragment(
    this._instance,
    this._then,
  );

  final Fragment$SexFragment _instance;

  final TRes Function(Fragment$SexFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sex = _undefined,
    Object? sex_id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SexFragment(
        sex: sex == _undefined || sex == null ? _instance.sex : (sex as String),
        sex_id: sex_id == _undefined || sex_id == null
            ? _instance.sex_id
            : (sex_id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$SexFragment<TRes>
    implements CopyWith$Fragment$SexFragment<TRes> {
  _CopyWithStubImpl$Fragment$SexFragment(this._res);

  TRes _res;

  call({
    String? sex,
    int? sex_id,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionSexFragment = FragmentDefinitionNode(
  name: NameNode(value: 'SexFragment'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'DictSexType'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'sex'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'sex_id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentSexFragment = DocumentNode(definitions: [
  fragmentDefinitionSexFragment,
]);

class Fragment$FedFragment {
  Fragment$FedFragment({
    required this.fed,
    required this.fed_id,
    this.$__typename = 'DictFedType',
  });

  factory Fragment$FedFragment.fromJson(Map<String, dynamic> json) {
    final l$fed = json['fed'];
    final l$fed_id = json['fed_id'];
    final l$$__typename = json['__typename'];
    return Fragment$FedFragment(
      fed: (l$fed as String),
      fed_id: (l$fed_id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String fed;

  final int fed_id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$fed = fed;
    _resultData['fed'] = l$fed;
    final l$fed_id = fed_id;
    _resultData['fed_id'] = l$fed_id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$fed = fed;
    final l$fed_id = fed_id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$fed,
      l$fed_id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$FedFragment) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$fed = fed;
    final lOther$fed = other.fed;
    if (l$fed != lOther$fed) {
      return false;
    }
    final l$fed_id = fed_id;
    final lOther$fed_id = other.fed_id;
    if (l$fed_id != lOther$fed_id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$FedFragment on Fragment$FedFragment {
  CopyWith$Fragment$FedFragment<Fragment$FedFragment> get copyWith =>
      CopyWith$Fragment$FedFragment(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$FedFragment<TRes> {
  factory CopyWith$Fragment$FedFragment(
    Fragment$FedFragment instance,
    TRes Function(Fragment$FedFragment) then,
  ) = _CopyWithImpl$Fragment$FedFragment;

  factory CopyWith$Fragment$FedFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FedFragment;

  TRes call({
    String? fed,
    int? fed_id,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FedFragment<TRes>
    implements CopyWith$Fragment$FedFragment<TRes> {
  _CopyWithImpl$Fragment$FedFragment(
    this._instance,
    this._then,
  );

  final Fragment$FedFragment _instance;

  final TRes Function(Fragment$FedFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? fed = _undefined,
    Object? fed_id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FedFragment(
        fed: fed == _undefined || fed == null ? _instance.fed : (fed as String),
        fed_id: fed_id == _undefined || fed_id == null
            ? _instance.fed_id
            : (fed_id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$FedFragment<TRes>
    implements CopyWith$Fragment$FedFragment<TRes> {
  _CopyWithStubImpl$Fragment$FedFragment(this._res);

  TRes _res;

  call({
    String? fed,
    int? fed_id,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionFedFragment = FragmentDefinitionNode(
  name: NameNode(value: 'FedFragment'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'DictFedType'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'fed'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'fed_id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentFedFragment = DocumentNode(definitions: [
  fragmentDefinitionFedFragment,
]);

class Variables$Mutation$CheckCode {
  factory Variables$Mutation$CheckCode({required Input$CheckCodeInput data}) =>
      Variables$Mutation$CheckCode._({
        r'data': data,
      });

  Variables$Mutation$CheckCode._(this._$data);

  factory Variables$Mutation$CheckCode.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$CheckCodeInput.fromJson((l$data as Map<String, dynamic>));
    return Variables$Mutation$CheckCode._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CheckCodeInput get data => (_$data['data'] as Input$CheckCodeInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CheckCode<Variables$Mutation$CheckCode>
      get copyWith => CopyWith$Variables$Mutation$CheckCode(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CheckCode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    return Object.hashAll([l$data]);
  }
}

abstract class CopyWith$Variables$Mutation$CheckCode<TRes> {
  factory CopyWith$Variables$Mutation$CheckCode(
    Variables$Mutation$CheckCode instance,
    TRes Function(Variables$Mutation$CheckCode) then,
  ) = _CopyWithImpl$Variables$Mutation$CheckCode;

  factory CopyWith$Variables$Mutation$CheckCode.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CheckCode;

  TRes call({Input$CheckCodeInput? data});
}

class _CopyWithImpl$Variables$Mutation$CheckCode<TRes>
    implements CopyWith$Variables$Mutation$CheckCode<TRes> {
  _CopyWithImpl$Variables$Mutation$CheckCode(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CheckCode _instance;

  final TRes Function(Variables$Mutation$CheckCode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$CheckCode._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$CheckCodeInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CheckCode<TRes>
    implements CopyWith$Variables$Mutation$CheckCode<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CheckCode(this._res);

  TRes _res;

  call({Input$CheckCodeInput? data}) => _res;
}

class Mutation$CheckCode {
  Mutation$CheckCode({
    required this.check_code,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CheckCode.fromJson(Map<String, dynamic> json) {
    final l$check_code = json['check_code'];
    final l$$__typename = json['__typename'];
    return Mutation$CheckCode(
      check_code: Mutation$CheckCode$check_code.fromJson(
          (l$check_code as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CheckCode$check_code check_code;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$check_code = check_code;
    _resultData['check_code'] = l$check_code.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$check_code = check_code;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$check_code,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CheckCode) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$check_code = check_code;
    final lOther$check_code = other.check_code;
    if (l$check_code != lOther$check_code) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CheckCode on Mutation$CheckCode {
  CopyWith$Mutation$CheckCode<Mutation$CheckCode> get copyWith =>
      CopyWith$Mutation$CheckCode(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CheckCode<TRes> {
  factory CopyWith$Mutation$CheckCode(
    Mutation$CheckCode instance,
    TRes Function(Mutation$CheckCode) then,
  ) = _CopyWithImpl$Mutation$CheckCode;

  factory CopyWith$Mutation$CheckCode.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CheckCode;

  TRes call({
    Mutation$CheckCode$check_code? check_code,
    String? $__typename,
  });
  CopyWith$Mutation$CheckCode$check_code<TRes> get check_code;
}

class _CopyWithImpl$Mutation$CheckCode<TRes>
    implements CopyWith$Mutation$CheckCode<TRes> {
  _CopyWithImpl$Mutation$CheckCode(
    this._instance,
    this._then,
  );

  final Mutation$CheckCode _instance;

  final TRes Function(Mutation$CheckCode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? check_code = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CheckCode(
        check_code: check_code == _undefined || check_code == null
            ? _instance.check_code
            : (check_code as Mutation$CheckCode$check_code),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CheckCode$check_code<TRes> get check_code {
    final local$check_code = _instance.check_code;
    return CopyWith$Mutation$CheckCode$check_code(
        local$check_code, (e) => call(check_code: e));
  }
}

class _CopyWithStubImpl$Mutation$CheckCode<TRes>
    implements CopyWith$Mutation$CheckCode<TRes> {
  _CopyWithStubImpl$Mutation$CheckCode(this._res);

  TRes _res;

  call({
    Mutation$CheckCode$check_code? check_code,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CheckCode$check_code<TRes> get check_code =>
      CopyWith$Mutation$CheckCode$check_code.stub(_res);
}

const documentNodeMutationCheckCode = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CheckCode'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'CheckCodeInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'check_code'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ReturnTokens'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'access_token'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'refresh_token'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ReturnError'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'message'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Mutation$CheckCode$check_code {
  Mutation$CheckCode$check_code({required this.$__typename});

  factory Mutation$CheckCode$check_code.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "ReturnTokens":
        return Mutation$CheckCode$check_code$$ReturnTokens.fromJson(json);

      case "ReturnError":
        return Mutation$CheckCode$check_code$$ReturnError.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Mutation$CheckCode$check_code(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CheckCode$check_code) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CheckCode$check_code
    on Mutation$CheckCode$check_code {
  CopyWith$Mutation$CheckCode$check_code<Mutation$CheckCode$check_code>
      get copyWith => CopyWith$Mutation$CheckCode$check_code(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Mutation$CheckCode$check_code$$ReturnTokens)
        returnTokens,
    required _T Function(Mutation$CheckCode$check_code$$ReturnError)
        returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ReturnTokens":
        return returnTokens(
            this as Mutation$CheckCode$check_code$$ReturnTokens);

      case "ReturnError":
        return returnError(this as Mutation$CheckCode$check_code$$ReturnError);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Mutation$CheckCode$check_code$$ReturnTokens)? returnTokens,
    _T Function(Mutation$CheckCode$check_code$$ReturnError)? returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ReturnTokens":
        if (returnTokens != null) {
          return returnTokens(
              this as Mutation$CheckCode$check_code$$ReturnTokens);
        } else {
          return orElse();
        }

      case "ReturnError":
        if (returnError != null) {
          return returnError(
              this as Mutation$CheckCode$check_code$$ReturnError);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$CheckCode$check_code<TRes> {
  factory CopyWith$Mutation$CheckCode$check_code(
    Mutation$CheckCode$check_code instance,
    TRes Function(Mutation$CheckCode$check_code) then,
  ) = _CopyWithImpl$Mutation$CheckCode$check_code;

  factory CopyWith$Mutation$CheckCode$check_code.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CheckCode$check_code;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$CheckCode$check_code<TRes>
    implements CopyWith$Mutation$CheckCode$check_code<TRes> {
  _CopyWithImpl$Mutation$CheckCode$check_code(
    this._instance,
    this._then,
  );

  final Mutation$CheckCode$check_code _instance;

  final TRes Function(Mutation$CheckCode$check_code) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$CheckCode$check_code(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$CheckCode$check_code<TRes>
    implements CopyWith$Mutation$CheckCode$check_code<TRes> {
  _CopyWithStubImpl$Mutation$CheckCode$check_code(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$CheckCode$check_code$$ReturnTokens
    implements Mutation$CheckCode$check_code {
  Mutation$CheckCode$check_code$$ReturnTokens({
    this.$__typename = 'ReturnTokens',
    required this.access_token,
    required this.refresh_token,
  });

  factory Mutation$CheckCode$check_code$$ReturnTokens.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$access_token = json['access_token'];
    final l$refresh_token = json['refresh_token'];
    return Mutation$CheckCode$check_code$$ReturnTokens(
      $__typename: (l$$__typename as String),
      access_token: (l$access_token as String),
      refresh_token: (l$refresh_token as String),
    );
  }

  final String $__typename;

  final String access_token;

  final String refresh_token;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$access_token = access_token;
    _resultData['access_token'] = l$access_token;
    final l$refresh_token = refresh_token;
    _resultData['refresh_token'] = l$refresh_token;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$access_token = access_token;
    final l$refresh_token = refresh_token;
    return Object.hashAll([
      l$$__typename,
      l$access_token,
      l$refresh_token,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CheckCode$check_code$$ReturnTokens) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$access_token = access_token;
    final lOther$access_token = other.access_token;
    if (l$access_token != lOther$access_token) {
      return false;
    }
    final l$refresh_token = refresh_token;
    final lOther$refresh_token = other.refresh_token;
    if (l$refresh_token != lOther$refresh_token) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CheckCode$check_code$$ReturnTokens
    on Mutation$CheckCode$check_code$$ReturnTokens {
  CopyWith$Mutation$CheckCode$check_code$$ReturnTokens<
          Mutation$CheckCode$check_code$$ReturnTokens>
      get copyWith => CopyWith$Mutation$CheckCode$check_code$$ReturnTokens(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CheckCode$check_code$$ReturnTokens<TRes> {
  factory CopyWith$Mutation$CheckCode$check_code$$ReturnTokens(
    Mutation$CheckCode$check_code$$ReturnTokens instance,
    TRes Function(Mutation$CheckCode$check_code$$ReturnTokens) then,
  ) = _CopyWithImpl$Mutation$CheckCode$check_code$$ReturnTokens;

  factory CopyWith$Mutation$CheckCode$check_code$$ReturnTokens.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CheckCode$check_code$$ReturnTokens;

  TRes call({
    String? $__typename,
    String? access_token,
    String? refresh_token,
  });
}

class _CopyWithImpl$Mutation$CheckCode$check_code$$ReturnTokens<TRes>
    implements CopyWith$Mutation$CheckCode$check_code$$ReturnTokens<TRes> {
  _CopyWithImpl$Mutation$CheckCode$check_code$$ReturnTokens(
    this._instance,
    this._then,
  );

  final Mutation$CheckCode$check_code$$ReturnTokens _instance;

  final TRes Function(Mutation$CheckCode$check_code$$ReturnTokens) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? access_token = _undefined,
    Object? refresh_token = _undefined,
  }) =>
      _then(Mutation$CheckCode$check_code$$ReturnTokens(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        access_token: access_token == _undefined || access_token == null
            ? _instance.access_token
            : (access_token as String),
        refresh_token: refresh_token == _undefined || refresh_token == null
            ? _instance.refresh_token
            : (refresh_token as String),
      ));
}

class _CopyWithStubImpl$Mutation$CheckCode$check_code$$ReturnTokens<TRes>
    implements CopyWith$Mutation$CheckCode$check_code$$ReturnTokens<TRes> {
  _CopyWithStubImpl$Mutation$CheckCode$check_code$$ReturnTokens(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? access_token,
    String? refresh_token,
  }) =>
      _res;
}

class Mutation$CheckCode$check_code$$ReturnError
    implements Mutation$CheckCode$check_code {
  Mutation$CheckCode$check_code$$ReturnError({
    this.$__typename = 'ReturnError',
    required this.message,
    required this.name,
  });

  factory Mutation$CheckCode$check_code$$ReturnError.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$message = json['message'];
    final l$name = json['name'];
    return Mutation$CheckCode$check_code$$ReturnError(
      $__typename: (l$$__typename as String),
      message: (l$message as String),
      name: (l$name as String),
    );
  }

  final String $__typename;

  final String message;

  final String name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$message = message;
    final l$name = name;
    return Object.hashAll([
      l$$__typename,
      l$message,
      l$name,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CheckCode$check_code$$ReturnError) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CheckCode$check_code$$ReturnError
    on Mutation$CheckCode$check_code$$ReturnError {
  CopyWith$Mutation$CheckCode$check_code$$ReturnError<
          Mutation$CheckCode$check_code$$ReturnError>
      get copyWith => CopyWith$Mutation$CheckCode$check_code$$ReturnError(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CheckCode$check_code$$ReturnError<TRes> {
  factory CopyWith$Mutation$CheckCode$check_code$$ReturnError(
    Mutation$CheckCode$check_code$$ReturnError instance,
    TRes Function(Mutation$CheckCode$check_code$$ReturnError) then,
  ) = _CopyWithImpl$Mutation$CheckCode$check_code$$ReturnError;

  factory CopyWith$Mutation$CheckCode$check_code$$ReturnError.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CheckCode$check_code$$ReturnError;

  TRes call({
    String? $__typename,
    String? message,
    String? name,
  });
}

class _CopyWithImpl$Mutation$CheckCode$check_code$$ReturnError<TRes>
    implements CopyWith$Mutation$CheckCode$check_code$$ReturnError<TRes> {
  _CopyWithImpl$Mutation$CheckCode$check_code$$ReturnError(
    this._instance,
    this._then,
  );

  final Mutation$CheckCode$check_code$$ReturnError _instance;

  final TRes Function(Mutation$CheckCode$check_code$$ReturnError) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? message = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Mutation$CheckCode$check_code$$ReturnError(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
      ));
}

class _CopyWithStubImpl$Mutation$CheckCode$check_code$$ReturnError<TRes>
    implements CopyWith$Mutation$CheckCode$check_code$$ReturnError<TRes> {
  _CopyWithStubImpl$Mutation$CheckCode$check_code$$ReturnError(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? message,
    String? name,
  }) =>
      _res;
}

class Variables$Mutation$CheckCodeVerified {
  factory Variables$Mutation$CheckCodeVerified(
          {required Input$CheckCodeVerifiedInput data}) =>
      Variables$Mutation$CheckCodeVerified._({
        r'data': data,
      });

  Variables$Mutation$CheckCodeVerified._(this._$data);

  factory Variables$Mutation$CheckCodeVerified.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$CheckCodeVerifiedInput.fromJson((l$data as Map<String, dynamic>));
    return Variables$Mutation$CheckCodeVerified._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CheckCodeVerifiedInput get data =>
      (_$data['data'] as Input$CheckCodeVerifiedInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CheckCodeVerified<
          Variables$Mutation$CheckCodeVerified>
      get copyWith => CopyWith$Variables$Mutation$CheckCodeVerified(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CheckCodeVerified) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    return Object.hashAll([l$data]);
  }
}

abstract class CopyWith$Variables$Mutation$CheckCodeVerified<TRes> {
  factory CopyWith$Variables$Mutation$CheckCodeVerified(
    Variables$Mutation$CheckCodeVerified instance,
    TRes Function(Variables$Mutation$CheckCodeVerified) then,
  ) = _CopyWithImpl$Variables$Mutation$CheckCodeVerified;

  factory CopyWith$Variables$Mutation$CheckCodeVerified.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CheckCodeVerified;

  TRes call({Input$CheckCodeVerifiedInput? data});
}

class _CopyWithImpl$Variables$Mutation$CheckCodeVerified<TRes>
    implements CopyWith$Variables$Mutation$CheckCodeVerified<TRes> {
  _CopyWithImpl$Variables$Mutation$CheckCodeVerified(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CheckCodeVerified _instance;

  final TRes Function(Variables$Mutation$CheckCodeVerified) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$CheckCodeVerified._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$CheckCodeVerifiedInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CheckCodeVerified<TRes>
    implements CopyWith$Variables$Mutation$CheckCodeVerified<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CheckCodeVerified(this._res);

  TRes _res;

  call({Input$CheckCodeVerifiedInput? data}) => _res;
}

class Mutation$CheckCodeVerified {
  Mutation$CheckCodeVerified({
    required this.check_code_verified,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CheckCodeVerified.fromJson(Map<String, dynamic> json) {
    final l$check_code_verified = json['check_code_verified'];
    final l$$__typename = json['__typename'];
    return Mutation$CheckCodeVerified(
      check_code_verified:
          Mutation$CheckCodeVerified$check_code_verified.fromJson(
              (l$check_code_verified as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CheckCodeVerified$check_code_verified check_code_verified;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$check_code_verified = check_code_verified;
    _resultData['check_code_verified'] = l$check_code_verified.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$check_code_verified = check_code_verified;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$check_code_verified,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CheckCodeVerified) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$check_code_verified = check_code_verified;
    final lOther$check_code_verified = other.check_code_verified;
    if (l$check_code_verified != lOther$check_code_verified) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CheckCodeVerified
    on Mutation$CheckCodeVerified {
  CopyWith$Mutation$CheckCodeVerified<Mutation$CheckCodeVerified>
      get copyWith => CopyWith$Mutation$CheckCodeVerified(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CheckCodeVerified<TRes> {
  factory CopyWith$Mutation$CheckCodeVerified(
    Mutation$CheckCodeVerified instance,
    TRes Function(Mutation$CheckCodeVerified) then,
  ) = _CopyWithImpl$Mutation$CheckCodeVerified;

  factory CopyWith$Mutation$CheckCodeVerified.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CheckCodeVerified;

  TRes call({
    Mutation$CheckCodeVerified$check_code_verified? check_code_verified,
    String? $__typename,
  });
  CopyWith$Mutation$CheckCodeVerified$check_code_verified<TRes>
      get check_code_verified;
}

class _CopyWithImpl$Mutation$CheckCodeVerified<TRes>
    implements CopyWith$Mutation$CheckCodeVerified<TRes> {
  _CopyWithImpl$Mutation$CheckCodeVerified(
    this._instance,
    this._then,
  );

  final Mutation$CheckCodeVerified _instance;

  final TRes Function(Mutation$CheckCodeVerified) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? check_code_verified = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CheckCodeVerified(
        check_code_verified:
            check_code_verified == _undefined || check_code_verified == null
                ? _instance.check_code_verified
                : (check_code_verified
                    as Mutation$CheckCodeVerified$check_code_verified),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CheckCodeVerified$check_code_verified<TRes>
      get check_code_verified {
    final local$check_code_verified = _instance.check_code_verified;
    return CopyWith$Mutation$CheckCodeVerified$check_code_verified(
        local$check_code_verified, (e) => call(check_code_verified: e));
  }
}

class _CopyWithStubImpl$Mutation$CheckCodeVerified<TRes>
    implements CopyWith$Mutation$CheckCodeVerified<TRes> {
  _CopyWithStubImpl$Mutation$CheckCodeVerified(this._res);

  TRes _res;

  call({
    Mutation$CheckCodeVerified$check_code_verified? check_code_verified,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CheckCodeVerified$check_code_verified<TRes>
      get check_code_verified =>
          CopyWith$Mutation$CheckCodeVerified$check_code_verified.stub(_res);
}

const documentNodeMutationCheckCodeVerified = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CheckCodeVerified'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'CheckCodeVerifiedInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'check_code_verified'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'Profile'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'profile_id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'profile_uid'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'phone'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'email'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ReturnError'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'message'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Mutation$CheckCodeVerified$check_code_verified {
  Mutation$CheckCodeVerified$check_code_verified({required this.$__typename});

  factory Mutation$CheckCodeVerified$check_code_verified.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Profile":
        return Mutation$CheckCodeVerified$check_code_verified$$Profile.fromJson(
            json);

      case "ReturnError":
        return Mutation$CheckCodeVerified$check_code_verified$$ReturnError
            .fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Mutation$CheckCodeVerified$check_code_verified(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CheckCodeVerified$check_code_verified) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CheckCodeVerified$check_code_verified
    on Mutation$CheckCodeVerified$check_code_verified {
  CopyWith$Mutation$CheckCodeVerified$check_code_verified<
          Mutation$CheckCodeVerified$check_code_verified>
      get copyWith => CopyWith$Mutation$CheckCodeVerified$check_code_verified(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Mutation$CheckCodeVerified$check_code_verified$$Profile)
        profile,
    required _T Function(
            Mutation$CheckCodeVerified$check_code_verified$$ReturnError)
        returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Profile":
        return profile(
            this as Mutation$CheckCodeVerified$check_code_verified$$Profile);

      case "ReturnError":
        return returnError(this
            as Mutation$CheckCodeVerified$check_code_verified$$ReturnError);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Mutation$CheckCodeVerified$check_code_verified$$Profile)?
        profile,
    _T Function(Mutation$CheckCodeVerified$check_code_verified$$ReturnError)?
        returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Profile":
        if (profile != null) {
          return profile(
              this as Mutation$CheckCodeVerified$check_code_verified$$Profile);
        } else {
          return orElse();
        }

      case "ReturnError":
        if (returnError != null) {
          return returnError(this
              as Mutation$CheckCodeVerified$check_code_verified$$ReturnError);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$CheckCodeVerified$check_code_verified<TRes> {
  factory CopyWith$Mutation$CheckCodeVerified$check_code_verified(
    Mutation$CheckCodeVerified$check_code_verified instance,
    TRes Function(Mutation$CheckCodeVerified$check_code_verified) then,
  ) = _CopyWithImpl$Mutation$CheckCodeVerified$check_code_verified;

  factory CopyWith$Mutation$CheckCodeVerified$check_code_verified.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CheckCodeVerified$check_code_verified;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$CheckCodeVerified$check_code_verified<TRes>
    implements CopyWith$Mutation$CheckCodeVerified$check_code_verified<TRes> {
  _CopyWithImpl$Mutation$CheckCodeVerified$check_code_verified(
    this._instance,
    this._then,
  );

  final Mutation$CheckCodeVerified$check_code_verified _instance;

  final TRes Function(Mutation$CheckCodeVerified$check_code_verified) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$CheckCodeVerified$check_code_verified(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$CheckCodeVerified$check_code_verified<TRes>
    implements CopyWith$Mutation$CheckCodeVerified$check_code_verified<TRes> {
  _CopyWithStubImpl$Mutation$CheckCodeVerified$check_code_verified(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$CheckCodeVerified$check_code_verified$$Profile
    implements Mutation$CheckCodeVerified$check_code_verified {
  Mutation$CheckCodeVerified$check_code_verified$$Profile({
    this.$__typename = 'Profile',
    required this.profile_id,
    required this.profile_uid,
    this.phone,
    this.email,
  });

  factory Mutation$CheckCodeVerified$check_code_verified$$Profile.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$profile_id = json['profile_id'];
    final l$profile_uid = json['profile_uid'];
    final l$phone = json['phone'];
    final l$email = json['email'];
    return Mutation$CheckCodeVerified$check_code_verified$$Profile(
      $__typename: (l$$__typename as String),
      profile_id: (l$profile_id as int),
      profile_uid: (l$profile_uid as String),
      phone: (l$phone as String?),
      email: (l$email as String?),
    );
  }

  final String $__typename;

  final int profile_id;

  final String profile_uid;

  final String? phone;

  final String? email;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$profile_id = profile_id;
    _resultData['profile_id'] = l$profile_id;
    final l$profile_uid = profile_uid;
    _resultData['profile_uid'] = l$profile_uid;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$email = email;
    _resultData['email'] = l$email;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$profile_id = profile_id;
    final l$profile_uid = profile_uid;
    final l$phone = phone;
    final l$email = email;
    return Object.hashAll([
      l$$__typename,
      l$profile_id,
      l$profile_uid,
      l$phone,
      l$email,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CheckCodeVerified$check_code_verified$$Profile) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$profile_id = profile_id;
    final lOther$profile_id = other.profile_id;
    if (l$profile_id != lOther$profile_id) {
      return false;
    }
    final l$profile_uid = profile_uid;
    final lOther$profile_uid = other.profile_uid;
    if (l$profile_uid != lOther$profile_uid) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CheckCodeVerified$check_code_verified$$Profile
    on Mutation$CheckCodeVerified$check_code_verified$$Profile {
  CopyWith$Mutation$CheckCodeVerified$check_code_verified$$Profile<
          Mutation$CheckCodeVerified$check_code_verified$$Profile>
      get copyWith =>
          CopyWith$Mutation$CheckCodeVerified$check_code_verified$$Profile(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CheckCodeVerified$check_code_verified$$Profile<
    TRes> {
  factory CopyWith$Mutation$CheckCodeVerified$check_code_verified$$Profile(
    Mutation$CheckCodeVerified$check_code_verified$$Profile instance,
    TRes Function(Mutation$CheckCodeVerified$check_code_verified$$Profile) then,
  ) = _CopyWithImpl$Mutation$CheckCodeVerified$check_code_verified$$Profile;

  factory CopyWith$Mutation$CheckCodeVerified$check_code_verified$$Profile.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CheckCodeVerified$check_code_verified$$Profile;

  TRes call({
    String? $__typename,
    int? profile_id,
    String? profile_uid,
    String? phone,
    String? email,
  });
}

class _CopyWithImpl$Mutation$CheckCodeVerified$check_code_verified$$Profile<
        TRes>
    implements
        CopyWith$Mutation$CheckCodeVerified$check_code_verified$$Profile<TRes> {
  _CopyWithImpl$Mutation$CheckCodeVerified$check_code_verified$$Profile(
    this._instance,
    this._then,
  );

  final Mutation$CheckCodeVerified$check_code_verified$$Profile _instance;

  final TRes Function(Mutation$CheckCodeVerified$check_code_verified$$Profile)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? profile_id = _undefined,
    Object? profile_uid = _undefined,
    Object? phone = _undefined,
    Object? email = _undefined,
  }) =>
      _then(Mutation$CheckCodeVerified$check_code_verified$$Profile(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        profile_id: profile_id == _undefined || profile_id == null
            ? _instance.profile_id
            : (profile_id as int),
        profile_uid: profile_uid == _undefined || profile_uid == null
            ? _instance.profile_uid
            : (profile_uid as String),
        phone: phone == _undefined ? _instance.phone : (phone as String?),
        email: email == _undefined ? _instance.email : (email as String?),
      ));
}

class _CopyWithStubImpl$Mutation$CheckCodeVerified$check_code_verified$$Profile<
        TRes>
    implements
        CopyWith$Mutation$CheckCodeVerified$check_code_verified$$Profile<TRes> {
  _CopyWithStubImpl$Mutation$CheckCodeVerified$check_code_verified$$Profile(
      this._res);

  TRes _res;

  call({
    String? $__typename,
    int? profile_id,
    String? profile_uid,
    String? phone,
    String? email,
  }) =>
      _res;
}

class Mutation$CheckCodeVerified$check_code_verified$$ReturnError
    implements Mutation$CheckCodeVerified$check_code_verified {
  Mutation$CheckCodeVerified$check_code_verified$$ReturnError({
    this.$__typename = 'ReturnError',
    required this.message,
    required this.name,
  });

  factory Mutation$CheckCodeVerified$check_code_verified$$ReturnError.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$message = json['message'];
    final l$name = json['name'];
    return Mutation$CheckCodeVerified$check_code_verified$$ReturnError(
      $__typename: (l$$__typename as String),
      message: (l$message as String),
      name: (l$name as String),
    );
  }

  final String $__typename;

  final String message;

  final String name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$message = message;
    final l$name = name;
    return Object.hashAll([
      l$$__typename,
      l$message,
      l$name,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$CheckCodeVerified$check_code_verified$$ReturnError) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CheckCodeVerified$check_code_verified$$ReturnError
    on Mutation$CheckCodeVerified$check_code_verified$$ReturnError {
  CopyWith$Mutation$CheckCodeVerified$check_code_verified$$ReturnError<
          Mutation$CheckCodeVerified$check_code_verified$$ReturnError>
      get copyWith =>
          CopyWith$Mutation$CheckCodeVerified$check_code_verified$$ReturnError(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CheckCodeVerified$check_code_verified$$ReturnError<
    TRes> {
  factory CopyWith$Mutation$CheckCodeVerified$check_code_verified$$ReturnError(
    Mutation$CheckCodeVerified$check_code_verified$$ReturnError instance,
    TRes Function(Mutation$CheckCodeVerified$check_code_verified$$ReturnError)
        then,
  ) = _CopyWithImpl$Mutation$CheckCodeVerified$check_code_verified$$ReturnError;

  factory CopyWith$Mutation$CheckCodeVerified$check_code_verified$$ReturnError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CheckCodeVerified$check_code_verified$$ReturnError;

  TRes call({
    String? $__typename,
    String? message,
    String? name,
  });
}

class _CopyWithImpl$Mutation$CheckCodeVerified$check_code_verified$$ReturnError<
        TRes>
    implements
        CopyWith$Mutation$CheckCodeVerified$check_code_verified$$ReturnError<
            TRes> {
  _CopyWithImpl$Mutation$CheckCodeVerified$check_code_verified$$ReturnError(
    this._instance,
    this._then,
  );

  final Mutation$CheckCodeVerified$check_code_verified$$ReturnError _instance;

  final TRes Function(
      Mutation$CheckCodeVerified$check_code_verified$$ReturnError) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? message = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Mutation$CheckCodeVerified$check_code_verified$$ReturnError(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
      ));
}

class _CopyWithStubImpl$Mutation$CheckCodeVerified$check_code_verified$$ReturnError<
        TRes>
    implements
        CopyWith$Mutation$CheckCodeVerified$check_code_verified$$ReturnError<
            TRes> {
  _CopyWithStubImpl$Mutation$CheckCodeVerified$check_code_verified$$ReturnError(
      this._res);

  TRes _res;

  call({
    String? $__typename,
    String? message,
    String? name,
  }) =>
      _res;
}

class Mutation$DeleteProfile {
  Mutation$DeleteProfile({
    required this.delete_profile,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteProfile.fromJson(Map<String, dynamic> json) {
    final l$delete_profile = json['delete_profile'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteProfile(
      delete_profile: Mutation$DeleteProfile$delete_profile.fromJson(
          (l$delete_profile as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteProfile$delete_profile delete_profile;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$delete_profile = delete_profile;
    _resultData['delete_profile'] = l$delete_profile.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$delete_profile = delete_profile;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$delete_profile,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteProfile) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$delete_profile = delete_profile;
    final lOther$delete_profile = other.delete_profile;
    if (l$delete_profile != lOther$delete_profile) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DeleteProfile on Mutation$DeleteProfile {
  CopyWith$Mutation$DeleteProfile<Mutation$DeleteProfile> get copyWith =>
      CopyWith$Mutation$DeleteProfile(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteProfile<TRes> {
  factory CopyWith$Mutation$DeleteProfile(
    Mutation$DeleteProfile instance,
    TRes Function(Mutation$DeleteProfile) then,
  ) = _CopyWithImpl$Mutation$DeleteProfile;

  factory CopyWith$Mutation$DeleteProfile.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteProfile;

  TRes call({
    Mutation$DeleteProfile$delete_profile? delete_profile,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteProfile$delete_profile<TRes> get delete_profile;
}

class _CopyWithImpl$Mutation$DeleteProfile<TRes>
    implements CopyWith$Mutation$DeleteProfile<TRes> {
  _CopyWithImpl$Mutation$DeleteProfile(
    this._instance,
    this._then,
  );

  final Mutation$DeleteProfile _instance;

  final TRes Function(Mutation$DeleteProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? delete_profile = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteProfile(
        delete_profile: delete_profile == _undefined || delete_profile == null
            ? _instance.delete_profile
            : (delete_profile as Mutation$DeleteProfile$delete_profile),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteProfile$delete_profile<TRes> get delete_profile {
    final local$delete_profile = _instance.delete_profile;
    return CopyWith$Mutation$DeleteProfile$delete_profile(
        local$delete_profile, (e) => call(delete_profile: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteProfile<TRes>
    implements CopyWith$Mutation$DeleteProfile<TRes> {
  _CopyWithStubImpl$Mutation$DeleteProfile(this._res);

  TRes _res;

  call({
    Mutation$DeleteProfile$delete_profile? delete_profile,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteProfile$delete_profile<TRes> get delete_profile =>
      CopyWith$Mutation$DeleteProfile$delete_profile.stub(_res);
}

const documentNodeMutationDeleteProfile = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteProfile'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'delete_profile'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'Successfully'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'message'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ReturnError'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'message'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Mutation$DeleteProfile$delete_profile {
  Mutation$DeleteProfile$delete_profile({required this.$__typename});

  factory Mutation$DeleteProfile$delete_profile.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Successfully":
        return Mutation$DeleteProfile$delete_profile$$Successfully.fromJson(
            json);

      case "ReturnError":
        return Mutation$DeleteProfile$delete_profile$$ReturnError.fromJson(
            json);

      default:
        final l$$__typename = json['__typename'];
        return Mutation$DeleteProfile$delete_profile(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteProfile$delete_profile) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DeleteProfile$delete_profile
    on Mutation$DeleteProfile$delete_profile {
  CopyWith$Mutation$DeleteProfile$delete_profile<
          Mutation$DeleteProfile$delete_profile>
      get copyWith => CopyWith$Mutation$DeleteProfile$delete_profile(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Mutation$DeleteProfile$delete_profile$$Successfully)
        successfully,
    required _T Function(Mutation$DeleteProfile$delete_profile$$ReturnError)
        returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Successfully":
        return successfully(
            this as Mutation$DeleteProfile$delete_profile$$Successfully);

      case "ReturnError":
        return returnError(
            this as Mutation$DeleteProfile$delete_profile$$ReturnError);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Mutation$DeleteProfile$delete_profile$$Successfully)?
        successfully,
    _T Function(Mutation$DeleteProfile$delete_profile$$ReturnError)?
        returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Successfully":
        if (successfully != null) {
          return successfully(
              this as Mutation$DeleteProfile$delete_profile$$Successfully);
        } else {
          return orElse();
        }

      case "ReturnError":
        if (returnError != null) {
          return returnError(
              this as Mutation$DeleteProfile$delete_profile$$ReturnError);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$DeleteProfile$delete_profile<TRes> {
  factory CopyWith$Mutation$DeleteProfile$delete_profile(
    Mutation$DeleteProfile$delete_profile instance,
    TRes Function(Mutation$DeleteProfile$delete_profile) then,
  ) = _CopyWithImpl$Mutation$DeleteProfile$delete_profile;

  factory CopyWith$Mutation$DeleteProfile$delete_profile.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteProfile$delete_profile;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$DeleteProfile$delete_profile<TRes>
    implements CopyWith$Mutation$DeleteProfile$delete_profile<TRes> {
  _CopyWithImpl$Mutation$DeleteProfile$delete_profile(
    this._instance,
    this._then,
  );

  final Mutation$DeleteProfile$delete_profile _instance;

  final TRes Function(Mutation$DeleteProfile$delete_profile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$DeleteProfile$delete_profile(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$DeleteProfile$delete_profile<TRes>
    implements CopyWith$Mutation$DeleteProfile$delete_profile<TRes> {
  _CopyWithStubImpl$Mutation$DeleteProfile$delete_profile(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$DeleteProfile$delete_profile$$Successfully
    implements Mutation$DeleteProfile$delete_profile {
  Mutation$DeleteProfile$delete_profile$$Successfully({
    this.$__typename = 'Successfully',
    required this.message,
  });

  factory Mutation$DeleteProfile$delete_profile$$Successfully.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$message = json['message'];
    return Mutation$DeleteProfile$delete_profile$$Successfully(
      $__typename: (l$$__typename as String),
      message: (l$message as String),
    );
  }

  final String $__typename;

  final String message;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$message = message;
    _resultData['message'] = l$message;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$message = message;
    return Object.hashAll([
      l$$__typename,
      l$message,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteProfile$delete_profile$$Successfully) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DeleteProfile$delete_profile$$Successfully
    on Mutation$DeleteProfile$delete_profile$$Successfully {
  CopyWith$Mutation$DeleteProfile$delete_profile$$Successfully<
          Mutation$DeleteProfile$delete_profile$$Successfully>
      get copyWith =>
          CopyWith$Mutation$DeleteProfile$delete_profile$$Successfully(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteProfile$delete_profile$$Successfully<
    TRes> {
  factory CopyWith$Mutation$DeleteProfile$delete_profile$$Successfully(
    Mutation$DeleteProfile$delete_profile$$Successfully instance,
    TRes Function(Mutation$DeleteProfile$delete_profile$$Successfully) then,
  ) = _CopyWithImpl$Mutation$DeleteProfile$delete_profile$$Successfully;

  factory CopyWith$Mutation$DeleteProfile$delete_profile$$Successfully.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DeleteProfile$delete_profile$$Successfully;

  TRes call({
    String? $__typename,
    String? message,
  });
}

class _CopyWithImpl$Mutation$DeleteProfile$delete_profile$$Successfully<TRes>
    implements
        CopyWith$Mutation$DeleteProfile$delete_profile$$Successfully<TRes> {
  _CopyWithImpl$Mutation$DeleteProfile$delete_profile$$Successfully(
    this._instance,
    this._then,
  );

  final Mutation$DeleteProfile$delete_profile$$Successfully _instance;

  final TRes Function(Mutation$DeleteProfile$delete_profile$$Successfully)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? message = _undefined,
  }) =>
      _then(Mutation$DeleteProfile$delete_profile$$Successfully(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteProfile$delete_profile$$Successfully<
        TRes>
    implements
        CopyWith$Mutation$DeleteProfile$delete_profile$$Successfully<TRes> {
  _CopyWithStubImpl$Mutation$DeleteProfile$delete_profile$$Successfully(
      this._res);

  TRes _res;

  call({
    String? $__typename,
    String? message,
  }) =>
      _res;
}

class Mutation$DeleteProfile$delete_profile$$ReturnError
    implements Mutation$DeleteProfile$delete_profile {
  Mutation$DeleteProfile$delete_profile$$ReturnError({
    this.$__typename = 'ReturnError',
    required this.message,
    required this.name,
  });

  factory Mutation$DeleteProfile$delete_profile$$ReturnError.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$message = json['message'];
    final l$name = json['name'];
    return Mutation$DeleteProfile$delete_profile$$ReturnError(
      $__typename: (l$$__typename as String),
      message: (l$message as String),
      name: (l$name as String),
    );
  }

  final String $__typename;

  final String message;

  final String name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$message = message;
    final l$name = name;
    return Object.hashAll([
      l$$__typename,
      l$message,
      l$name,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteProfile$delete_profile$$ReturnError) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DeleteProfile$delete_profile$$ReturnError
    on Mutation$DeleteProfile$delete_profile$$ReturnError {
  CopyWith$Mutation$DeleteProfile$delete_profile$$ReturnError<
          Mutation$DeleteProfile$delete_profile$$ReturnError>
      get copyWith =>
          CopyWith$Mutation$DeleteProfile$delete_profile$$ReturnError(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteProfile$delete_profile$$ReturnError<
    TRes> {
  factory CopyWith$Mutation$DeleteProfile$delete_profile$$ReturnError(
    Mutation$DeleteProfile$delete_profile$$ReturnError instance,
    TRes Function(Mutation$DeleteProfile$delete_profile$$ReturnError) then,
  ) = _CopyWithImpl$Mutation$DeleteProfile$delete_profile$$ReturnError;

  factory CopyWith$Mutation$DeleteProfile$delete_profile$$ReturnError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DeleteProfile$delete_profile$$ReturnError;

  TRes call({
    String? $__typename,
    String? message,
    String? name,
  });
}

class _CopyWithImpl$Mutation$DeleteProfile$delete_profile$$ReturnError<TRes>
    implements
        CopyWith$Mutation$DeleteProfile$delete_profile$$ReturnError<TRes> {
  _CopyWithImpl$Mutation$DeleteProfile$delete_profile$$ReturnError(
    this._instance,
    this._then,
  );

  final Mutation$DeleteProfile$delete_profile$$ReturnError _instance;

  final TRes Function(Mutation$DeleteProfile$delete_profile$$ReturnError) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? message = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Mutation$DeleteProfile$delete_profile$$ReturnError(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteProfile$delete_profile$$ReturnError<TRes>
    implements
        CopyWith$Mutation$DeleteProfile$delete_profile$$ReturnError<TRes> {
  _CopyWithStubImpl$Mutation$DeleteProfile$delete_profile$$ReturnError(
      this._res);

  TRes _res;

  call({
    String? $__typename,
    String? message,
    String? name,
  }) =>
      _res;
}

class Mutation$Logout {
  Mutation$Logout({
    required this.logout,
    this.$__typename = 'Mutation',
  });

  factory Mutation$Logout.fromJson(Map<String, dynamic> json) {
    final l$logout = json['logout'];
    final l$$__typename = json['__typename'];
    return Mutation$Logout(
      logout:
          Mutation$Logout$logout.fromJson((l$logout as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Logout$logout logout;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$logout = logout;
    _resultData['logout'] = l$logout.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$logout = logout;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$logout,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Logout) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$logout = logout;
    final lOther$logout = other.logout;
    if (l$logout != lOther$logout) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$Logout on Mutation$Logout {
  CopyWith$Mutation$Logout<Mutation$Logout> get copyWith =>
      CopyWith$Mutation$Logout(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Logout<TRes> {
  factory CopyWith$Mutation$Logout(
    Mutation$Logout instance,
    TRes Function(Mutation$Logout) then,
  ) = _CopyWithImpl$Mutation$Logout;

  factory CopyWith$Mutation$Logout.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Logout;

  TRes call({
    Mutation$Logout$logout? logout,
    String? $__typename,
  });
  CopyWith$Mutation$Logout$logout<TRes> get logout;
}

class _CopyWithImpl$Mutation$Logout<TRes>
    implements CopyWith$Mutation$Logout<TRes> {
  _CopyWithImpl$Mutation$Logout(
    this._instance,
    this._then,
  );

  final Mutation$Logout _instance;

  final TRes Function(Mutation$Logout) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? logout = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Logout(
        logout: logout == _undefined || logout == null
            ? _instance.logout
            : (logout as Mutation$Logout$logout),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$Logout$logout<TRes> get logout {
    final local$logout = _instance.logout;
    return CopyWith$Mutation$Logout$logout(
        local$logout, (e) => call(logout: e));
  }
}

class _CopyWithStubImpl$Mutation$Logout<TRes>
    implements CopyWith$Mutation$Logout<TRes> {
  _CopyWithStubImpl$Mutation$Logout(this._res);

  TRes _res;

  call({
    Mutation$Logout$logout? logout,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$Logout$logout<TRes> get logout =>
      CopyWith$Mutation$Logout$logout.stub(_res);
}

const documentNodeMutationLogout = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Logout'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'logout'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'Successfully'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'message'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ReturnError'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'message'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Mutation$Logout$logout {
  Mutation$Logout$logout({required this.$__typename});

  factory Mutation$Logout$logout.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Successfully":
        return Mutation$Logout$logout$$Successfully.fromJson(json);

      case "ReturnError":
        return Mutation$Logout$logout$$ReturnError.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Mutation$Logout$logout($__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Logout$logout) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$Logout$logout on Mutation$Logout$logout {
  CopyWith$Mutation$Logout$logout<Mutation$Logout$logout> get copyWith =>
      CopyWith$Mutation$Logout$logout(
        this,
        (i) => i,
      );
  _T when<_T>({
    required _T Function(Mutation$Logout$logout$$Successfully) successfully,
    required _T Function(Mutation$Logout$logout$$ReturnError) returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Successfully":
        return successfully(this as Mutation$Logout$logout$$Successfully);

      case "ReturnError":
        return returnError(this as Mutation$Logout$logout$$ReturnError);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Mutation$Logout$logout$$Successfully)? successfully,
    _T Function(Mutation$Logout$logout$$ReturnError)? returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Successfully":
        if (successfully != null) {
          return successfully(this as Mutation$Logout$logout$$Successfully);
        } else {
          return orElse();
        }

      case "ReturnError":
        if (returnError != null) {
          return returnError(this as Mutation$Logout$logout$$ReturnError);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$Logout$logout<TRes> {
  factory CopyWith$Mutation$Logout$logout(
    Mutation$Logout$logout instance,
    TRes Function(Mutation$Logout$logout) then,
  ) = _CopyWithImpl$Mutation$Logout$logout;

  factory CopyWith$Mutation$Logout$logout.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Logout$logout;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$Logout$logout<TRes>
    implements CopyWith$Mutation$Logout$logout<TRes> {
  _CopyWithImpl$Mutation$Logout$logout(
    this._instance,
    this._then,
  );

  final Mutation$Logout$logout _instance;

  final TRes Function(Mutation$Logout$logout) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(Mutation$Logout$logout(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$Logout$logout<TRes>
    implements CopyWith$Mutation$Logout$logout<TRes> {
  _CopyWithStubImpl$Mutation$Logout$logout(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$Logout$logout$$Successfully implements Mutation$Logout$logout {
  Mutation$Logout$logout$$Successfully({
    this.$__typename = 'Successfully',
    required this.message,
  });

  factory Mutation$Logout$logout$$Successfully.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$message = json['message'];
    return Mutation$Logout$logout$$Successfully(
      $__typename: (l$$__typename as String),
      message: (l$message as String),
    );
  }

  final String $__typename;

  final String message;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$message = message;
    _resultData['message'] = l$message;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$message = message;
    return Object.hashAll([
      l$$__typename,
      l$message,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Logout$logout$$Successfully) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$Logout$logout$$Successfully
    on Mutation$Logout$logout$$Successfully {
  CopyWith$Mutation$Logout$logout$$Successfully<
          Mutation$Logout$logout$$Successfully>
      get copyWith => CopyWith$Mutation$Logout$logout$$Successfully(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Logout$logout$$Successfully<TRes> {
  factory CopyWith$Mutation$Logout$logout$$Successfully(
    Mutation$Logout$logout$$Successfully instance,
    TRes Function(Mutation$Logout$logout$$Successfully) then,
  ) = _CopyWithImpl$Mutation$Logout$logout$$Successfully;

  factory CopyWith$Mutation$Logout$logout$$Successfully.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Logout$logout$$Successfully;

  TRes call({
    String? $__typename,
    String? message,
  });
}

class _CopyWithImpl$Mutation$Logout$logout$$Successfully<TRes>
    implements CopyWith$Mutation$Logout$logout$$Successfully<TRes> {
  _CopyWithImpl$Mutation$Logout$logout$$Successfully(
    this._instance,
    this._then,
  );

  final Mutation$Logout$logout$$Successfully _instance;

  final TRes Function(Mutation$Logout$logout$$Successfully) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? message = _undefined,
  }) =>
      _then(Mutation$Logout$logout$$Successfully(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
      ));
}

class _CopyWithStubImpl$Mutation$Logout$logout$$Successfully<TRes>
    implements CopyWith$Mutation$Logout$logout$$Successfully<TRes> {
  _CopyWithStubImpl$Mutation$Logout$logout$$Successfully(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? message,
  }) =>
      _res;
}

class Mutation$Logout$logout$$ReturnError implements Mutation$Logout$logout {
  Mutation$Logout$logout$$ReturnError({
    this.$__typename = 'ReturnError',
    required this.message,
    required this.name,
  });

  factory Mutation$Logout$logout$$ReturnError.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$message = json['message'];
    final l$name = json['name'];
    return Mutation$Logout$logout$$ReturnError(
      $__typename: (l$$__typename as String),
      message: (l$message as String),
      name: (l$name as String),
    );
  }

  final String $__typename;

  final String message;

  final String name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$message = message;
    final l$name = name;
    return Object.hashAll([
      l$$__typename,
      l$message,
      l$name,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Logout$logout$$ReturnError) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$Logout$logout$$ReturnError
    on Mutation$Logout$logout$$ReturnError {
  CopyWith$Mutation$Logout$logout$$ReturnError<
          Mutation$Logout$logout$$ReturnError>
      get copyWith => CopyWith$Mutation$Logout$logout$$ReturnError(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Logout$logout$$ReturnError<TRes> {
  factory CopyWith$Mutation$Logout$logout$$ReturnError(
    Mutation$Logout$logout$$ReturnError instance,
    TRes Function(Mutation$Logout$logout$$ReturnError) then,
  ) = _CopyWithImpl$Mutation$Logout$logout$$ReturnError;

  factory CopyWith$Mutation$Logout$logout$$ReturnError.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Logout$logout$$ReturnError;

  TRes call({
    String? $__typename,
    String? message,
    String? name,
  });
}

class _CopyWithImpl$Mutation$Logout$logout$$ReturnError<TRes>
    implements CopyWith$Mutation$Logout$logout$$ReturnError<TRes> {
  _CopyWithImpl$Mutation$Logout$logout$$ReturnError(
    this._instance,
    this._then,
  );

  final Mutation$Logout$logout$$ReturnError _instance;

  final TRes Function(Mutation$Logout$logout$$ReturnError) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? message = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Mutation$Logout$logout$$ReturnError(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
      ));
}

class _CopyWithStubImpl$Mutation$Logout$logout$$ReturnError<TRes>
    implements CopyWith$Mutation$Logout$logout$$ReturnError<TRes> {
  _CopyWithStubImpl$Mutation$Logout$logout$$ReturnError(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? message,
    String? name,
  }) =>
      _res;
}

class Variables$Mutation$PasswordCheckCode {
  factory Variables$Mutation$PasswordCheckCode(
          {required Input$CheckPasswordInput data}) =>
      Variables$Mutation$PasswordCheckCode._({
        r'data': data,
      });

  Variables$Mutation$PasswordCheckCode._(this._$data);

  factory Variables$Mutation$PasswordCheckCode.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$CheckPasswordInput.fromJson((l$data as Map<String, dynamic>));
    return Variables$Mutation$PasswordCheckCode._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CheckPasswordInput get data =>
      (_$data['data'] as Input$CheckPasswordInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$PasswordCheckCode<
          Variables$Mutation$PasswordCheckCode>
      get copyWith => CopyWith$Variables$Mutation$PasswordCheckCode(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$PasswordCheckCode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    return Object.hashAll([l$data]);
  }
}

abstract class CopyWith$Variables$Mutation$PasswordCheckCode<TRes> {
  factory CopyWith$Variables$Mutation$PasswordCheckCode(
    Variables$Mutation$PasswordCheckCode instance,
    TRes Function(Variables$Mutation$PasswordCheckCode) then,
  ) = _CopyWithImpl$Variables$Mutation$PasswordCheckCode;

  factory CopyWith$Variables$Mutation$PasswordCheckCode.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$PasswordCheckCode;

  TRes call({Input$CheckPasswordInput? data});
}

class _CopyWithImpl$Variables$Mutation$PasswordCheckCode<TRes>
    implements CopyWith$Variables$Mutation$PasswordCheckCode<TRes> {
  _CopyWithImpl$Variables$Mutation$PasswordCheckCode(
    this._instance,
    this._then,
  );

  final Variables$Mutation$PasswordCheckCode _instance;

  final TRes Function(Variables$Mutation$PasswordCheckCode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$PasswordCheckCode._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$CheckPasswordInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$PasswordCheckCode<TRes>
    implements CopyWith$Variables$Mutation$PasswordCheckCode<TRes> {
  _CopyWithStubImpl$Variables$Mutation$PasswordCheckCode(this._res);

  TRes _res;

  call({Input$CheckPasswordInput? data}) => _res;
}

class Mutation$PasswordCheckCode {
  Mutation$PasswordCheckCode({
    required this.password_check_code,
    this.$__typename = 'Mutation',
  });

  factory Mutation$PasswordCheckCode.fromJson(Map<String, dynamic> json) {
    final l$password_check_code = json['password_check_code'];
    final l$$__typename = json['__typename'];
    return Mutation$PasswordCheckCode(
      password_check_code:
          Mutation$PasswordCheckCode$password_check_code.fromJson(
              (l$password_check_code as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$PasswordCheckCode$password_check_code password_check_code;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$password_check_code = password_check_code;
    _resultData['password_check_code'] = l$password_check_code.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$password_check_code = password_check_code;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$password_check_code,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$PasswordCheckCode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$password_check_code = password_check_code;
    final lOther$password_check_code = other.password_check_code;
    if (l$password_check_code != lOther$password_check_code) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$PasswordCheckCode
    on Mutation$PasswordCheckCode {
  CopyWith$Mutation$PasswordCheckCode<Mutation$PasswordCheckCode>
      get copyWith => CopyWith$Mutation$PasswordCheckCode(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$PasswordCheckCode<TRes> {
  factory CopyWith$Mutation$PasswordCheckCode(
    Mutation$PasswordCheckCode instance,
    TRes Function(Mutation$PasswordCheckCode) then,
  ) = _CopyWithImpl$Mutation$PasswordCheckCode;

  factory CopyWith$Mutation$PasswordCheckCode.stub(TRes res) =
      _CopyWithStubImpl$Mutation$PasswordCheckCode;

  TRes call({
    Mutation$PasswordCheckCode$password_check_code? password_check_code,
    String? $__typename,
  });
  CopyWith$Mutation$PasswordCheckCode$password_check_code<TRes>
      get password_check_code;
}

class _CopyWithImpl$Mutation$PasswordCheckCode<TRes>
    implements CopyWith$Mutation$PasswordCheckCode<TRes> {
  _CopyWithImpl$Mutation$PasswordCheckCode(
    this._instance,
    this._then,
  );

  final Mutation$PasswordCheckCode _instance;

  final TRes Function(Mutation$PasswordCheckCode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? password_check_code = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$PasswordCheckCode(
        password_check_code:
            password_check_code == _undefined || password_check_code == null
                ? _instance.password_check_code
                : (password_check_code
                    as Mutation$PasswordCheckCode$password_check_code),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$PasswordCheckCode$password_check_code<TRes>
      get password_check_code {
    final local$password_check_code = _instance.password_check_code;
    return CopyWith$Mutation$PasswordCheckCode$password_check_code(
        local$password_check_code, (e) => call(password_check_code: e));
  }
}

class _CopyWithStubImpl$Mutation$PasswordCheckCode<TRes>
    implements CopyWith$Mutation$PasswordCheckCode<TRes> {
  _CopyWithStubImpl$Mutation$PasswordCheckCode(this._res);

  TRes _res;

  call({
    Mutation$PasswordCheckCode$password_check_code? password_check_code,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$PasswordCheckCode$password_check_code<TRes>
      get password_check_code =>
          CopyWith$Mutation$PasswordCheckCode$password_check_code.stub(_res);
}

const documentNodeMutationPasswordCheckCode = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'PasswordCheckCode'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'CheckPasswordInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'password_check_code'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ReturnTokens'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'access_token'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'refresh_token'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ReturnError'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'message'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Mutation$PasswordCheckCode$password_check_code {
  Mutation$PasswordCheckCode$password_check_code({required this.$__typename});

  factory Mutation$PasswordCheckCode$password_check_code.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "ReturnTokens":
        return Mutation$PasswordCheckCode$password_check_code$$ReturnTokens
            .fromJson(json);

      case "ReturnError":
        return Mutation$PasswordCheckCode$password_check_code$$ReturnError
            .fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Mutation$PasswordCheckCode$password_check_code(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$PasswordCheckCode$password_check_code) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$PasswordCheckCode$password_check_code
    on Mutation$PasswordCheckCode$password_check_code {
  CopyWith$Mutation$PasswordCheckCode$password_check_code<
          Mutation$PasswordCheckCode$password_check_code>
      get copyWith => CopyWith$Mutation$PasswordCheckCode$password_check_code(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Mutation$PasswordCheckCode$password_check_code$$ReturnTokens)
        returnTokens,
    required _T Function(
            Mutation$PasswordCheckCode$password_check_code$$ReturnError)
        returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ReturnTokens":
        return returnTokens(this
            as Mutation$PasswordCheckCode$password_check_code$$ReturnTokens);

      case "ReturnError":
        return returnError(this
            as Mutation$PasswordCheckCode$password_check_code$$ReturnError);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Mutation$PasswordCheckCode$password_check_code$$ReturnTokens)?
        returnTokens,
    _T Function(Mutation$PasswordCheckCode$password_check_code$$ReturnError)?
        returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ReturnTokens":
        if (returnTokens != null) {
          return returnTokens(this
              as Mutation$PasswordCheckCode$password_check_code$$ReturnTokens);
        } else {
          return orElse();
        }

      case "ReturnError":
        if (returnError != null) {
          return returnError(this
              as Mutation$PasswordCheckCode$password_check_code$$ReturnError);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$PasswordCheckCode$password_check_code<TRes> {
  factory CopyWith$Mutation$PasswordCheckCode$password_check_code(
    Mutation$PasswordCheckCode$password_check_code instance,
    TRes Function(Mutation$PasswordCheckCode$password_check_code) then,
  ) = _CopyWithImpl$Mutation$PasswordCheckCode$password_check_code;

  factory CopyWith$Mutation$PasswordCheckCode$password_check_code.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$PasswordCheckCode$password_check_code;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$PasswordCheckCode$password_check_code<TRes>
    implements CopyWith$Mutation$PasswordCheckCode$password_check_code<TRes> {
  _CopyWithImpl$Mutation$PasswordCheckCode$password_check_code(
    this._instance,
    this._then,
  );

  final Mutation$PasswordCheckCode$password_check_code _instance;

  final TRes Function(Mutation$PasswordCheckCode$password_check_code) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$PasswordCheckCode$password_check_code(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$PasswordCheckCode$password_check_code<TRes>
    implements CopyWith$Mutation$PasswordCheckCode$password_check_code<TRes> {
  _CopyWithStubImpl$Mutation$PasswordCheckCode$password_check_code(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$PasswordCheckCode$password_check_code$$ReturnTokens
    implements Mutation$PasswordCheckCode$password_check_code {
  Mutation$PasswordCheckCode$password_check_code$$ReturnTokens({
    this.$__typename = 'ReturnTokens',
    required this.access_token,
    required this.refresh_token,
  });

  factory Mutation$PasswordCheckCode$password_check_code$$ReturnTokens.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$access_token = json['access_token'];
    final l$refresh_token = json['refresh_token'];
    return Mutation$PasswordCheckCode$password_check_code$$ReturnTokens(
      $__typename: (l$$__typename as String),
      access_token: (l$access_token as String),
      refresh_token: (l$refresh_token as String),
    );
  }

  final String $__typename;

  final String access_token;

  final String refresh_token;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$access_token = access_token;
    _resultData['access_token'] = l$access_token;
    final l$refresh_token = refresh_token;
    _resultData['refresh_token'] = l$refresh_token;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$access_token = access_token;
    final l$refresh_token = refresh_token;
    return Object.hashAll([
      l$$__typename,
      l$access_token,
      l$refresh_token,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$PasswordCheckCode$password_check_code$$ReturnTokens) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$access_token = access_token;
    final lOther$access_token = other.access_token;
    if (l$access_token != lOther$access_token) {
      return false;
    }
    final l$refresh_token = refresh_token;
    final lOther$refresh_token = other.refresh_token;
    if (l$refresh_token != lOther$refresh_token) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$PasswordCheckCode$password_check_code$$ReturnTokens
    on Mutation$PasswordCheckCode$password_check_code$$ReturnTokens {
  CopyWith$Mutation$PasswordCheckCode$password_check_code$$ReturnTokens<
          Mutation$PasswordCheckCode$password_check_code$$ReturnTokens>
      get copyWith =>
          CopyWith$Mutation$PasswordCheckCode$password_check_code$$ReturnTokens(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$PasswordCheckCode$password_check_code$$ReturnTokens<
    TRes> {
  factory CopyWith$Mutation$PasswordCheckCode$password_check_code$$ReturnTokens(
    Mutation$PasswordCheckCode$password_check_code$$ReturnTokens instance,
    TRes Function(Mutation$PasswordCheckCode$password_check_code$$ReturnTokens)
        then,
  ) = _CopyWithImpl$Mutation$PasswordCheckCode$password_check_code$$ReturnTokens;

  factory CopyWith$Mutation$PasswordCheckCode$password_check_code$$ReturnTokens.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$PasswordCheckCode$password_check_code$$ReturnTokens;

  TRes call({
    String? $__typename,
    String? access_token,
    String? refresh_token,
  });
}

class _CopyWithImpl$Mutation$PasswordCheckCode$password_check_code$$ReturnTokens<
        TRes>
    implements
        CopyWith$Mutation$PasswordCheckCode$password_check_code$$ReturnTokens<
            TRes> {
  _CopyWithImpl$Mutation$PasswordCheckCode$password_check_code$$ReturnTokens(
    this._instance,
    this._then,
  );

  final Mutation$PasswordCheckCode$password_check_code$$ReturnTokens _instance;

  final TRes Function(
      Mutation$PasswordCheckCode$password_check_code$$ReturnTokens) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? access_token = _undefined,
    Object? refresh_token = _undefined,
  }) =>
      _then(Mutation$PasswordCheckCode$password_check_code$$ReturnTokens(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        access_token: access_token == _undefined || access_token == null
            ? _instance.access_token
            : (access_token as String),
        refresh_token: refresh_token == _undefined || refresh_token == null
            ? _instance.refresh_token
            : (refresh_token as String),
      ));
}

class _CopyWithStubImpl$Mutation$PasswordCheckCode$password_check_code$$ReturnTokens<
        TRes>
    implements
        CopyWith$Mutation$PasswordCheckCode$password_check_code$$ReturnTokens<
            TRes> {
  _CopyWithStubImpl$Mutation$PasswordCheckCode$password_check_code$$ReturnTokens(
      this._res);

  TRes _res;

  call({
    String? $__typename,
    String? access_token,
    String? refresh_token,
  }) =>
      _res;
}

class Mutation$PasswordCheckCode$password_check_code$$ReturnError
    implements Mutation$PasswordCheckCode$password_check_code {
  Mutation$PasswordCheckCode$password_check_code$$ReturnError({
    this.$__typename = 'ReturnError',
    required this.message,
    required this.name,
  });

  factory Mutation$PasswordCheckCode$password_check_code$$ReturnError.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$message = json['message'];
    final l$name = json['name'];
    return Mutation$PasswordCheckCode$password_check_code$$ReturnError(
      $__typename: (l$$__typename as String),
      message: (l$message as String),
      name: (l$name as String),
    );
  }

  final String $__typename;

  final String message;

  final String name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$message = message;
    final l$name = name;
    return Object.hashAll([
      l$$__typename,
      l$message,
      l$name,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$PasswordCheckCode$password_check_code$$ReturnError) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$PasswordCheckCode$password_check_code$$ReturnError
    on Mutation$PasswordCheckCode$password_check_code$$ReturnError {
  CopyWith$Mutation$PasswordCheckCode$password_check_code$$ReturnError<
          Mutation$PasswordCheckCode$password_check_code$$ReturnError>
      get copyWith =>
          CopyWith$Mutation$PasswordCheckCode$password_check_code$$ReturnError(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$PasswordCheckCode$password_check_code$$ReturnError<
    TRes> {
  factory CopyWith$Mutation$PasswordCheckCode$password_check_code$$ReturnError(
    Mutation$PasswordCheckCode$password_check_code$$ReturnError instance,
    TRes Function(Mutation$PasswordCheckCode$password_check_code$$ReturnError)
        then,
  ) = _CopyWithImpl$Mutation$PasswordCheckCode$password_check_code$$ReturnError;

  factory CopyWith$Mutation$PasswordCheckCode$password_check_code$$ReturnError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$PasswordCheckCode$password_check_code$$ReturnError;

  TRes call({
    String? $__typename,
    String? message,
    String? name,
  });
}

class _CopyWithImpl$Mutation$PasswordCheckCode$password_check_code$$ReturnError<
        TRes>
    implements
        CopyWith$Mutation$PasswordCheckCode$password_check_code$$ReturnError<
            TRes> {
  _CopyWithImpl$Mutation$PasswordCheckCode$password_check_code$$ReturnError(
    this._instance,
    this._then,
  );

  final Mutation$PasswordCheckCode$password_check_code$$ReturnError _instance;

  final TRes Function(
      Mutation$PasswordCheckCode$password_check_code$$ReturnError) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? message = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Mutation$PasswordCheckCode$password_check_code$$ReturnError(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
      ));
}

class _CopyWithStubImpl$Mutation$PasswordCheckCode$password_check_code$$ReturnError<
        TRes>
    implements
        CopyWith$Mutation$PasswordCheckCode$password_check_code$$ReturnError<
            TRes> {
  _CopyWithStubImpl$Mutation$PasswordCheckCode$password_check_code$$ReturnError(
      this._res);

  TRes _res;

  call({
    String? $__typename,
    String? message,
    String? name,
  }) =>
      _res;
}

class Variables$Mutation$PasswordResetRequest {
  factory Variables$Mutation$PasswordResetRequest(
          {required Input$UsernameInput data}) =>
      Variables$Mutation$PasswordResetRequest._({
        r'data': data,
      });

  Variables$Mutation$PasswordResetRequest._(this._$data);

  factory Variables$Mutation$PasswordResetRequest.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$UsernameInput.fromJson((l$data as Map<String, dynamic>));
    return Variables$Mutation$PasswordResetRequest._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UsernameInput get data => (_$data['data'] as Input$UsernameInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$PasswordResetRequest<
          Variables$Mutation$PasswordResetRequest>
      get copyWith => CopyWith$Variables$Mutation$PasswordResetRequest(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$PasswordResetRequest) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    return Object.hashAll([l$data]);
  }
}

abstract class CopyWith$Variables$Mutation$PasswordResetRequest<TRes> {
  factory CopyWith$Variables$Mutation$PasswordResetRequest(
    Variables$Mutation$PasswordResetRequest instance,
    TRes Function(Variables$Mutation$PasswordResetRequest) then,
  ) = _CopyWithImpl$Variables$Mutation$PasswordResetRequest;

  factory CopyWith$Variables$Mutation$PasswordResetRequest.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$PasswordResetRequest;

  TRes call({Input$UsernameInput? data});
}

class _CopyWithImpl$Variables$Mutation$PasswordResetRequest<TRes>
    implements CopyWith$Variables$Mutation$PasswordResetRequest<TRes> {
  _CopyWithImpl$Variables$Mutation$PasswordResetRequest(
    this._instance,
    this._then,
  );

  final Variables$Mutation$PasswordResetRequest _instance;

  final TRes Function(Variables$Mutation$PasswordResetRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$PasswordResetRequest._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$UsernameInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$PasswordResetRequest<TRes>
    implements CopyWith$Variables$Mutation$PasswordResetRequest<TRes> {
  _CopyWithStubImpl$Variables$Mutation$PasswordResetRequest(this._res);

  TRes _res;

  call({Input$UsernameInput? data}) => _res;
}

class Mutation$PasswordResetRequest {
  Mutation$PasswordResetRequest({
    required this.password_reset_request,
    this.$__typename = 'Mutation',
  });

  factory Mutation$PasswordResetRequest.fromJson(Map<String, dynamic> json) {
    final l$password_reset_request = json['password_reset_request'];
    final l$$__typename = json['__typename'];
    return Mutation$PasswordResetRequest(
      password_reset_request:
          Mutation$PasswordResetRequest$password_reset_request.fromJson(
              (l$password_reset_request as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$PasswordResetRequest$password_reset_request
      password_reset_request;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$password_reset_request = password_reset_request;
    _resultData['password_reset_request'] = l$password_reset_request.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$password_reset_request = password_reset_request;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$password_reset_request,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$PasswordResetRequest) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$password_reset_request = password_reset_request;
    final lOther$password_reset_request = other.password_reset_request;
    if (l$password_reset_request != lOther$password_reset_request) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$PasswordResetRequest
    on Mutation$PasswordResetRequest {
  CopyWith$Mutation$PasswordResetRequest<Mutation$PasswordResetRequest>
      get copyWith => CopyWith$Mutation$PasswordResetRequest(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$PasswordResetRequest<TRes> {
  factory CopyWith$Mutation$PasswordResetRequest(
    Mutation$PasswordResetRequest instance,
    TRes Function(Mutation$PasswordResetRequest) then,
  ) = _CopyWithImpl$Mutation$PasswordResetRequest;

  factory CopyWith$Mutation$PasswordResetRequest.stub(TRes res) =
      _CopyWithStubImpl$Mutation$PasswordResetRequest;

  TRes call({
    Mutation$PasswordResetRequest$password_reset_request?
        password_reset_request,
    String? $__typename,
  });
  CopyWith$Mutation$PasswordResetRequest$password_reset_request<TRes>
      get password_reset_request;
}

class _CopyWithImpl$Mutation$PasswordResetRequest<TRes>
    implements CopyWith$Mutation$PasswordResetRequest<TRes> {
  _CopyWithImpl$Mutation$PasswordResetRequest(
    this._instance,
    this._then,
  );

  final Mutation$PasswordResetRequest _instance;

  final TRes Function(Mutation$PasswordResetRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? password_reset_request = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$PasswordResetRequest(
        password_reset_request: password_reset_request == _undefined ||
                password_reset_request == null
            ? _instance.password_reset_request
            : (password_reset_request
                as Mutation$PasswordResetRequest$password_reset_request),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$PasswordResetRequest$password_reset_request<TRes>
      get password_reset_request {
    final local$password_reset_request = _instance.password_reset_request;
    return CopyWith$Mutation$PasswordResetRequest$password_reset_request(
        local$password_reset_request, (e) => call(password_reset_request: e));
  }
}

class _CopyWithStubImpl$Mutation$PasswordResetRequest<TRes>
    implements CopyWith$Mutation$PasswordResetRequest<TRes> {
  _CopyWithStubImpl$Mutation$PasswordResetRequest(this._res);

  TRes _res;

  call({
    Mutation$PasswordResetRequest$password_reset_request?
        password_reset_request,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$PasswordResetRequest$password_reset_request<TRes>
      get password_reset_request =>
          CopyWith$Mutation$PasswordResetRequest$password_reset_request.stub(
              _res);
}

const documentNodeMutationPasswordResetRequest = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'PasswordResetRequest'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'UsernameInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'password_reset_request'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ReturnTimer'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'timer'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ReturnError'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'message'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Mutation$PasswordResetRequest$password_reset_request {
  Mutation$PasswordResetRequest$password_reset_request(
      {required this.$__typename});

  factory Mutation$PasswordResetRequest$password_reset_request.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "ReturnTimer":
        return Mutation$PasswordResetRequest$password_reset_request$$ReturnTimer
            .fromJson(json);

      case "ReturnError":
        return Mutation$PasswordResetRequest$password_reset_request$$ReturnError
            .fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Mutation$PasswordResetRequest$password_reset_request(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$PasswordResetRequest$password_reset_request) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$PasswordResetRequest$password_reset_request
    on Mutation$PasswordResetRequest$password_reset_request {
  CopyWith$Mutation$PasswordResetRequest$password_reset_request<
          Mutation$PasswordResetRequest$password_reset_request>
      get copyWith =>
          CopyWith$Mutation$PasswordResetRequest$password_reset_request(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Mutation$PasswordResetRequest$password_reset_request$$ReturnTimer)
        returnTimer,
    required _T Function(
            Mutation$PasswordResetRequest$password_reset_request$$ReturnError)
        returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ReturnTimer":
        return returnTimer(this
            as Mutation$PasswordResetRequest$password_reset_request$$ReturnTimer);

      case "ReturnError":
        return returnError(this
            as Mutation$PasswordResetRequest$password_reset_request$$ReturnError);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
            Mutation$PasswordResetRequest$password_reset_request$$ReturnTimer)?
        returnTimer,
    _T Function(
            Mutation$PasswordResetRequest$password_reset_request$$ReturnError)?
        returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ReturnTimer":
        if (returnTimer != null) {
          return returnTimer(this
              as Mutation$PasswordResetRequest$password_reset_request$$ReturnTimer);
        } else {
          return orElse();
        }

      case "ReturnError":
        if (returnError != null) {
          return returnError(this
              as Mutation$PasswordResetRequest$password_reset_request$$ReturnError);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$PasswordResetRequest$password_reset_request<
    TRes> {
  factory CopyWith$Mutation$PasswordResetRequest$password_reset_request(
    Mutation$PasswordResetRequest$password_reset_request instance,
    TRes Function(Mutation$PasswordResetRequest$password_reset_request) then,
  ) = _CopyWithImpl$Mutation$PasswordResetRequest$password_reset_request;

  factory CopyWith$Mutation$PasswordResetRequest$password_reset_request.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$PasswordResetRequest$password_reset_request;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$PasswordResetRequest$password_reset_request<TRes>
    implements
        CopyWith$Mutation$PasswordResetRequest$password_reset_request<TRes> {
  _CopyWithImpl$Mutation$PasswordResetRequest$password_reset_request(
    this._instance,
    this._then,
  );

  final Mutation$PasswordResetRequest$password_reset_request _instance;

  final TRes Function(Mutation$PasswordResetRequest$password_reset_request)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$PasswordResetRequest$password_reset_request(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$PasswordResetRequest$password_reset_request<
        TRes>
    implements
        CopyWith$Mutation$PasswordResetRequest$password_reset_request<TRes> {
  _CopyWithStubImpl$Mutation$PasswordResetRequest$password_reset_request(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$PasswordResetRequest$password_reset_request$$ReturnTimer
    implements Mutation$PasswordResetRequest$password_reset_request {
  Mutation$PasswordResetRequest$password_reset_request$$ReturnTimer({
    this.$__typename = 'ReturnTimer',
    required this.timer,
  });

  factory Mutation$PasswordResetRequest$password_reset_request$$ReturnTimer.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$timer = json['timer'];
    return Mutation$PasswordResetRequest$password_reset_request$$ReturnTimer(
      $__typename: (l$$__typename as String),
      timer: (l$timer as String),
    );
  }

  final String $__typename;

  final String timer;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$timer = timer;
    _resultData['timer'] = l$timer;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$timer = timer;
    return Object.hashAll([
      l$$__typename,
      l$timer,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$PasswordResetRequest$password_reset_request$$ReturnTimer) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$timer = timer;
    final lOther$timer = other.timer;
    if (l$timer != lOther$timer) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$PasswordResetRequest$password_reset_request$$ReturnTimer
    on Mutation$PasswordResetRequest$password_reset_request$$ReturnTimer {
  CopyWith$Mutation$PasswordResetRequest$password_reset_request$$ReturnTimer<
          Mutation$PasswordResetRequest$password_reset_request$$ReturnTimer>
      get copyWith =>
          CopyWith$Mutation$PasswordResetRequest$password_reset_request$$ReturnTimer(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$PasswordResetRequest$password_reset_request$$ReturnTimer<
    TRes> {
  factory CopyWith$Mutation$PasswordResetRequest$password_reset_request$$ReturnTimer(
    Mutation$PasswordResetRequest$password_reset_request$$ReturnTimer instance,
    TRes Function(
            Mutation$PasswordResetRequest$password_reset_request$$ReturnTimer)
        then,
  ) = _CopyWithImpl$Mutation$PasswordResetRequest$password_reset_request$$ReturnTimer;

  factory CopyWith$Mutation$PasswordResetRequest$password_reset_request$$ReturnTimer.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$PasswordResetRequest$password_reset_request$$ReturnTimer;

  TRes call({
    String? $__typename,
    String? timer,
  });
}

class _CopyWithImpl$Mutation$PasswordResetRequest$password_reset_request$$ReturnTimer<
        TRes>
    implements
        CopyWith$Mutation$PasswordResetRequest$password_reset_request$$ReturnTimer<
            TRes> {
  _CopyWithImpl$Mutation$PasswordResetRequest$password_reset_request$$ReturnTimer(
    this._instance,
    this._then,
  );

  final Mutation$PasswordResetRequest$password_reset_request$$ReturnTimer
      _instance;

  final TRes Function(
      Mutation$PasswordResetRequest$password_reset_request$$ReturnTimer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? timer = _undefined,
  }) =>
      _then(Mutation$PasswordResetRequest$password_reset_request$$ReturnTimer(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        timer: timer == _undefined || timer == null
            ? _instance.timer
            : (timer as String),
      ));
}

class _CopyWithStubImpl$Mutation$PasswordResetRequest$password_reset_request$$ReturnTimer<
        TRes>
    implements
        CopyWith$Mutation$PasswordResetRequest$password_reset_request$$ReturnTimer<
            TRes> {
  _CopyWithStubImpl$Mutation$PasswordResetRequest$password_reset_request$$ReturnTimer(
      this._res);

  TRes _res;

  call({
    String? $__typename,
    String? timer,
  }) =>
      _res;
}

class Mutation$PasswordResetRequest$password_reset_request$$ReturnError
    implements Mutation$PasswordResetRequest$password_reset_request {
  Mutation$PasswordResetRequest$password_reset_request$$ReturnError({
    this.$__typename = 'ReturnError',
    required this.message,
    required this.name,
  });

  factory Mutation$PasswordResetRequest$password_reset_request$$ReturnError.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$message = json['message'];
    final l$name = json['name'];
    return Mutation$PasswordResetRequest$password_reset_request$$ReturnError(
      $__typename: (l$$__typename as String),
      message: (l$message as String),
      name: (l$name as String),
    );
  }

  final String $__typename;

  final String message;

  final String name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$message = message;
    final l$name = name;
    return Object.hashAll([
      l$$__typename,
      l$message,
      l$name,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$PasswordResetRequest$password_reset_request$$ReturnError) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$PasswordResetRequest$password_reset_request$$ReturnError
    on Mutation$PasswordResetRequest$password_reset_request$$ReturnError {
  CopyWith$Mutation$PasswordResetRequest$password_reset_request$$ReturnError<
          Mutation$PasswordResetRequest$password_reset_request$$ReturnError>
      get copyWith =>
          CopyWith$Mutation$PasswordResetRequest$password_reset_request$$ReturnError(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$PasswordResetRequest$password_reset_request$$ReturnError<
    TRes> {
  factory CopyWith$Mutation$PasswordResetRequest$password_reset_request$$ReturnError(
    Mutation$PasswordResetRequest$password_reset_request$$ReturnError instance,
    TRes Function(
            Mutation$PasswordResetRequest$password_reset_request$$ReturnError)
        then,
  ) = _CopyWithImpl$Mutation$PasswordResetRequest$password_reset_request$$ReturnError;

  factory CopyWith$Mutation$PasswordResetRequest$password_reset_request$$ReturnError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$PasswordResetRequest$password_reset_request$$ReturnError;

  TRes call({
    String? $__typename,
    String? message,
    String? name,
  });
}

class _CopyWithImpl$Mutation$PasswordResetRequest$password_reset_request$$ReturnError<
        TRes>
    implements
        CopyWith$Mutation$PasswordResetRequest$password_reset_request$$ReturnError<
            TRes> {
  _CopyWithImpl$Mutation$PasswordResetRequest$password_reset_request$$ReturnError(
    this._instance,
    this._then,
  );

  final Mutation$PasswordResetRequest$password_reset_request$$ReturnError
      _instance;

  final TRes Function(
      Mutation$PasswordResetRequest$password_reset_request$$ReturnError) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? message = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Mutation$PasswordResetRequest$password_reset_request$$ReturnError(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
      ));
}

class _CopyWithStubImpl$Mutation$PasswordResetRequest$password_reset_request$$ReturnError<
        TRes>
    implements
        CopyWith$Mutation$PasswordResetRequest$password_reset_request$$ReturnError<
            TRes> {
  _CopyWithStubImpl$Mutation$PasswordResetRequest$password_reset_request$$ReturnError(
      this._res);

  TRes _res;

  call({
    String? $__typename,
    String? message,
    String? name,
  }) =>
      _res;
}

class Variables$Mutation$SendCode {
  factory Variables$Mutation$SendCode(
          {required Input$LoginInput login_input}) =>
      Variables$Mutation$SendCode._({
        r'login_input': login_input,
      });

  Variables$Mutation$SendCode._(this._$data);

  factory Variables$Mutation$SendCode.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$login_input = data['login_input'];
    result$data['login_input'] =
        Input$LoginInput.fromJson((l$login_input as Map<String, dynamic>));
    return Variables$Mutation$SendCode._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$LoginInput get login_input =>
      (_$data['login_input'] as Input$LoginInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$login_input = login_input;
    result$data['login_input'] = l$login_input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$SendCode<Variables$Mutation$SendCode>
      get copyWith => CopyWith$Variables$Mutation$SendCode(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$SendCode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$login_input = login_input;
    final lOther$login_input = other.login_input;
    if (l$login_input != lOther$login_input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$login_input = login_input;
    return Object.hashAll([l$login_input]);
  }
}

abstract class CopyWith$Variables$Mutation$SendCode<TRes> {
  factory CopyWith$Variables$Mutation$SendCode(
    Variables$Mutation$SendCode instance,
    TRes Function(Variables$Mutation$SendCode) then,
  ) = _CopyWithImpl$Variables$Mutation$SendCode;

  factory CopyWith$Variables$Mutation$SendCode.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SendCode;

  TRes call({Input$LoginInput? login_input});
}

class _CopyWithImpl$Variables$Mutation$SendCode<TRes>
    implements CopyWith$Variables$Mutation$SendCode<TRes> {
  _CopyWithImpl$Variables$Mutation$SendCode(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SendCode _instance;

  final TRes Function(Variables$Mutation$SendCode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? login_input = _undefined}) =>
      _then(Variables$Mutation$SendCode._({
        ..._instance._$data,
        if (login_input != _undefined && login_input != null)
          'login_input': (login_input as Input$LoginInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SendCode<TRes>
    implements CopyWith$Variables$Mutation$SendCode<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SendCode(this._res);

  TRes _res;

  call({Input$LoginInput? login_input}) => _res;
}

class Mutation$SendCode {
  Mutation$SendCode({
    required this.send_code,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SendCode.fromJson(Map<String, dynamic> json) {
    final l$send_code = json['send_code'];
    final l$$__typename = json['__typename'];
    return Mutation$SendCode(
      send_code: Mutation$SendCode$send_code.fromJson(
          (l$send_code as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SendCode$send_code send_code;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$send_code = send_code;
    _resultData['send_code'] = l$send_code.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$send_code = send_code;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$send_code,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SendCode) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$send_code = send_code;
    final lOther$send_code = other.send_code;
    if (l$send_code != lOther$send_code) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SendCode on Mutation$SendCode {
  CopyWith$Mutation$SendCode<Mutation$SendCode> get copyWith =>
      CopyWith$Mutation$SendCode(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SendCode<TRes> {
  factory CopyWith$Mutation$SendCode(
    Mutation$SendCode instance,
    TRes Function(Mutation$SendCode) then,
  ) = _CopyWithImpl$Mutation$SendCode;

  factory CopyWith$Mutation$SendCode.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SendCode;

  TRes call({
    Mutation$SendCode$send_code? send_code,
    String? $__typename,
  });
  CopyWith$Mutation$SendCode$send_code<TRes> get send_code;
}

class _CopyWithImpl$Mutation$SendCode<TRes>
    implements CopyWith$Mutation$SendCode<TRes> {
  _CopyWithImpl$Mutation$SendCode(
    this._instance,
    this._then,
  );

  final Mutation$SendCode _instance;

  final TRes Function(Mutation$SendCode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? send_code = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SendCode(
        send_code: send_code == _undefined || send_code == null
            ? _instance.send_code
            : (send_code as Mutation$SendCode$send_code),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$SendCode$send_code<TRes> get send_code {
    final local$send_code = _instance.send_code;
    return CopyWith$Mutation$SendCode$send_code(
        local$send_code, (e) => call(send_code: e));
  }
}

class _CopyWithStubImpl$Mutation$SendCode<TRes>
    implements CopyWith$Mutation$SendCode<TRes> {
  _CopyWithStubImpl$Mutation$SendCode(this._res);

  TRes _res;

  call({
    Mutation$SendCode$send_code? send_code,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$SendCode$send_code<TRes> get send_code =>
      CopyWith$Mutation$SendCode$send_code.stub(_res);
}

const documentNodeMutationSendCode = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SendCode'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'login_input')),
        type: NamedTypeNode(
          name: NameNode(value: 'LoginInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'send_code'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'login_input'),
            value: VariableNode(name: NameNode(value: 'login_input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ReturnTimer'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'timer'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ReturnError'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'message'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Mutation$SendCode$send_code {
  Mutation$SendCode$send_code({required this.$__typename});

  factory Mutation$SendCode$send_code.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "ReturnTimer":
        return Mutation$SendCode$send_code$$ReturnTimer.fromJson(json);

      case "ReturnError":
        return Mutation$SendCode$send_code$$ReturnError.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Mutation$SendCode$send_code(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SendCode$send_code) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SendCode$send_code
    on Mutation$SendCode$send_code {
  CopyWith$Mutation$SendCode$send_code<Mutation$SendCode$send_code>
      get copyWith => CopyWith$Mutation$SendCode$send_code(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Mutation$SendCode$send_code$$ReturnTimer) returnTimer,
    required _T Function(Mutation$SendCode$send_code$$ReturnError) returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ReturnTimer":
        return returnTimer(this as Mutation$SendCode$send_code$$ReturnTimer);

      case "ReturnError":
        return returnError(this as Mutation$SendCode$send_code$$ReturnError);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Mutation$SendCode$send_code$$ReturnTimer)? returnTimer,
    _T Function(Mutation$SendCode$send_code$$ReturnError)? returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ReturnTimer":
        if (returnTimer != null) {
          return returnTimer(this as Mutation$SendCode$send_code$$ReturnTimer);
        } else {
          return orElse();
        }

      case "ReturnError":
        if (returnError != null) {
          return returnError(this as Mutation$SendCode$send_code$$ReturnError);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$SendCode$send_code<TRes> {
  factory CopyWith$Mutation$SendCode$send_code(
    Mutation$SendCode$send_code instance,
    TRes Function(Mutation$SendCode$send_code) then,
  ) = _CopyWithImpl$Mutation$SendCode$send_code;

  factory CopyWith$Mutation$SendCode$send_code.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SendCode$send_code;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$SendCode$send_code<TRes>
    implements CopyWith$Mutation$SendCode$send_code<TRes> {
  _CopyWithImpl$Mutation$SendCode$send_code(
    this._instance,
    this._then,
  );

  final Mutation$SendCode$send_code _instance;

  final TRes Function(Mutation$SendCode$send_code) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$SendCode$send_code(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$SendCode$send_code<TRes>
    implements CopyWith$Mutation$SendCode$send_code<TRes> {
  _CopyWithStubImpl$Mutation$SendCode$send_code(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$SendCode$send_code$$ReturnTimer
    implements Mutation$SendCode$send_code {
  Mutation$SendCode$send_code$$ReturnTimer({
    this.$__typename = 'ReturnTimer',
    required this.timer,
  });

  factory Mutation$SendCode$send_code$$ReturnTimer.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$timer = json['timer'];
    return Mutation$SendCode$send_code$$ReturnTimer(
      $__typename: (l$$__typename as String),
      timer: (l$timer as String),
    );
  }

  final String $__typename;

  final String timer;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$timer = timer;
    _resultData['timer'] = l$timer;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$timer = timer;
    return Object.hashAll([
      l$$__typename,
      l$timer,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SendCode$send_code$$ReturnTimer) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$timer = timer;
    final lOther$timer = other.timer;
    if (l$timer != lOther$timer) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SendCode$send_code$$ReturnTimer
    on Mutation$SendCode$send_code$$ReturnTimer {
  CopyWith$Mutation$SendCode$send_code$$ReturnTimer<
          Mutation$SendCode$send_code$$ReturnTimer>
      get copyWith => CopyWith$Mutation$SendCode$send_code$$ReturnTimer(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SendCode$send_code$$ReturnTimer<TRes> {
  factory CopyWith$Mutation$SendCode$send_code$$ReturnTimer(
    Mutation$SendCode$send_code$$ReturnTimer instance,
    TRes Function(Mutation$SendCode$send_code$$ReturnTimer) then,
  ) = _CopyWithImpl$Mutation$SendCode$send_code$$ReturnTimer;

  factory CopyWith$Mutation$SendCode$send_code$$ReturnTimer.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SendCode$send_code$$ReturnTimer;

  TRes call({
    String? $__typename,
    String? timer,
  });
}

class _CopyWithImpl$Mutation$SendCode$send_code$$ReturnTimer<TRes>
    implements CopyWith$Mutation$SendCode$send_code$$ReturnTimer<TRes> {
  _CopyWithImpl$Mutation$SendCode$send_code$$ReturnTimer(
    this._instance,
    this._then,
  );

  final Mutation$SendCode$send_code$$ReturnTimer _instance;

  final TRes Function(Mutation$SendCode$send_code$$ReturnTimer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? timer = _undefined,
  }) =>
      _then(Mutation$SendCode$send_code$$ReturnTimer(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        timer: timer == _undefined || timer == null
            ? _instance.timer
            : (timer as String),
      ));
}

class _CopyWithStubImpl$Mutation$SendCode$send_code$$ReturnTimer<TRes>
    implements CopyWith$Mutation$SendCode$send_code$$ReturnTimer<TRes> {
  _CopyWithStubImpl$Mutation$SendCode$send_code$$ReturnTimer(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? timer,
  }) =>
      _res;
}

class Mutation$SendCode$send_code$$ReturnError
    implements Mutation$SendCode$send_code {
  Mutation$SendCode$send_code$$ReturnError({
    this.$__typename = 'ReturnError',
    required this.message,
    required this.name,
  });

  factory Mutation$SendCode$send_code$$ReturnError.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$message = json['message'];
    final l$name = json['name'];
    return Mutation$SendCode$send_code$$ReturnError(
      $__typename: (l$$__typename as String),
      message: (l$message as String),
      name: (l$name as String),
    );
  }

  final String $__typename;

  final String message;

  final String name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$message = message;
    final l$name = name;
    return Object.hashAll([
      l$$__typename,
      l$message,
      l$name,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SendCode$send_code$$ReturnError) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SendCode$send_code$$ReturnError
    on Mutation$SendCode$send_code$$ReturnError {
  CopyWith$Mutation$SendCode$send_code$$ReturnError<
          Mutation$SendCode$send_code$$ReturnError>
      get copyWith => CopyWith$Mutation$SendCode$send_code$$ReturnError(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SendCode$send_code$$ReturnError<TRes> {
  factory CopyWith$Mutation$SendCode$send_code$$ReturnError(
    Mutation$SendCode$send_code$$ReturnError instance,
    TRes Function(Mutation$SendCode$send_code$$ReturnError) then,
  ) = _CopyWithImpl$Mutation$SendCode$send_code$$ReturnError;

  factory CopyWith$Mutation$SendCode$send_code$$ReturnError.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SendCode$send_code$$ReturnError;

  TRes call({
    String? $__typename,
    String? message,
    String? name,
  });
}

class _CopyWithImpl$Mutation$SendCode$send_code$$ReturnError<TRes>
    implements CopyWith$Mutation$SendCode$send_code$$ReturnError<TRes> {
  _CopyWithImpl$Mutation$SendCode$send_code$$ReturnError(
    this._instance,
    this._then,
  );

  final Mutation$SendCode$send_code$$ReturnError _instance;

  final TRes Function(Mutation$SendCode$send_code$$ReturnError) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? message = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Mutation$SendCode$send_code$$ReturnError(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
      ));
}

class _CopyWithStubImpl$Mutation$SendCode$send_code$$ReturnError<TRes>
    implements CopyWith$Mutation$SendCode$send_code$$ReturnError<TRes> {
  _CopyWithStubImpl$Mutation$SendCode$send_code$$ReturnError(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? message,
    String? name,
  }) =>
      _res;
}

class Variables$Mutation$SetPassword {
  factory Variables$Mutation$SetPassword(
          {required Input$SetPasswordInput data}) =>
      Variables$Mutation$SetPassword._({
        r'data': data,
      });

  Variables$Mutation$SetPassword._(this._$data);

  factory Variables$Mutation$SetPassword.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$SetPasswordInput.fromJson((l$data as Map<String, dynamic>));
    return Variables$Mutation$SetPassword._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SetPasswordInput get data => (_$data['data'] as Input$SetPasswordInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$SetPassword<Variables$Mutation$SetPassword>
      get copyWith => CopyWith$Variables$Mutation$SetPassword(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$SetPassword) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    return Object.hashAll([l$data]);
  }
}

abstract class CopyWith$Variables$Mutation$SetPassword<TRes> {
  factory CopyWith$Variables$Mutation$SetPassword(
    Variables$Mutation$SetPassword instance,
    TRes Function(Variables$Mutation$SetPassword) then,
  ) = _CopyWithImpl$Variables$Mutation$SetPassword;

  factory CopyWith$Variables$Mutation$SetPassword.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SetPassword;

  TRes call({Input$SetPasswordInput? data});
}

class _CopyWithImpl$Variables$Mutation$SetPassword<TRes>
    implements CopyWith$Variables$Mutation$SetPassword<TRes> {
  _CopyWithImpl$Variables$Mutation$SetPassword(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SetPassword _instance;

  final TRes Function(Variables$Mutation$SetPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$SetPassword._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$SetPasswordInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SetPassword<TRes>
    implements CopyWith$Variables$Mutation$SetPassword<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SetPassword(this._res);

  TRes _res;

  call({Input$SetPasswordInput? data}) => _res;
}

class Mutation$SetPassword {
  Mutation$SetPassword({
    required this.set_password,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SetPassword.fromJson(Map<String, dynamic> json) {
    final l$set_password = json['set_password'];
    final l$$__typename = json['__typename'];
    return Mutation$SetPassword(
      set_password: Mutation$SetPassword$set_password.fromJson(
          (l$set_password as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SetPassword$set_password set_password;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$set_password = set_password;
    _resultData['set_password'] = l$set_password.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$set_password = set_password;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$set_password,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SetPassword) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$set_password = set_password;
    final lOther$set_password = other.set_password;
    if (l$set_password != lOther$set_password) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SetPassword on Mutation$SetPassword {
  CopyWith$Mutation$SetPassword<Mutation$SetPassword> get copyWith =>
      CopyWith$Mutation$SetPassword(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SetPassword<TRes> {
  factory CopyWith$Mutation$SetPassword(
    Mutation$SetPassword instance,
    TRes Function(Mutation$SetPassword) then,
  ) = _CopyWithImpl$Mutation$SetPassword;

  factory CopyWith$Mutation$SetPassword.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SetPassword;

  TRes call({
    Mutation$SetPassword$set_password? set_password,
    String? $__typename,
  });
  CopyWith$Mutation$SetPassword$set_password<TRes> get set_password;
}

class _CopyWithImpl$Mutation$SetPassword<TRes>
    implements CopyWith$Mutation$SetPassword<TRes> {
  _CopyWithImpl$Mutation$SetPassword(
    this._instance,
    this._then,
  );

  final Mutation$SetPassword _instance;

  final TRes Function(Mutation$SetPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? set_password = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SetPassword(
        set_password: set_password == _undefined || set_password == null
            ? _instance.set_password
            : (set_password as Mutation$SetPassword$set_password),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$SetPassword$set_password<TRes> get set_password {
    final local$set_password = _instance.set_password;
    return CopyWith$Mutation$SetPassword$set_password(
        local$set_password, (e) => call(set_password: e));
  }
}

class _CopyWithStubImpl$Mutation$SetPassword<TRes>
    implements CopyWith$Mutation$SetPassword<TRes> {
  _CopyWithStubImpl$Mutation$SetPassword(this._res);

  TRes _res;

  call({
    Mutation$SetPassword$set_password? set_password,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$SetPassword$set_password<TRes> get set_password =>
      CopyWith$Mutation$SetPassword$set_password.stub(_res);
}

const documentNodeMutationSetPassword = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SetPassword'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'SetPasswordInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'set_password'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ReturnTokens'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'access_token'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'refresh_token'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ReturnError'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'message'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Mutation$SetPassword$set_password {
  Mutation$SetPassword$set_password({required this.$__typename});

  factory Mutation$SetPassword$set_password.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "ReturnTokens":
        return Mutation$SetPassword$set_password$$ReturnTokens.fromJson(json);

      case "ReturnError":
        return Mutation$SetPassword$set_password$$ReturnError.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Mutation$SetPassword$set_password(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SetPassword$set_password) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SetPassword$set_password
    on Mutation$SetPassword$set_password {
  CopyWith$Mutation$SetPassword$set_password<Mutation$SetPassword$set_password>
      get copyWith => CopyWith$Mutation$SetPassword$set_password(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Mutation$SetPassword$set_password$$ReturnTokens)
        returnTokens,
    required _T Function(Mutation$SetPassword$set_password$$ReturnError)
        returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ReturnTokens":
        return returnTokens(
            this as Mutation$SetPassword$set_password$$ReturnTokens);

      case "ReturnError":
        return returnError(
            this as Mutation$SetPassword$set_password$$ReturnError);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Mutation$SetPassword$set_password$$ReturnTokens)? returnTokens,
    _T Function(Mutation$SetPassword$set_password$$ReturnError)? returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ReturnTokens":
        if (returnTokens != null) {
          return returnTokens(
              this as Mutation$SetPassword$set_password$$ReturnTokens);
        } else {
          return orElse();
        }

      case "ReturnError":
        if (returnError != null) {
          return returnError(
              this as Mutation$SetPassword$set_password$$ReturnError);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$SetPassword$set_password<TRes> {
  factory CopyWith$Mutation$SetPassword$set_password(
    Mutation$SetPassword$set_password instance,
    TRes Function(Mutation$SetPassword$set_password) then,
  ) = _CopyWithImpl$Mutation$SetPassword$set_password;

  factory CopyWith$Mutation$SetPassword$set_password.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SetPassword$set_password;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$SetPassword$set_password<TRes>
    implements CopyWith$Mutation$SetPassword$set_password<TRes> {
  _CopyWithImpl$Mutation$SetPassword$set_password(
    this._instance,
    this._then,
  );

  final Mutation$SetPassword$set_password _instance;

  final TRes Function(Mutation$SetPassword$set_password) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$SetPassword$set_password(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$SetPassword$set_password<TRes>
    implements CopyWith$Mutation$SetPassword$set_password<TRes> {
  _CopyWithStubImpl$Mutation$SetPassword$set_password(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$SetPassword$set_password$$ReturnTokens
    implements Mutation$SetPassword$set_password {
  Mutation$SetPassword$set_password$$ReturnTokens({
    this.$__typename = 'ReturnTokens',
    required this.access_token,
    required this.refresh_token,
  });

  factory Mutation$SetPassword$set_password$$ReturnTokens.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$access_token = json['access_token'];
    final l$refresh_token = json['refresh_token'];
    return Mutation$SetPassword$set_password$$ReturnTokens(
      $__typename: (l$$__typename as String),
      access_token: (l$access_token as String),
      refresh_token: (l$refresh_token as String),
    );
  }

  final String $__typename;

  final String access_token;

  final String refresh_token;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$access_token = access_token;
    _resultData['access_token'] = l$access_token;
    final l$refresh_token = refresh_token;
    _resultData['refresh_token'] = l$refresh_token;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$access_token = access_token;
    final l$refresh_token = refresh_token;
    return Object.hashAll([
      l$$__typename,
      l$access_token,
      l$refresh_token,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SetPassword$set_password$$ReturnTokens) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$access_token = access_token;
    final lOther$access_token = other.access_token;
    if (l$access_token != lOther$access_token) {
      return false;
    }
    final l$refresh_token = refresh_token;
    final lOther$refresh_token = other.refresh_token;
    if (l$refresh_token != lOther$refresh_token) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SetPassword$set_password$$ReturnTokens
    on Mutation$SetPassword$set_password$$ReturnTokens {
  CopyWith$Mutation$SetPassword$set_password$$ReturnTokens<
          Mutation$SetPassword$set_password$$ReturnTokens>
      get copyWith => CopyWith$Mutation$SetPassword$set_password$$ReturnTokens(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SetPassword$set_password$$ReturnTokens<TRes> {
  factory CopyWith$Mutation$SetPassword$set_password$$ReturnTokens(
    Mutation$SetPassword$set_password$$ReturnTokens instance,
    TRes Function(Mutation$SetPassword$set_password$$ReturnTokens) then,
  ) = _CopyWithImpl$Mutation$SetPassword$set_password$$ReturnTokens;

  factory CopyWith$Mutation$SetPassword$set_password$$ReturnTokens.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SetPassword$set_password$$ReturnTokens;

  TRes call({
    String? $__typename,
    String? access_token,
    String? refresh_token,
  });
}

class _CopyWithImpl$Mutation$SetPassword$set_password$$ReturnTokens<TRes>
    implements CopyWith$Mutation$SetPassword$set_password$$ReturnTokens<TRes> {
  _CopyWithImpl$Mutation$SetPassword$set_password$$ReturnTokens(
    this._instance,
    this._then,
  );

  final Mutation$SetPassword$set_password$$ReturnTokens _instance;

  final TRes Function(Mutation$SetPassword$set_password$$ReturnTokens) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? access_token = _undefined,
    Object? refresh_token = _undefined,
  }) =>
      _then(Mutation$SetPassword$set_password$$ReturnTokens(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        access_token: access_token == _undefined || access_token == null
            ? _instance.access_token
            : (access_token as String),
        refresh_token: refresh_token == _undefined || refresh_token == null
            ? _instance.refresh_token
            : (refresh_token as String),
      ));
}

class _CopyWithStubImpl$Mutation$SetPassword$set_password$$ReturnTokens<TRes>
    implements CopyWith$Mutation$SetPassword$set_password$$ReturnTokens<TRes> {
  _CopyWithStubImpl$Mutation$SetPassword$set_password$$ReturnTokens(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? access_token,
    String? refresh_token,
  }) =>
      _res;
}

class Mutation$SetPassword$set_password$$ReturnError
    implements Mutation$SetPassword$set_password {
  Mutation$SetPassword$set_password$$ReturnError({
    this.$__typename = 'ReturnError',
    required this.message,
    required this.name,
  });

  factory Mutation$SetPassword$set_password$$ReturnError.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$message = json['message'];
    final l$name = json['name'];
    return Mutation$SetPassword$set_password$$ReturnError(
      $__typename: (l$$__typename as String),
      message: (l$message as String),
      name: (l$name as String),
    );
  }

  final String $__typename;

  final String message;

  final String name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$message = message;
    final l$name = name;
    return Object.hashAll([
      l$$__typename,
      l$message,
      l$name,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SetPassword$set_password$$ReturnError) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SetPassword$set_password$$ReturnError
    on Mutation$SetPassword$set_password$$ReturnError {
  CopyWith$Mutation$SetPassword$set_password$$ReturnError<
          Mutation$SetPassword$set_password$$ReturnError>
      get copyWith => CopyWith$Mutation$SetPassword$set_password$$ReturnError(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SetPassword$set_password$$ReturnError<TRes> {
  factory CopyWith$Mutation$SetPassword$set_password$$ReturnError(
    Mutation$SetPassword$set_password$$ReturnError instance,
    TRes Function(Mutation$SetPassword$set_password$$ReturnError) then,
  ) = _CopyWithImpl$Mutation$SetPassword$set_password$$ReturnError;

  factory CopyWith$Mutation$SetPassword$set_password$$ReturnError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SetPassword$set_password$$ReturnError;

  TRes call({
    String? $__typename,
    String? message,
    String? name,
  });
}

class _CopyWithImpl$Mutation$SetPassword$set_password$$ReturnError<TRes>
    implements CopyWith$Mutation$SetPassword$set_password$$ReturnError<TRes> {
  _CopyWithImpl$Mutation$SetPassword$set_password$$ReturnError(
    this._instance,
    this._then,
  );

  final Mutation$SetPassword$set_password$$ReturnError _instance;

  final TRes Function(Mutation$SetPassword$set_password$$ReturnError) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? message = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Mutation$SetPassword$set_password$$ReturnError(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
      ));
}

class _CopyWithStubImpl$Mutation$SetPassword$set_password$$ReturnError<TRes>
    implements CopyWith$Mutation$SetPassword$set_password$$ReturnError<TRes> {
  _CopyWithStubImpl$Mutation$SetPassword$set_password$$ReturnError(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? message,
    String? name,
  }) =>
      _res;
}

class Variables$Mutation$SetPasswordVerified {
  factory Variables$Mutation$SetPasswordVerified(
          {required Input$SetPasswordVerifiedInput data}) =>
      Variables$Mutation$SetPasswordVerified._({
        r'data': data,
      });

  Variables$Mutation$SetPasswordVerified._(this._$data);

  factory Variables$Mutation$SetPasswordVerified.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input$SetPasswordVerifiedInput.fromJson(
        (l$data as Map<String, dynamic>));
    return Variables$Mutation$SetPasswordVerified._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SetPasswordVerifiedInput get data =>
      (_$data['data'] as Input$SetPasswordVerifiedInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$SetPasswordVerified<
          Variables$Mutation$SetPasswordVerified>
      get copyWith => CopyWith$Variables$Mutation$SetPasswordVerified(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$SetPasswordVerified) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    return Object.hashAll([l$data]);
  }
}

abstract class CopyWith$Variables$Mutation$SetPasswordVerified<TRes> {
  factory CopyWith$Variables$Mutation$SetPasswordVerified(
    Variables$Mutation$SetPasswordVerified instance,
    TRes Function(Variables$Mutation$SetPasswordVerified) then,
  ) = _CopyWithImpl$Variables$Mutation$SetPasswordVerified;

  factory CopyWith$Variables$Mutation$SetPasswordVerified.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SetPasswordVerified;

  TRes call({Input$SetPasswordVerifiedInput? data});
}

class _CopyWithImpl$Variables$Mutation$SetPasswordVerified<TRes>
    implements CopyWith$Variables$Mutation$SetPasswordVerified<TRes> {
  _CopyWithImpl$Variables$Mutation$SetPasswordVerified(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SetPasswordVerified _instance;

  final TRes Function(Variables$Mutation$SetPasswordVerified) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$SetPasswordVerified._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$SetPasswordVerifiedInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SetPasswordVerified<TRes>
    implements CopyWith$Variables$Mutation$SetPasswordVerified<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SetPasswordVerified(this._res);

  TRes _res;

  call({Input$SetPasswordVerifiedInput? data}) => _res;
}

class Mutation$SetPasswordVerified {
  Mutation$SetPasswordVerified({
    required this.set_password_verified,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SetPasswordVerified.fromJson(Map<String, dynamic> json) {
    final l$set_password_verified = json['set_password_verified'];
    final l$$__typename = json['__typename'];
    return Mutation$SetPasswordVerified(
      set_password_verified:
          Mutation$SetPasswordVerified$set_password_verified.fromJson(
              (l$set_password_verified as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SetPasswordVerified$set_password_verified
      set_password_verified;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$set_password_verified = set_password_verified;
    _resultData['set_password_verified'] = l$set_password_verified.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$set_password_verified = set_password_verified;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$set_password_verified,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SetPasswordVerified) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$set_password_verified = set_password_verified;
    final lOther$set_password_verified = other.set_password_verified;
    if (l$set_password_verified != lOther$set_password_verified) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SetPasswordVerified
    on Mutation$SetPasswordVerified {
  CopyWith$Mutation$SetPasswordVerified<Mutation$SetPasswordVerified>
      get copyWith => CopyWith$Mutation$SetPasswordVerified(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SetPasswordVerified<TRes> {
  factory CopyWith$Mutation$SetPasswordVerified(
    Mutation$SetPasswordVerified instance,
    TRes Function(Mutation$SetPasswordVerified) then,
  ) = _CopyWithImpl$Mutation$SetPasswordVerified;

  factory CopyWith$Mutation$SetPasswordVerified.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SetPasswordVerified;

  TRes call({
    Mutation$SetPasswordVerified$set_password_verified? set_password_verified,
    String? $__typename,
  });
  CopyWith$Mutation$SetPasswordVerified$set_password_verified<TRes>
      get set_password_verified;
}

class _CopyWithImpl$Mutation$SetPasswordVerified<TRes>
    implements CopyWith$Mutation$SetPasswordVerified<TRes> {
  _CopyWithImpl$Mutation$SetPasswordVerified(
    this._instance,
    this._then,
  );

  final Mutation$SetPasswordVerified _instance;

  final TRes Function(Mutation$SetPasswordVerified) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? set_password_verified = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SetPasswordVerified(
        set_password_verified:
            set_password_verified == _undefined || set_password_verified == null
                ? _instance.set_password_verified
                : (set_password_verified
                    as Mutation$SetPasswordVerified$set_password_verified),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$SetPasswordVerified$set_password_verified<TRes>
      get set_password_verified {
    final local$set_password_verified = _instance.set_password_verified;
    return CopyWith$Mutation$SetPasswordVerified$set_password_verified(
        local$set_password_verified, (e) => call(set_password_verified: e));
  }
}

class _CopyWithStubImpl$Mutation$SetPasswordVerified<TRes>
    implements CopyWith$Mutation$SetPasswordVerified<TRes> {
  _CopyWithStubImpl$Mutation$SetPasswordVerified(this._res);

  TRes _res;

  call({
    Mutation$SetPasswordVerified$set_password_verified? set_password_verified,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$SetPasswordVerified$set_password_verified<TRes>
      get set_password_verified =>
          CopyWith$Mutation$SetPasswordVerified$set_password_verified.stub(
              _res);
}

const documentNodeMutationSetPasswordVerified = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SetPasswordVerified'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'SetPasswordVerifiedInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'set_password_verified'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'Successfully'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'message'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ReturnError'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'message'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Mutation$SetPasswordVerified$set_password_verified {
  Mutation$SetPasswordVerified$set_password_verified(
      {required this.$__typename});

  factory Mutation$SetPasswordVerified$set_password_verified.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Successfully":
        return Mutation$SetPasswordVerified$set_password_verified$$Successfully
            .fromJson(json);

      case "ReturnError":
        return Mutation$SetPasswordVerified$set_password_verified$$ReturnError
            .fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Mutation$SetPasswordVerified$set_password_verified(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SetPasswordVerified$set_password_verified) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SetPasswordVerified$set_password_verified
    on Mutation$SetPasswordVerified$set_password_verified {
  CopyWith$Mutation$SetPasswordVerified$set_password_verified<
          Mutation$SetPasswordVerified$set_password_verified>
      get copyWith =>
          CopyWith$Mutation$SetPasswordVerified$set_password_verified(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Mutation$SetPasswordVerified$set_password_verified$$Successfully)
        successfully,
    required _T Function(
            Mutation$SetPasswordVerified$set_password_verified$$ReturnError)
        returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Successfully":
        return successfully(this
            as Mutation$SetPasswordVerified$set_password_verified$$Successfully);

      case "ReturnError":
        return returnError(this
            as Mutation$SetPasswordVerified$set_password_verified$$ReturnError);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
            Mutation$SetPasswordVerified$set_password_verified$$Successfully)?
        successfully,
    _T Function(
            Mutation$SetPasswordVerified$set_password_verified$$ReturnError)?
        returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Successfully":
        if (successfully != null) {
          return successfully(this
              as Mutation$SetPasswordVerified$set_password_verified$$Successfully);
        } else {
          return orElse();
        }

      case "ReturnError":
        if (returnError != null) {
          return returnError(this
              as Mutation$SetPasswordVerified$set_password_verified$$ReturnError);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$SetPasswordVerified$set_password_verified<
    TRes> {
  factory CopyWith$Mutation$SetPasswordVerified$set_password_verified(
    Mutation$SetPasswordVerified$set_password_verified instance,
    TRes Function(Mutation$SetPasswordVerified$set_password_verified) then,
  ) = _CopyWithImpl$Mutation$SetPasswordVerified$set_password_verified;

  factory CopyWith$Mutation$SetPasswordVerified$set_password_verified.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SetPasswordVerified$set_password_verified;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$SetPasswordVerified$set_password_verified<TRes>
    implements
        CopyWith$Mutation$SetPasswordVerified$set_password_verified<TRes> {
  _CopyWithImpl$Mutation$SetPasswordVerified$set_password_verified(
    this._instance,
    this._then,
  );

  final Mutation$SetPasswordVerified$set_password_verified _instance;

  final TRes Function(Mutation$SetPasswordVerified$set_password_verified) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$SetPasswordVerified$set_password_verified(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$SetPasswordVerified$set_password_verified<TRes>
    implements
        CopyWith$Mutation$SetPasswordVerified$set_password_verified<TRes> {
  _CopyWithStubImpl$Mutation$SetPasswordVerified$set_password_verified(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$SetPasswordVerified$set_password_verified$$Successfully
    implements Mutation$SetPasswordVerified$set_password_verified {
  Mutation$SetPasswordVerified$set_password_verified$$Successfully({
    this.$__typename = 'Successfully',
    required this.message,
  });

  factory Mutation$SetPasswordVerified$set_password_verified$$Successfully.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$message = json['message'];
    return Mutation$SetPasswordVerified$set_password_verified$$Successfully(
      $__typename: (l$$__typename as String),
      message: (l$message as String),
    );
  }

  final String $__typename;

  final String message;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$message = message;
    _resultData['message'] = l$message;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$message = message;
    return Object.hashAll([
      l$$__typename,
      l$message,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$SetPasswordVerified$set_password_verified$$Successfully) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SetPasswordVerified$set_password_verified$$Successfully
    on Mutation$SetPasswordVerified$set_password_verified$$Successfully {
  CopyWith$Mutation$SetPasswordVerified$set_password_verified$$Successfully<
          Mutation$SetPasswordVerified$set_password_verified$$Successfully>
      get copyWith =>
          CopyWith$Mutation$SetPasswordVerified$set_password_verified$$Successfully(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SetPasswordVerified$set_password_verified$$Successfully<
    TRes> {
  factory CopyWith$Mutation$SetPasswordVerified$set_password_verified$$Successfully(
    Mutation$SetPasswordVerified$set_password_verified$$Successfully instance,
    TRes Function(
            Mutation$SetPasswordVerified$set_password_verified$$Successfully)
        then,
  ) = _CopyWithImpl$Mutation$SetPasswordVerified$set_password_verified$$Successfully;

  factory CopyWith$Mutation$SetPasswordVerified$set_password_verified$$Successfully.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SetPasswordVerified$set_password_verified$$Successfully;

  TRes call({
    String? $__typename,
    String? message,
  });
}

class _CopyWithImpl$Mutation$SetPasswordVerified$set_password_verified$$Successfully<
        TRes>
    implements
        CopyWith$Mutation$SetPasswordVerified$set_password_verified$$Successfully<
            TRes> {
  _CopyWithImpl$Mutation$SetPasswordVerified$set_password_verified$$Successfully(
    this._instance,
    this._then,
  );

  final Mutation$SetPasswordVerified$set_password_verified$$Successfully
      _instance;

  final TRes Function(
      Mutation$SetPasswordVerified$set_password_verified$$Successfully) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? message = _undefined,
  }) =>
      _then(Mutation$SetPasswordVerified$set_password_verified$$Successfully(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
      ));
}

class _CopyWithStubImpl$Mutation$SetPasswordVerified$set_password_verified$$Successfully<
        TRes>
    implements
        CopyWith$Mutation$SetPasswordVerified$set_password_verified$$Successfully<
            TRes> {
  _CopyWithStubImpl$Mutation$SetPasswordVerified$set_password_verified$$Successfully(
      this._res);

  TRes _res;

  call({
    String? $__typename,
    String? message,
  }) =>
      _res;
}

class Mutation$SetPasswordVerified$set_password_verified$$ReturnError
    implements Mutation$SetPasswordVerified$set_password_verified {
  Mutation$SetPasswordVerified$set_password_verified$$ReturnError({
    this.$__typename = 'ReturnError',
    required this.message,
    required this.name,
  });

  factory Mutation$SetPasswordVerified$set_password_verified$$ReturnError.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$message = json['message'];
    final l$name = json['name'];
    return Mutation$SetPasswordVerified$set_password_verified$$ReturnError(
      $__typename: (l$$__typename as String),
      message: (l$message as String),
      name: (l$name as String),
    );
  }

  final String $__typename;

  final String message;

  final String name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$message = message;
    final l$name = name;
    return Object.hashAll([
      l$$__typename,
      l$message,
      l$name,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$SetPasswordVerified$set_password_verified$$ReturnError) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SetPasswordVerified$set_password_verified$$ReturnError
    on Mutation$SetPasswordVerified$set_password_verified$$ReturnError {
  CopyWith$Mutation$SetPasswordVerified$set_password_verified$$ReturnError<
          Mutation$SetPasswordVerified$set_password_verified$$ReturnError>
      get copyWith =>
          CopyWith$Mutation$SetPasswordVerified$set_password_verified$$ReturnError(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SetPasswordVerified$set_password_verified$$ReturnError<
    TRes> {
  factory CopyWith$Mutation$SetPasswordVerified$set_password_verified$$ReturnError(
    Mutation$SetPasswordVerified$set_password_verified$$ReturnError instance,
    TRes Function(
            Mutation$SetPasswordVerified$set_password_verified$$ReturnError)
        then,
  ) = _CopyWithImpl$Mutation$SetPasswordVerified$set_password_verified$$ReturnError;

  factory CopyWith$Mutation$SetPasswordVerified$set_password_verified$$ReturnError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SetPasswordVerified$set_password_verified$$ReturnError;

  TRes call({
    String? $__typename,
    String? message,
    String? name,
  });
}

class _CopyWithImpl$Mutation$SetPasswordVerified$set_password_verified$$ReturnError<
        TRes>
    implements
        CopyWith$Mutation$SetPasswordVerified$set_password_verified$$ReturnError<
            TRes> {
  _CopyWithImpl$Mutation$SetPasswordVerified$set_password_verified$$ReturnError(
    this._instance,
    this._then,
  );

  final Mutation$SetPasswordVerified$set_password_verified$$ReturnError
      _instance;

  final TRes Function(
      Mutation$SetPasswordVerified$set_password_verified$$ReturnError) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? message = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Mutation$SetPasswordVerified$set_password_verified$$ReturnError(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
      ));
}

class _CopyWithStubImpl$Mutation$SetPasswordVerified$set_password_verified$$ReturnError<
        TRes>
    implements
        CopyWith$Mutation$SetPasswordVerified$set_password_verified$$ReturnError<
            TRes> {
  _CopyWithStubImpl$Mutation$SetPasswordVerified$set_password_verified$$ReturnError(
      this._res);

  TRes _res;

  call({
    String? $__typename,
    String? message,
    String? name,
  }) =>
      _res;
}

class Variables$Mutation$UpdateProfile {
  factory Variables$Mutation$UpdateProfile(
          {required Input$ProfileUpdate profile_input}) =>
      Variables$Mutation$UpdateProfile._({
        r'profile_input': profile_input,
      });

  Variables$Mutation$UpdateProfile._(this._$data);

  factory Variables$Mutation$UpdateProfile.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$profile_input = data['profile_input'];
    result$data['profile_input'] =
        Input$ProfileUpdate.fromJson((l$profile_input as Map<String, dynamic>));
    return Variables$Mutation$UpdateProfile._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProfileUpdate get profile_input =>
      (_$data['profile_input'] as Input$ProfileUpdate);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$profile_input = profile_input;
    result$data['profile_input'] = l$profile_input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateProfile<Variables$Mutation$UpdateProfile>
      get copyWith => CopyWith$Variables$Mutation$UpdateProfile(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateProfile) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$profile_input = profile_input;
    final lOther$profile_input = other.profile_input;
    if (l$profile_input != lOther$profile_input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$profile_input = profile_input;
    return Object.hashAll([l$profile_input]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateProfile<TRes> {
  factory CopyWith$Variables$Mutation$UpdateProfile(
    Variables$Mutation$UpdateProfile instance,
    TRes Function(Variables$Mutation$UpdateProfile) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateProfile;

  factory CopyWith$Variables$Mutation$UpdateProfile.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateProfile;

  TRes call({Input$ProfileUpdate? profile_input});
}

class _CopyWithImpl$Variables$Mutation$UpdateProfile<TRes>
    implements CopyWith$Variables$Mutation$UpdateProfile<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateProfile(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateProfile _instance;

  final TRes Function(Variables$Mutation$UpdateProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? profile_input = _undefined}) =>
      _then(Variables$Mutation$UpdateProfile._({
        ..._instance._$data,
        if (profile_input != _undefined && profile_input != null)
          'profile_input': (profile_input as Input$ProfileUpdate),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateProfile<TRes>
    implements CopyWith$Variables$Mutation$UpdateProfile<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateProfile(this._res);

  TRes _res;

  call({Input$ProfileUpdate? profile_input}) => _res;
}

class Mutation$UpdateProfile {
  Mutation$UpdateProfile({
    required this.update_profile,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateProfile.fromJson(Map<String, dynamic> json) {
    final l$update_profile = json['update_profile'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateProfile(
      update_profile: Mutation$UpdateProfile$update_profile.fromJson(
          (l$update_profile as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateProfile$update_profile update_profile;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$update_profile = update_profile;
    _resultData['update_profile'] = l$update_profile.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$update_profile = update_profile;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$update_profile,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateProfile) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$update_profile = update_profile;
    final lOther$update_profile = other.update_profile;
    if (l$update_profile != lOther$update_profile) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateProfile on Mutation$UpdateProfile {
  CopyWith$Mutation$UpdateProfile<Mutation$UpdateProfile> get copyWith =>
      CopyWith$Mutation$UpdateProfile(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateProfile<TRes> {
  factory CopyWith$Mutation$UpdateProfile(
    Mutation$UpdateProfile instance,
    TRes Function(Mutation$UpdateProfile) then,
  ) = _CopyWithImpl$Mutation$UpdateProfile;

  factory CopyWith$Mutation$UpdateProfile.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateProfile;

  TRes call({
    Mutation$UpdateProfile$update_profile? update_profile,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateProfile$update_profile<TRes> get update_profile;
}

class _CopyWithImpl$Mutation$UpdateProfile<TRes>
    implements CopyWith$Mutation$UpdateProfile<TRes> {
  _CopyWithImpl$Mutation$UpdateProfile(
    this._instance,
    this._then,
  );

  final Mutation$UpdateProfile _instance;

  final TRes Function(Mutation$UpdateProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? update_profile = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateProfile(
        update_profile: update_profile == _undefined || update_profile == null
            ? _instance.update_profile
            : (update_profile as Mutation$UpdateProfile$update_profile),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateProfile$update_profile<TRes> get update_profile {
    final local$update_profile = _instance.update_profile;
    return CopyWith$Mutation$UpdateProfile$update_profile(
        local$update_profile, (e) => call(update_profile: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateProfile<TRes>
    implements CopyWith$Mutation$UpdateProfile<TRes> {
  _CopyWithStubImpl$Mutation$UpdateProfile(this._res);

  TRes _res;

  call({
    Mutation$UpdateProfile$update_profile? update_profile,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateProfile$update_profile<TRes> get update_profile =>
      CopyWith$Mutation$UpdateProfile$update_profile.stub(_res);
}

const documentNodeMutationUpdateProfile = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateProfile'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'profile_input')),
        type: NamedTypeNode(
          name: NameNode(value: 'ProfileUpdate'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'update_profile'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'profile_input'),
            value: VariableNode(name: NameNode(value: 'profile_input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'Profile'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'ProfileFragment'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ReturnError'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'message'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionProfileFragment,
  fragmentDefinitionCityFragment,
  fragmentDefinitionRegionFragment,
  fragmentDefinitionFedFragment,
  fragmentDefinitionSexFragment,
]);

class Mutation$UpdateProfile$update_profile {
  Mutation$UpdateProfile$update_profile({required this.$__typename});

  factory Mutation$UpdateProfile$update_profile.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Profile":
        return Mutation$UpdateProfile$update_profile$$Profile.fromJson(json);

      case "ReturnError":
        return Mutation$UpdateProfile$update_profile$$ReturnError.fromJson(
            json);

      default:
        final l$$__typename = json['__typename'];
        return Mutation$UpdateProfile$update_profile(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateProfile$update_profile) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateProfile$update_profile
    on Mutation$UpdateProfile$update_profile {
  CopyWith$Mutation$UpdateProfile$update_profile<
          Mutation$UpdateProfile$update_profile>
      get copyWith => CopyWith$Mutation$UpdateProfile$update_profile(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Mutation$UpdateProfile$update_profile$$Profile)
        profile,
    required _T Function(Mutation$UpdateProfile$update_profile$$ReturnError)
        returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Profile":
        return profile(this as Mutation$UpdateProfile$update_profile$$Profile);

      case "ReturnError":
        return returnError(
            this as Mutation$UpdateProfile$update_profile$$ReturnError);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Mutation$UpdateProfile$update_profile$$Profile)? profile,
    _T Function(Mutation$UpdateProfile$update_profile$$ReturnError)?
        returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Profile":
        if (profile != null) {
          return profile(
              this as Mutation$UpdateProfile$update_profile$$Profile);
        } else {
          return orElse();
        }

      case "ReturnError":
        if (returnError != null) {
          return returnError(
              this as Mutation$UpdateProfile$update_profile$$ReturnError);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$UpdateProfile$update_profile<TRes> {
  factory CopyWith$Mutation$UpdateProfile$update_profile(
    Mutation$UpdateProfile$update_profile instance,
    TRes Function(Mutation$UpdateProfile$update_profile) then,
  ) = _CopyWithImpl$Mutation$UpdateProfile$update_profile;

  factory CopyWith$Mutation$UpdateProfile$update_profile.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateProfile$update_profile;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateProfile$update_profile<TRes>
    implements CopyWith$Mutation$UpdateProfile$update_profile<TRes> {
  _CopyWithImpl$Mutation$UpdateProfile$update_profile(
    this._instance,
    this._then,
  );

  final Mutation$UpdateProfile$update_profile _instance;

  final TRes Function(Mutation$UpdateProfile$update_profile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$UpdateProfile$update_profile(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$UpdateProfile$update_profile<TRes>
    implements CopyWith$Mutation$UpdateProfile$update_profile<TRes> {
  _CopyWithStubImpl$Mutation$UpdateProfile$update_profile(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$UpdateProfile$update_profile$$Profile
    implements Fragment$ProfileFragment, Mutation$UpdateProfile$update_profile {
  Mutation$UpdateProfile$update_profile$$Profile({
    this.birthday,
    required this.change_date,
    this.city,
    this.email,
    this.first_name,
    this.fullness,
    required this.is_approval_participation,
    required this.is_approval_pdn,
    this.is_blocked,
    this.is_test_user,
    this.is_imported,
    this.last_name,
    this.locality,
    this.middle_name,
    this.phone,
    required this.profile_id,
    required this.profile_uid,
    this.region,
    required this.registration_date,
    required this.respondent_status,
    this.sex,
    this.telegram_username,
    required this.user_edit,
    this.$__typename = 'Profile',
  });

  factory Mutation$UpdateProfile$update_profile$$Profile.fromJson(
      Map<String, dynamic> json) {
    final l$birthday = json['birthday'];
    final l$change_date = json['change_date'];
    final l$city = json['city'];
    final l$email = json['email'];
    final l$first_name = json['first_name'];
    final l$fullness = json['fullness'];
    final l$is_approval_participation = json['is_approval_participation'];
    final l$is_approval_pdn = json['is_approval_pdn'];
    final l$is_blocked = json['is_blocked'];
    final l$is_test_user = json['is_test_user'];
    final l$is_imported = json['is_imported'];
    final l$last_name = json['last_name'];
    final l$locality = json['locality'];
    final l$middle_name = json['middle_name'];
    final l$phone = json['phone'];
    final l$profile_id = json['profile_id'];
    final l$profile_uid = json['profile_uid'];
    final l$region = json['region'];
    final l$registration_date = json['registration_date'];
    final l$respondent_status = json['respondent_status'];
    final l$sex = json['sex'];
    final l$telegram_username = json['telegram_username'];
    final l$user_edit = json['user_edit'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateProfile$update_profile$$Profile(
      birthday: (l$birthday as String?),
      change_date: (l$change_date as String),
      city: l$city == null
          ? null
          : Fragment$CityFragment.fromJson((l$city as Map<String, dynamic>)),
      email: (l$email as String?),
      first_name: (l$first_name as String?),
      fullness: (l$fullness as int?),
      is_approval_participation: (l$is_approval_participation as bool),
      is_approval_pdn: (l$is_approval_pdn as bool),
      is_blocked: (l$is_blocked as bool?),
      is_test_user: (l$is_test_user as bool?),
      is_imported: (l$is_imported as bool?),
      last_name: (l$last_name as String?),
      locality: (l$locality as String?),
      middle_name: (l$middle_name as String?),
      phone: (l$phone as String?),
      profile_id: (l$profile_id as int),
      profile_uid: (l$profile_uid as String),
      region: l$region == null
          ? null
          : Fragment$RegionFragment.fromJson(
              (l$region as Map<String, dynamic>)),
      registration_date: (l$registration_date as String),
      respondent_status:
          Mutation$UpdateProfile$update_profile$$Profile$respondent_status
              .fromJson((l$respondent_status as Map<String, dynamic>)),
      sex: l$sex == null
          ? null
          : Fragment$SexFragment.fromJson((l$sex as Map<String, dynamic>)),
      telegram_username: (l$telegram_username as String?),
      user_edit: (l$user_edit as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String? birthday;

  final String change_date;

  final Fragment$CityFragment? city;

  final String? email;

  final String? first_name;

  final int? fullness;

  final bool is_approval_participation;

  final bool is_approval_pdn;

  final bool? is_blocked;

  final bool? is_test_user;

  final bool? is_imported;

  final String? last_name;

  final String? locality;

  final String? middle_name;

  final String? phone;

  final int profile_id;

  final String profile_uid;

  final Fragment$RegionFragment? region;

  final String registration_date;

  final Mutation$UpdateProfile$update_profile$$Profile$respondent_status
      respondent_status;

  final Fragment$SexFragment? sex;

  final String? telegram_username;

  final String user_edit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$birthday = birthday;
    _resultData['birthday'] = l$birthday;
    final l$change_date = change_date;
    _resultData['change_date'] = l$change_date;
    final l$city = city;
    _resultData['city'] = l$city?.toJson();
    final l$email = email;
    _resultData['email'] = l$email;
    final l$first_name = first_name;
    _resultData['first_name'] = l$first_name;
    final l$fullness = fullness;
    _resultData['fullness'] = l$fullness;
    final l$is_approval_participation = is_approval_participation;
    _resultData['is_approval_participation'] = l$is_approval_participation;
    final l$is_approval_pdn = is_approval_pdn;
    _resultData['is_approval_pdn'] = l$is_approval_pdn;
    final l$is_blocked = is_blocked;
    _resultData['is_blocked'] = l$is_blocked;
    final l$is_test_user = is_test_user;
    _resultData['is_test_user'] = l$is_test_user;
    final l$is_imported = is_imported;
    _resultData['is_imported'] = l$is_imported;
    final l$last_name = last_name;
    _resultData['last_name'] = l$last_name;
    final l$locality = locality;
    _resultData['locality'] = l$locality;
    final l$middle_name = middle_name;
    _resultData['middle_name'] = l$middle_name;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$profile_id = profile_id;
    _resultData['profile_id'] = l$profile_id;
    final l$profile_uid = profile_uid;
    _resultData['profile_uid'] = l$profile_uid;
    final l$region = region;
    _resultData['region'] = l$region?.toJson();
    final l$registration_date = registration_date;
    _resultData['registration_date'] = l$registration_date;
    final l$respondent_status = respondent_status;
    _resultData['respondent_status'] = l$respondent_status.toJson();
    final l$sex = sex;
    _resultData['sex'] = l$sex?.toJson();
    final l$telegram_username = telegram_username;
    _resultData['telegram_username'] = l$telegram_username;
    final l$user_edit = user_edit;
    _resultData['user_edit'] = l$user_edit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$birthday = birthday;
    final l$change_date = change_date;
    final l$city = city;
    final l$email = email;
    final l$first_name = first_name;
    final l$fullness = fullness;
    final l$is_approval_participation = is_approval_participation;
    final l$is_approval_pdn = is_approval_pdn;
    final l$is_blocked = is_blocked;
    final l$is_test_user = is_test_user;
    final l$is_imported = is_imported;
    final l$last_name = last_name;
    final l$locality = locality;
    final l$middle_name = middle_name;
    final l$phone = phone;
    final l$profile_id = profile_id;
    final l$profile_uid = profile_uid;
    final l$region = region;
    final l$registration_date = registration_date;
    final l$respondent_status = respondent_status;
    final l$sex = sex;
    final l$telegram_username = telegram_username;
    final l$user_edit = user_edit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$birthday,
      l$change_date,
      l$city,
      l$email,
      l$first_name,
      l$fullness,
      l$is_approval_participation,
      l$is_approval_pdn,
      l$is_blocked,
      l$is_test_user,
      l$is_imported,
      l$last_name,
      l$locality,
      l$middle_name,
      l$phone,
      l$profile_id,
      l$profile_uid,
      l$region,
      l$registration_date,
      l$respondent_status,
      l$sex,
      l$telegram_username,
      l$user_edit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateProfile$update_profile$$Profile) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$birthday = birthday;
    final lOther$birthday = other.birthday;
    if (l$birthday != lOther$birthday) {
      return false;
    }
    final l$change_date = change_date;
    final lOther$change_date = other.change_date;
    if (l$change_date != lOther$change_date) {
      return false;
    }
    final l$city = city;
    final lOther$city = other.city;
    if (l$city != lOther$city) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$first_name = first_name;
    final lOther$first_name = other.first_name;
    if (l$first_name != lOther$first_name) {
      return false;
    }
    final l$fullness = fullness;
    final lOther$fullness = other.fullness;
    if (l$fullness != lOther$fullness) {
      return false;
    }
    final l$is_approval_participation = is_approval_participation;
    final lOther$is_approval_participation = other.is_approval_participation;
    if (l$is_approval_participation != lOther$is_approval_participation) {
      return false;
    }
    final l$is_approval_pdn = is_approval_pdn;
    final lOther$is_approval_pdn = other.is_approval_pdn;
    if (l$is_approval_pdn != lOther$is_approval_pdn) {
      return false;
    }
    final l$is_blocked = is_blocked;
    final lOther$is_blocked = other.is_blocked;
    if (l$is_blocked != lOther$is_blocked) {
      return false;
    }
    final l$is_test_user = is_test_user;
    final lOther$is_test_user = other.is_test_user;
    if (l$is_test_user != lOther$is_test_user) {
      return false;
    }
    final l$is_imported = is_imported;
    final lOther$is_imported = other.is_imported;
    if (l$is_imported != lOther$is_imported) {
      return false;
    }
    final l$last_name = last_name;
    final lOther$last_name = other.last_name;
    if (l$last_name != lOther$last_name) {
      return false;
    }
    final l$locality = locality;
    final lOther$locality = other.locality;
    if (l$locality != lOther$locality) {
      return false;
    }
    final l$middle_name = middle_name;
    final lOther$middle_name = other.middle_name;
    if (l$middle_name != lOther$middle_name) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$profile_id = profile_id;
    final lOther$profile_id = other.profile_id;
    if (l$profile_id != lOther$profile_id) {
      return false;
    }
    final l$profile_uid = profile_uid;
    final lOther$profile_uid = other.profile_uid;
    if (l$profile_uid != lOther$profile_uid) {
      return false;
    }
    final l$region = region;
    final lOther$region = other.region;
    if (l$region != lOther$region) {
      return false;
    }
    final l$registration_date = registration_date;
    final lOther$registration_date = other.registration_date;
    if (l$registration_date != lOther$registration_date) {
      return false;
    }
    final l$respondent_status = respondent_status;
    final lOther$respondent_status = other.respondent_status;
    if (l$respondent_status != lOther$respondent_status) {
      return false;
    }
    final l$sex = sex;
    final lOther$sex = other.sex;
    if (l$sex != lOther$sex) {
      return false;
    }
    final l$telegram_username = telegram_username;
    final lOther$telegram_username = other.telegram_username;
    if (l$telegram_username != lOther$telegram_username) {
      return false;
    }
    final l$user_edit = user_edit;
    final lOther$user_edit = other.user_edit;
    if (l$user_edit != lOther$user_edit) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateProfile$update_profile$$Profile
    on Mutation$UpdateProfile$update_profile$$Profile {
  CopyWith$Mutation$UpdateProfile$update_profile$$Profile<
          Mutation$UpdateProfile$update_profile$$Profile>
      get copyWith => CopyWith$Mutation$UpdateProfile$update_profile$$Profile(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateProfile$update_profile$$Profile<TRes> {
  factory CopyWith$Mutation$UpdateProfile$update_profile$$Profile(
    Mutation$UpdateProfile$update_profile$$Profile instance,
    TRes Function(Mutation$UpdateProfile$update_profile$$Profile) then,
  ) = _CopyWithImpl$Mutation$UpdateProfile$update_profile$$Profile;

  factory CopyWith$Mutation$UpdateProfile$update_profile$$Profile.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateProfile$update_profile$$Profile;

  TRes call({
    String? birthday,
    String? change_date,
    Fragment$CityFragment? city,
    String? email,
    String? first_name,
    int? fullness,
    bool? is_approval_participation,
    bool? is_approval_pdn,
    bool? is_blocked,
    bool? is_test_user,
    bool? is_imported,
    String? last_name,
    String? locality,
    String? middle_name,
    String? phone,
    int? profile_id,
    String? profile_uid,
    Fragment$RegionFragment? region,
    String? registration_date,
    Mutation$UpdateProfile$update_profile$$Profile$respondent_status?
        respondent_status,
    Fragment$SexFragment? sex,
    String? telegram_username,
    String? user_edit,
    String? $__typename,
  });
  CopyWith$Fragment$CityFragment<TRes> get city;
  CopyWith$Fragment$RegionFragment<TRes> get region;
  CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status<
      TRes> get respondent_status;
  CopyWith$Fragment$SexFragment<TRes> get sex;
}

class _CopyWithImpl$Mutation$UpdateProfile$update_profile$$Profile<TRes>
    implements CopyWith$Mutation$UpdateProfile$update_profile$$Profile<TRes> {
  _CopyWithImpl$Mutation$UpdateProfile$update_profile$$Profile(
    this._instance,
    this._then,
  );

  final Mutation$UpdateProfile$update_profile$$Profile _instance;

  final TRes Function(Mutation$UpdateProfile$update_profile$$Profile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? birthday = _undefined,
    Object? change_date = _undefined,
    Object? city = _undefined,
    Object? email = _undefined,
    Object? first_name = _undefined,
    Object? fullness = _undefined,
    Object? is_approval_participation = _undefined,
    Object? is_approval_pdn = _undefined,
    Object? is_blocked = _undefined,
    Object? is_test_user = _undefined,
    Object? is_imported = _undefined,
    Object? last_name = _undefined,
    Object? locality = _undefined,
    Object? middle_name = _undefined,
    Object? phone = _undefined,
    Object? profile_id = _undefined,
    Object? profile_uid = _undefined,
    Object? region = _undefined,
    Object? registration_date = _undefined,
    Object? respondent_status = _undefined,
    Object? sex = _undefined,
    Object? telegram_username = _undefined,
    Object? user_edit = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateProfile$update_profile$$Profile(
        birthday:
            birthday == _undefined ? _instance.birthday : (birthday as String?),
        change_date: change_date == _undefined || change_date == null
            ? _instance.change_date
            : (change_date as String),
        city: city == _undefined
            ? _instance.city
            : (city as Fragment$CityFragment?),
        email: email == _undefined ? _instance.email : (email as String?),
        first_name: first_name == _undefined
            ? _instance.first_name
            : (first_name as String?),
        fullness:
            fullness == _undefined ? _instance.fullness : (fullness as int?),
        is_approval_participation: is_approval_participation == _undefined ||
                is_approval_participation == null
            ? _instance.is_approval_participation
            : (is_approval_participation as bool),
        is_approval_pdn:
            is_approval_pdn == _undefined || is_approval_pdn == null
                ? _instance.is_approval_pdn
                : (is_approval_pdn as bool),
        is_blocked: is_blocked == _undefined
            ? _instance.is_blocked
            : (is_blocked as bool?),
        is_test_user: is_test_user == _undefined
            ? _instance.is_test_user
            : (is_test_user as bool?),
        is_imported: is_imported == _undefined
            ? _instance.is_imported
            : (is_imported as bool?),
        last_name: last_name == _undefined
            ? _instance.last_name
            : (last_name as String?),
        locality:
            locality == _undefined ? _instance.locality : (locality as String?),
        middle_name: middle_name == _undefined
            ? _instance.middle_name
            : (middle_name as String?),
        phone: phone == _undefined ? _instance.phone : (phone as String?),
        profile_id: profile_id == _undefined || profile_id == null
            ? _instance.profile_id
            : (profile_id as int),
        profile_uid: profile_uid == _undefined || profile_uid == null
            ? _instance.profile_uid
            : (profile_uid as String),
        region: region == _undefined
            ? _instance.region
            : (region as Fragment$RegionFragment?),
        registration_date:
            registration_date == _undefined || registration_date == null
                ? _instance.registration_date
                : (registration_date as String),
        respondent_status: respondent_status == _undefined ||
                respondent_status == null
            ? _instance.respondent_status
            : (respondent_status
                as Mutation$UpdateProfile$update_profile$$Profile$respondent_status),
        sex: sex == _undefined ? _instance.sex : (sex as Fragment$SexFragment?),
        telegram_username: telegram_username == _undefined
            ? _instance.telegram_username
            : (telegram_username as String?),
        user_edit: user_edit == _undefined || user_edit == null
            ? _instance.user_edit
            : (user_edit as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$CityFragment<TRes> get city {
    final local$city = _instance.city;
    return local$city == null
        ? CopyWith$Fragment$CityFragment.stub(_then(_instance))
        : CopyWith$Fragment$CityFragment(local$city, (e) => call(city: e));
  }

  CopyWith$Fragment$RegionFragment<TRes> get region {
    final local$region = _instance.region;
    return local$region == null
        ? CopyWith$Fragment$RegionFragment.stub(_then(_instance))
        : CopyWith$Fragment$RegionFragment(
            local$region, (e) => call(region: e));
  }

  CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status<
      TRes> get respondent_status {
    final local$respondent_status = _instance.respondent_status;
    return CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status(
        local$respondent_status, (e) => call(respondent_status: e));
  }

  CopyWith$Fragment$SexFragment<TRes> get sex {
    final local$sex = _instance.sex;
    return local$sex == null
        ? CopyWith$Fragment$SexFragment.stub(_then(_instance))
        : CopyWith$Fragment$SexFragment(local$sex, (e) => call(sex: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateProfile$update_profile$$Profile<TRes>
    implements CopyWith$Mutation$UpdateProfile$update_profile$$Profile<TRes> {
  _CopyWithStubImpl$Mutation$UpdateProfile$update_profile$$Profile(this._res);

  TRes _res;

  call({
    String? birthday,
    String? change_date,
    Fragment$CityFragment? city,
    String? email,
    String? first_name,
    int? fullness,
    bool? is_approval_participation,
    bool? is_approval_pdn,
    bool? is_blocked,
    bool? is_test_user,
    bool? is_imported,
    String? last_name,
    String? locality,
    String? middle_name,
    String? phone,
    int? profile_id,
    String? profile_uid,
    Fragment$RegionFragment? region,
    String? registration_date,
    Mutation$UpdateProfile$update_profile$$Profile$respondent_status?
        respondent_status,
    Fragment$SexFragment? sex,
    String? telegram_username,
    String? user_edit,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$CityFragment<TRes> get city =>
      CopyWith$Fragment$CityFragment.stub(_res);

  CopyWith$Fragment$RegionFragment<TRes> get region =>
      CopyWith$Fragment$RegionFragment.stub(_res);

  CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status<
          TRes>
      get respondent_status =>
          CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status
              .stub(_res);

  CopyWith$Fragment$SexFragment<TRes> get sex =>
      CopyWith$Fragment$SexFragment.stub(_res);
}

class Mutation$UpdateProfile$update_profile$$Profile$respondent_status
    implements Fragment$ProfileFragment$respondent_status {
  Mutation$UpdateProfile$update_profile$$Profile$respondent_status({
    required this.status_email,
    required this.status_profile,
    required this.status_activity,
    this.$__typename = 'Statuses',
  });

  factory Mutation$UpdateProfile$update_profile$$Profile$respondent_status.fromJson(
      Map<String, dynamic> json) {
    final l$status_email = json['status_email'];
    final l$status_profile = json['status_profile'];
    final l$status_activity = json['status_activity'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateProfile$update_profile$$Profile$respondent_status(
      status_email:
          Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email
              .fromJson((l$status_email as Map<String, dynamic>)),
      status_profile:
          Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile
              .fromJson((l$status_profile as Map<String, dynamic>)),
      status_activity:
          Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity
              .fromJson((l$status_activity as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email
      status_email;

  final Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile
      status_profile;

  final Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity
      status_activity;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$status_email = status_email;
    _resultData['status_email'] = l$status_email.toJson();
    final l$status_profile = status_profile;
    _resultData['status_profile'] = l$status_profile.toJson();
    final l$status_activity = status_activity;
    _resultData['status_activity'] = l$status_activity.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$status_email = status_email;
    final l$status_profile = status_profile;
    final l$status_activity = status_activity;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$status_email,
      l$status_profile,
      l$status_activity,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$UpdateProfile$update_profile$$Profile$respondent_status) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$status_email = status_email;
    final lOther$status_email = other.status_email;
    if (l$status_email != lOther$status_email) {
      return false;
    }
    final l$status_profile = status_profile;
    final lOther$status_profile = other.status_profile;
    if (l$status_profile != lOther$status_profile) {
      return false;
    }
    final l$status_activity = status_activity;
    final lOther$status_activity = other.status_activity;
    if (l$status_activity != lOther$status_activity) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateProfile$update_profile$$Profile$respondent_status
    on Mutation$UpdateProfile$update_profile$$Profile$respondent_status {
  CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status<
          Mutation$UpdateProfile$update_profile$$Profile$respondent_status>
      get copyWith =>
          CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status<
    TRes> {
  factory CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status(
    Mutation$UpdateProfile$update_profile$$Profile$respondent_status instance,
    TRes Function(
            Mutation$UpdateProfile$update_profile$$Profile$respondent_status)
        then,
  ) = _CopyWithImpl$Mutation$UpdateProfile$update_profile$$Profile$respondent_status;

  factory CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateProfile$update_profile$$Profile$respondent_status;

  TRes call({
    Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email?
        status_email,
    Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile?
        status_profile,
    Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity?
        status_activity,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email<
      TRes> get status_email;
  CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile<
      TRes> get status_profile;
  CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity<
      TRes> get status_activity;
}

class _CopyWithImpl$Mutation$UpdateProfile$update_profile$$Profile$respondent_status<
        TRes>
    implements
        CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status<
            TRes> {
  _CopyWithImpl$Mutation$UpdateProfile$update_profile$$Profile$respondent_status(
    this._instance,
    this._then,
  );

  final Mutation$UpdateProfile$update_profile$$Profile$respondent_status
      _instance;

  final TRes Function(
      Mutation$UpdateProfile$update_profile$$Profile$respondent_status) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status_email = _undefined,
    Object? status_profile = _undefined,
    Object? status_activity = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateProfile$update_profile$$Profile$respondent_status(
        status_email: status_email == _undefined || status_email == null
            ? _instance.status_email
            : (status_email
                as Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email),
        status_profile: status_profile == _undefined || status_profile == null
            ? _instance.status_profile
            : (status_profile
                as Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile),
        status_activity: status_activity == _undefined ||
                status_activity == null
            ? _instance.status_activity
            : (status_activity
                as Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email<
      TRes> get status_email {
    final local$status_email = _instance.status_email;
    return CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email(
        local$status_email, (e) => call(status_email: e));
  }

  CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile<
      TRes> get status_profile {
    final local$status_profile = _instance.status_profile;
    return CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile(
        local$status_profile, (e) => call(status_profile: e));
  }

  CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity<
      TRes> get status_activity {
    final local$status_activity = _instance.status_activity;
    return CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity(
        local$status_activity, (e) => call(status_activity: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateProfile$update_profile$$Profile$respondent_status<
        TRes>
    implements
        CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateProfile$update_profile$$Profile$respondent_status(
      this._res);

  TRes _res;

  call({
    Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email?
        status_email,
    Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile?
        status_profile,
    Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity?
        status_activity,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email<
          TRes>
      get status_email =>
          CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email
              .stub(_res);

  CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile<
          TRes>
      get status_profile =>
          CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile
              .stub(_res);

  CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity<
          TRes>
      get status_activity =>
          CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity
              .stub(_res);
}

class Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email
    implements Fragment$ProfileFragment$respondent_status$status_email {
  Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email({
    required this.status_code,
    required this.status_name,
    this.$__typename = 'Status',
  });

  factory Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email.fromJson(
      Map<String, dynamic> json) {
    final l$status_code = json['status_code'];
    final l$status_name = json['status_name'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email(
      status_code: (l$status_code as String),
      status_name: (l$status_name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String status_code;

  final String status_name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$status_code = status_code;
    _resultData['status_code'] = l$status_code;
    final l$status_name = status_name;
    _resultData['status_name'] = l$status_name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$status_code = status_code;
    final l$status_name = status_name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$status_code,
      l$status_name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$status_code = status_code;
    final lOther$status_code = other.status_code;
    if (l$status_code != lOther$status_code) {
      return false;
    }
    final l$status_name = status_name;
    final lOther$status_name = other.status_name;
    if (l$status_name != lOther$status_name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email
    on Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email {
  CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email<
          Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email>
      get copyWith =>
          CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email<
    TRes> {
  factory CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email(
    Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email
        instance,
    TRes Function(
            Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email)
        then,
  ) = _CopyWithImpl$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email;

  factory CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email;

  TRes call({
    String? status_code,
    String? status_name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email<
        TRes>
    implements
        CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email<
            TRes> {
  _CopyWithImpl$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email(
    this._instance,
    this._then,
  );

  final Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email
      _instance;

  final TRes Function(
          Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status_code = _undefined,
    Object? status_name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email(
        status_code: status_code == _undefined || status_code == null
            ? _instance.status_code
            : (status_code as String),
        status_name: status_name == _undefined || status_name == null
            ? _instance.status_name
            : (status_name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email<
        TRes>
    implements
        CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_email(
      this._res);

  TRes _res;

  call({
    String? status_code,
    String? status_name,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile
    implements Fragment$ProfileFragment$respondent_status$status_profile {
  Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile({
    required this.status_code,
    required this.status_name,
    this.$__typename = 'Status',
  });

  factory Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile.fromJson(
      Map<String, dynamic> json) {
    final l$status_code = json['status_code'];
    final l$status_name = json['status_name'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile(
      status_code: (l$status_code as String),
      status_name: (l$status_name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String status_code;

  final String status_name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$status_code = status_code;
    _resultData['status_code'] = l$status_code;
    final l$status_name = status_name;
    _resultData['status_name'] = l$status_name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$status_code = status_code;
    final l$status_name = status_name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$status_code,
      l$status_name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$status_code = status_code;
    final lOther$status_code = other.status_code;
    if (l$status_code != lOther$status_code) {
      return false;
    }
    final l$status_name = status_name;
    final lOther$status_name = other.status_name;
    if (l$status_name != lOther$status_name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile
    on Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile {
  CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile<
          Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile>
      get copyWith =>
          CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile<
    TRes> {
  factory CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile(
    Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile
        instance,
    TRes Function(
            Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile)
        then,
  ) = _CopyWithImpl$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile;

  factory CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile;

  TRes call({
    String? status_code,
    String? status_name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile<
        TRes>
    implements
        CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile<
            TRes> {
  _CopyWithImpl$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile(
    this._instance,
    this._then,
  );

  final Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile
      _instance;

  final TRes Function(
          Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status_code = _undefined,
    Object? status_name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile(
        status_code: status_code == _undefined || status_code == null
            ? _instance.status_code
            : (status_code as String),
        status_name: status_name == _undefined || status_name == null
            ? _instance.status_name
            : (status_name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile<
        TRes>
    implements
        CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_profile(
      this._res);

  TRes _res;

  call({
    String? status_code,
    String? status_name,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity
    implements Fragment$ProfileFragment$respondent_status$status_activity {
  Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity({
    required this.status_code,
    required this.status_name,
    this.$__typename = 'Status',
  });

  factory Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity.fromJson(
      Map<String, dynamic> json) {
    final l$status_code = json['status_code'];
    final l$status_name = json['status_name'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity(
      status_code: (l$status_code as String),
      status_name: (l$status_name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String status_code;

  final String status_name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$status_code = status_code;
    _resultData['status_code'] = l$status_code;
    final l$status_name = status_name;
    _resultData['status_name'] = l$status_name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$status_code = status_code;
    final l$status_name = status_name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$status_code,
      l$status_name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$status_code = status_code;
    final lOther$status_code = other.status_code;
    if (l$status_code != lOther$status_code) {
      return false;
    }
    final l$status_name = status_name;
    final lOther$status_name = other.status_name;
    if (l$status_name != lOther$status_name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity
    on Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity {
  CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity<
          Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity>
      get copyWith =>
          CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity<
    TRes> {
  factory CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity(
    Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity
        instance,
    TRes Function(
            Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity)
        then,
  ) = _CopyWithImpl$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity;

  factory CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity;

  TRes call({
    String? status_code,
    String? status_name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity<
        TRes>
    implements
        CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity<
            TRes> {
  _CopyWithImpl$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity(
    this._instance,
    this._then,
  );

  final Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity
      _instance;

  final TRes Function(
          Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status_code = _undefined,
    Object? status_name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity(
        status_code: status_code == _undefined || status_code == null
            ? _instance.status_code
            : (status_code as String),
        status_name: status_name == _undefined || status_name == null
            ? _instance.status_name
            : (status_name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity<
        TRes>
    implements
        CopyWith$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateProfile$update_profile$$Profile$respondent_status$status_activity(
      this._res);

  TRes _res;

  call({
    String? status_code,
    String? status_name,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$UpdateProfile$update_profile$$ReturnError
    implements Mutation$UpdateProfile$update_profile {
  Mutation$UpdateProfile$update_profile$$ReturnError({
    this.$__typename = 'ReturnError',
    required this.message,
    required this.name,
  });

  factory Mutation$UpdateProfile$update_profile$$ReturnError.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$message = json['message'];
    final l$name = json['name'];
    return Mutation$UpdateProfile$update_profile$$ReturnError(
      $__typename: (l$$__typename as String),
      message: (l$message as String),
      name: (l$name as String),
    );
  }

  final String $__typename;

  final String message;

  final String name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$message = message;
    final l$name = name;
    return Object.hashAll([
      l$$__typename,
      l$message,
      l$name,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateProfile$update_profile$$ReturnError) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateProfile$update_profile$$ReturnError
    on Mutation$UpdateProfile$update_profile$$ReturnError {
  CopyWith$Mutation$UpdateProfile$update_profile$$ReturnError<
          Mutation$UpdateProfile$update_profile$$ReturnError>
      get copyWith =>
          CopyWith$Mutation$UpdateProfile$update_profile$$ReturnError(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateProfile$update_profile$$ReturnError<
    TRes> {
  factory CopyWith$Mutation$UpdateProfile$update_profile$$ReturnError(
    Mutation$UpdateProfile$update_profile$$ReturnError instance,
    TRes Function(Mutation$UpdateProfile$update_profile$$ReturnError) then,
  ) = _CopyWithImpl$Mutation$UpdateProfile$update_profile$$ReturnError;

  factory CopyWith$Mutation$UpdateProfile$update_profile$$ReturnError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateProfile$update_profile$$ReturnError;

  TRes call({
    String? $__typename,
    String? message,
    String? name,
  });
}

class _CopyWithImpl$Mutation$UpdateProfile$update_profile$$ReturnError<TRes>
    implements
        CopyWith$Mutation$UpdateProfile$update_profile$$ReturnError<TRes> {
  _CopyWithImpl$Mutation$UpdateProfile$update_profile$$ReturnError(
    this._instance,
    this._then,
  );

  final Mutation$UpdateProfile$update_profile$$ReturnError _instance;

  final TRes Function(Mutation$UpdateProfile$update_profile$$ReturnError) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? message = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Mutation$UpdateProfile$update_profile$$ReturnError(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateProfile$update_profile$$ReturnError<TRes>
    implements
        CopyWith$Mutation$UpdateProfile$update_profile$$ReturnError<TRes> {
  _CopyWithStubImpl$Mutation$UpdateProfile$update_profile$$ReturnError(
      this._res);

  TRes _res;

  call({
    String? $__typename,
    String? message,
    String? name,
  }) =>
      _res;
}

class Variables$Mutation$Auth {
  factory Variables$Mutation$Auth({required Input$VerifyCodeInput data}) =>
      Variables$Mutation$Auth._({
        r'data': data,
      });

  Variables$Mutation$Auth._(this._$data);

  factory Variables$Mutation$Auth.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$VerifyCodeInput.fromJson((l$data as Map<String, dynamic>));
    return Variables$Mutation$Auth._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$VerifyCodeInput get data => (_$data['data'] as Input$VerifyCodeInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$Auth<Variables$Mutation$Auth> get copyWith =>
      CopyWith$Variables$Mutation$Auth(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$Auth) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    return Object.hashAll([l$data]);
  }
}

abstract class CopyWith$Variables$Mutation$Auth<TRes> {
  factory CopyWith$Variables$Mutation$Auth(
    Variables$Mutation$Auth instance,
    TRes Function(Variables$Mutation$Auth) then,
  ) = _CopyWithImpl$Variables$Mutation$Auth;

  factory CopyWith$Variables$Mutation$Auth.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$Auth;

  TRes call({Input$VerifyCodeInput? data});
}

class _CopyWithImpl$Variables$Mutation$Auth<TRes>
    implements CopyWith$Variables$Mutation$Auth<TRes> {
  _CopyWithImpl$Variables$Mutation$Auth(
    this._instance,
    this._then,
  );

  final Variables$Mutation$Auth _instance;

  final TRes Function(Variables$Mutation$Auth) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) => _then(Variables$Mutation$Auth._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$VerifyCodeInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$Auth<TRes>
    implements CopyWith$Variables$Mutation$Auth<TRes> {
  _CopyWithStubImpl$Variables$Mutation$Auth(this._res);

  TRes _res;

  call({Input$VerifyCodeInput? data}) => _res;
}

class Mutation$Auth {
  Mutation$Auth({
    required this.auth,
    this.$__typename = 'Mutation',
  });

  factory Mutation$Auth.fromJson(Map<String, dynamic> json) {
    final l$auth = json['auth'];
    final l$$__typename = json['__typename'];
    return Mutation$Auth(
      auth: Mutation$Auth$auth.fromJson((l$auth as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Auth$auth auth;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$auth = auth;
    _resultData['auth'] = l$auth.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$auth = auth;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$auth,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Auth) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$auth = auth;
    final lOther$auth = other.auth;
    if (l$auth != lOther$auth) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$Auth on Mutation$Auth {
  CopyWith$Mutation$Auth<Mutation$Auth> get copyWith => CopyWith$Mutation$Auth(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Auth<TRes> {
  factory CopyWith$Mutation$Auth(
    Mutation$Auth instance,
    TRes Function(Mutation$Auth) then,
  ) = _CopyWithImpl$Mutation$Auth;

  factory CopyWith$Mutation$Auth.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Auth;

  TRes call({
    Mutation$Auth$auth? auth,
    String? $__typename,
  });
  CopyWith$Mutation$Auth$auth<TRes> get auth;
}

class _CopyWithImpl$Mutation$Auth<TRes>
    implements CopyWith$Mutation$Auth<TRes> {
  _CopyWithImpl$Mutation$Auth(
    this._instance,
    this._then,
  );

  final Mutation$Auth _instance;

  final TRes Function(Mutation$Auth) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? auth = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Auth(
        auth: auth == _undefined || auth == null
            ? _instance.auth
            : (auth as Mutation$Auth$auth),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$Auth$auth<TRes> get auth {
    final local$auth = _instance.auth;
    return CopyWith$Mutation$Auth$auth(local$auth, (e) => call(auth: e));
  }
}

class _CopyWithStubImpl$Mutation$Auth<TRes>
    implements CopyWith$Mutation$Auth<TRes> {
  _CopyWithStubImpl$Mutation$Auth(this._res);

  TRes _res;

  call({
    Mutation$Auth$auth? auth,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$Auth$auth<TRes> get auth =>
      CopyWith$Mutation$Auth$auth.stub(_res);
}

const documentNodeMutationAuth = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Auth'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'VerifyCodeInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'auth'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ReturnTokens'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'access_token'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'refresh_token'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ReturnError'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'message'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Mutation$Auth$auth {
  Mutation$Auth$auth({required this.$__typename});

  factory Mutation$Auth$auth.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "ReturnTokens":
        return Mutation$Auth$auth$$ReturnTokens.fromJson(json);

      case "ReturnError":
        return Mutation$Auth$auth$$ReturnError.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Mutation$Auth$auth($__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Auth$auth) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$Auth$auth on Mutation$Auth$auth {
  CopyWith$Mutation$Auth$auth<Mutation$Auth$auth> get copyWith =>
      CopyWith$Mutation$Auth$auth(
        this,
        (i) => i,
      );
  _T when<_T>({
    required _T Function(Mutation$Auth$auth$$ReturnTokens) returnTokens,
    required _T Function(Mutation$Auth$auth$$ReturnError) returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ReturnTokens":
        return returnTokens(this as Mutation$Auth$auth$$ReturnTokens);

      case "ReturnError":
        return returnError(this as Mutation$Auth$auth$$ReturnError);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Mutation$Auth$auth$$ReturnTokens)? returnTokens,
    _T Function(Mutation$Auth$auth$$ReturnError)? returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ReturnTokens":
        if (returnTokens != null) {
          return returnTokens(this as Mutation$Auth$auth$$ReturnTokens);
        } else {
          return orElse();
        }

      case "ReturnError":
        if (returnError != null) {
          return returnError(this as Mutation$Auth$auth$$ReturnError);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$Auth$auth<TRes> {
  factory CopyWith$Mutation$Auth$auth(
    Mutation$Auth$auth instance,
    TRes Function(Mutation$Auth$auth) then,
  ) = _CopyWithImpl$Mutation$Auth$auth;

  factory CopyWith$Mutation$Auth$auth.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Auth$auth;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$Auth$auth<TRes>
    implements CopyWith$Mutation$Auth$auth<TRes> {
  _CopyWithImpl$Mutation$Auth$auth(
    this._instance,
    this._then,
  );

  final Mutation$Auth$auth _instance;

  final TRes Function(Mutation$Auth$auth) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(Mutation$Auth$auth(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$Auth$auth<TRes>
    implements CopyWith$Mutation$Auth$auth<TRes> {
  _CopyWithStubImpl$Mutation$Auth$auth(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$Auth$auth$$ReturnTokens implements Mutation$Auth$auth {
  Mutation$Auth$auth$$ReturnTokens({
    this.$__typename = 'ReturnTokens',
    required this.access_token,
    required this.refresh_token,
  });

  factory Mutation$Auth$auth$$ReturnTokens.fromJson(Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$access_token = json['access_token'];
    final l$refresh_token = json['refresh_token'];
    return Mutation$Auth$auth$$ReturnTokens(
      $__typename: (l$$__typename as String),
      access_token: (l$access_token as String),
      refresh_token: (l$refresh_token as String),
    );
  }

  final String $__typename;

  final String access_token;

  final String refresh_token;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$access_token = access_token;
    _resultData['access_token'] = l$access_token;
    final l$refresh_token = refresh_token;
    _resultData['refresh_token'] = l$refresh_token;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$access_token = access_token;
    final l$refresh_token = refresh_token;
    return Object.hashAll([
      l$$__typename,
      l$access_token,
      l$refresh_token,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Auth$auth$$ReturnTokens) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$access_token = access_token;
    final lOther$access_token = other.access_token;
    if (l$access_token != lOther$access_token) {
      return false;
    }
    final l$refresh_token = refresh_token;
    final lOther$refresh_token = other.refresh_token;
    if (l$refresh_token != lOther$refresh_token) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$Auth$auth$$ReturnTokens
    on Mutation$Auth$auth$$ReturnTokens {
  CopyWith$Mutation$Auth$auth$$ReturnTokens<Mutation$Auth$auth$$ReturnTokens>
      get copyWith => CopyWith$Mutation$Auth$auth$$ReturnTokens(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Auth$auth$$ReturnTokens<TRes> {
  factory CopyWith$Mutation$Auth$auth$$ReturnTokens(
    Mutation$Auth$auth$$ReturnTokens instance,
    TRes Function(Mutation$Auth$auth$$ReturnTokens) then,
  ) = _CopyWithImpl$Mutation$Auth$auth$$ReturnTokens;

  factory CopyWith$Mutation$Auth$auth$$ReturnTokens.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Auth$auth$$ReturnTokens;

  TRes call({
    String? $__typename,
    String? access_token,
    String? refresh_token,
  });
}

class _CopyWithImpl$Mutation$Auth$auth$$ReturnTokens<TRes>
    implements CopyWith$Mutation$Auth$auth$$ReturnTokens<TRes> {
  _CopyWithImpl$Mutation$Auth$auth$$ReturnTokens(
    this._instance,
    this._then,
  );

  final Mutation$Auth$auth$$ReturnTokens _instance;

  final TRes Function(Mutation$Auth$auth$$ReturnTokens) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? access_token = _undefined,
    Object? refresh_token = _undefined,
  }) =>
      _then(Mutation$Auth$auth$$ReturnTokens(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        access_token: access_token == _undefined || access_token == null
            ? _instance.access_token
            : (access_token as String),
        refresh_token: refresh_token == _undefined || refresh_token == null
            ? _instance.refresh_token
            : (refresh_token as String),
      ));
}

class _CopyWithStubImpl$Mutation$Auth$auth$$ReturnTokens<TRes>
    implements CopyWith$Mutation$Auth$auth$$ReturnTokens<TRes> {
  _CopyWithStubImpl$Mutation$Auth$auth$$ReturnTokens(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? access_token,
    String? refresh_token,
  }) =>
      _res;
}

class Mutation$Auth$auth$$ReturnError implements Mutation$Auth$auth {
  Mutation$Auth$auth$$ReturnError({
    this.$__typename = 'ReturnError',
    required this.message,
    required this.name,
  });

  factory Mutation$Auth$auth$$ReturnError.fromJson(Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$message = json['message'];
    final l$name = json['name'];
    return Mutation$Auth$auth$$ReturnError(
      $__typename: (l$$__typename as String),
      message: (l$message as String),
      name: (l$name as String),
    );
  }

  final String $__typename;

  final String message;

  final String name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$message = message;
    final l$name = name;
    return Object.hashAll([
      l$$__typename,
      l$message,
      l$name,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Auth$auth$$ReturnError) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$Auth$auth$$ReturnError
    on Mutation$Auth$auth$$ReturnError {
  CopyWith$Mutation$Auth$auth$$ReturnError<Mutation$Auth$auth$$ReturnError>
      get copyWith => CopyWith$Mutation$Auth$auth$$ReturnError(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Auth$auth$$ReturnError<TRes> {
  factory CopyWith$Mutation$Auth$auth$$ReturnError(
    Mutation$Auth$auth$$ReturnError instance,
    TRes Function(Mutation$Auth$auth$$ReturnError) then,
  ) = _CopyWithImpl$Mutation$Auth$auth$$ReturnError;

  factory CopyWith$Mutation$Auth$auth$$ReturnError.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Auth$auth$$ReturnError;

  TRes call({
    String? $__typename,
    String? message,
    String? name,
  });
}

class _CopyWithImpl$Mutation$Auth$auth$$ReturnError<TRes>
    implements CopyWith$Mutation$Auth$auth$$ReturnError<TRes> {
  _CopyWithImpl$Mutation$Auth$auth$$ReturnError(
    this._instance,
    this._then,
  );

  final Mutation$Auth$auth$$ReturnError _instance;

  final TRes Function(Mutation$Auth$auth$$ReturnError) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? message = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Mutation$Auth$auth$$ReturnError(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
      ));
}

class _CopyWithStubImpl$Mutation$Auth$auth$$ReturnError<TRes>
    implements CopyWith$Mutation$Auth$auth$$ReturnError<TRes> {
  _CopyWithStubImpl$Mutation$Auth$auth$$ReturnError(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? message,
    String? name,
  }) =>
      _res;
}

class Query$Dicts {
  Query$Dicts({
    required this.get_dict_sexes,
    required this.get_dict_regions,
    required this.get_dict_feds,
    required this.get_dict_cities,
    this.$__typename = 'Query',
  });

  factory Query$Dicts.fromJson(Map<String, dynamic> json) {
    final l$get_dict_sexes = json['get_dict_sexes'];
    final l$get_dict_regions = json['get_dict_regions'];
    final l$get_dict_feds = json['get_dict_feds'];
    final l$get_dict_cities = json['get_dict_cities'];
    final l$$__typename = json['__typename'];
    return Query$Dicts(
      get_dict_sexes: Query$Dicts$get_dict_sexes.fromJson(
          (l$get_dict_sexes as Map<String, dynamic>)),
      get_dict_regions: Query$Dicts$get_dict_regions.fromJson(
          (l$get_dict_regions as Map<String, dynamic>)),
      get_dict_feds: Query$Dicts$get_dict_feds.fromJson(
          (l$get_dict_feds as Map<String, dynamic>)),
      get_dict_cities: Query$Dicts$get_dict_cities.fromJson(
          (l$get_dict_cities as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Dicts$get_dict_sexes get_dict_sexes;

  final Query$Dicts$get_dict_regions get_dict_regions;

  final Query$Dicts$get_dict_feds get_dict_feds;

  final Query$Dicts$get_dict_cities get_dict_cities;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$get_dict_sexes = get_dict_sexes;
    _resultData['get_dict_sexes'] = l$get_dict_sexes.toJson();
    final l$get_dict_regions = get_dict_regions;
    _resultData['get_dict_regions'] = l$get_dict_regions.toJson();
    final l$get_dict_feds = get_dict_feds;
    _resultData['get_dict_feds'] = l$get_dict_feds.toJson();
    final l$get_dict_cities = get_dict_cities;
    _resultData['get_dict_cities'] = l$get_dict_cities.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$get_dict_sexes = get_dict_sexes;
    final l$get_dict_regions = get_dict_regions;
    final l$get_dict_feds = get_dict_feds;
    final l$get_dict_cities = get_dict_cities;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$get_dict_sexes,
      l$get_dict_regions,
      l$get_dict_feds,
      l$get_dict_cities,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Dicts) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$get_dict_sexes = get_dict_sexes;
    final lOther$get_dict_sexes = other.get_dict_sexes;
    if (l$get_dict_sexes != lOther$get_dict_sexes) {
      return false;
    }
    final l$get_dict_regions = get_dict_regions;
    final lOther$get_dict_regions = other.get_dict_regions;
    if (l$get_dict_regions != lOther$get_dict_regions) {
      return false;
    }
    final l$get_dict_feds = get_dict_feds;
    final lOther$get_dict_feds = other.get_dict_feds;
    if (l$get_dict_feds != lOther$get_dict_feds) {
      return false;
    }
    final l$get_dict_cities = get_dict_cities;
    final lOther$get_dict_cities = other.get_dict_cities;
    if (l$get_dict_cities != lOther$get_dict_cities) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Dicts on Query$Dicts {
  CopyWith$Query$Dicts<Query$Dicts> get copyWith => CopyWith$Query$Dicts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Dicts<TRes> {
  factory CopyWith$Query$Dicts(
    Query$Dicts instance,
    TRes Function(Query$Dicts) then,
  ) = _CopyWithImpl$Query$Dicts;

  factory CopyWith$Query$Dicts.stub(TRes res) = _CopyWithStubImpl$Query$Dicts;

  TRes call({
    Query$Dicts$get_dict_sexes? get_dict_sexes,
    Query$Dicts$get_dict_regions? get_dict_regions,
    Query$Dicts$get_dict_feds? get_dict_feds,
    Query$Dicts$get_dict_cities? get_dict_cities,
    String? $__typename,
  });
  CopyWith$Query$Dicts$get_dict_sexes<TRes> get get_dict_sexes;
  CopyWith$Query$Dicts$get_dict_regions<TRes> get get_dict_regions;
  CopyWith$Query$Dicts$get_dict_feds<TRes> get get_dict_feds;
  CopyWith$Query$Dicts$get_dict_cities<TRes> get get_dict_cities;
}

class _CopyWithImpl$Query$Dicts<TRes> implements CopyWith$Query$Dicts<TRes> {
  _CopyWithImpl$Query$Dicts(
    this._instance,
    this._then,
  );

  final Query$Dicts _instance;

  final TRes Function(Query$Dicts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? get_dict_sexes = _undefined,
    Object? get_dict_regions = _undefined,
    Object? get_dict_feds = _undefined,
    Object? get_dict_cities = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Dicts(
        get_dict_sexes: get_dict_sexes == _undefined || get_dict_sexes == null
            ? _instance.get_dict_sexes
            : (get_dict_sexes as Query$Dicts$get_dict_sexes),
        get_dict_regions:
            get_dict_regions == _undefined || get_dict_regions == null
                ? _instance.get_dict_regions
                : (get_dict_regions as Query$Dicts$get_dict_regions),
        get_dict_feds: get_dict_feds == _undefined || get_dict_feds == null
            ? _instance.get_dict_feds
            : (get_dict_feds as Query$Dicts$get_dict_feds),
        get_dict_cities:
            get_dict_cities == _undefined || get_dict_cities == null
                ? _instance.get_dict_cities
                : (get_dict_cities as Query$Dicts$get_dict_cities),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Dicts$get_dict_sexes<TRes> get get_dict_sexes {
    final local$get_dict_sexes = _instance.get_dict_sexes;
    return CopyWith$Query$Dicts$get_dict_sexes(
        local$get_dict_sexes, (e) => call(get_dict_sexes: e));
  }

  CopyWith$Query$Dicts$get_dict_regions<TRes> get get_dict_regions {
    final local$get_dict_regions = _instance.get_dict_regions;
    return CopyWith$Query$Dicts$get_dict_regions(
        local$get_dict_regions, (e) => call(get_dict_regions: e));
  }

  CopyWith$Query$Dicts$get_dict_feds<TRes> get get_dict_feds {
    final local$get_dict_feds = _instance.get_dict_feds;
    return CopyWith$Query$Dicts$get_dict_feds(
        local$get_dict_feds, (e) => call(get_dict_feds: e));
  }

  CopyWith$Query$Dicts$get_dict_cities<TRes> get get_dict_cities {
    final local$get_dict_cities = _instance.get_dict_cities;
    return CopyWith$Query$Dicts$get_dict_cities(
        local$get_dict_cities, (e) => call(get_dict_cities: e));
  }
}

class _CopyWithStubImpl$Query$Dicts<TRes>
    implements CopyWith$Query$Dicts<TRes> {
  _CopyWithStubImpl$Query$Dicts(this._res);

  TRes _res;

  call({
    Query$Dicts$get_dict_sexes? get_dict_sexes,
    Query$Dicts$get_dict_regions? get_dict_regions,
    Query$Dicts$get_dict_feds? get_dict_feds,
    Query$Dicts$get_dict_cities? get_dict_cities,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Dicts$get_dict_sexes<TRes> get get_dict_sexes =>
      CopyWith$Query$Dicts$get_dict_sexes.stub(_res);

  CopyWith$Query$Dicts$get_dict_regions<TRes> get get_dict_regions =>
      CopyWith$Query$Dicts$get_dict_regions.stub(_res);

  CopyWith$Query$Dicts$get_dict_feds<TRes> get get_dict_feds =>
      CopyWith$Query$Dicts$get_dict_feds.stub(_res);

  CopyWith$Query$Dicts$get_dict_cities<TRes> get get_dict_cities =>
      CopyWith$Query$Dicts$get_dict_cities.stub(_res);
}

const documentNodeQueryDicts = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Dicts'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'get_dict_sexes'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'DictSexTypeList'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'dict_sex_type_list'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'SexFragment'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ReturnError'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'message'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'get_dict_regions'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'DictRegionTypeList'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'dict_region_type_list'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'RegionFragment'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ReturnError'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'message'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'get_dict_feds'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'DictFedTypeList'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'dict_fed_type_list'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'FedFragment'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ReturnError'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'message'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'get_dict_cities'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'DictCityTypeList'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'dict_city_type_list'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'CityFragment'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ReturnError'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'message'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionSexFragment,
  fragmentDefinitionRegionFragment,
  fragmentDefinitionFedFragment,
  fragmentDefinitionCityFragment,
]);

class Query$Dicts$get_dict_sexes {
  Query$Dicts$get_dict_sexes({required this.$__typename});

  factory Query$Dicts$get_dict_sexes.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "DictSexTypeList":
        return Query$Dicts$get_dict_sexes$$DictSexTypeList.fromJson(json);

      case "ReturnError":
        return Query$Dicts$get_dict_sexes$$ReturnError.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$Dicts$get_dict_sexes(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Dicts$get_dict_sexes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Dicts$get_dict_sexes
    on Query$Dicts$get_dict_sexes {
  CopyWith$Query$Dicts$get_dict_sexes<Query$Dicts$get_dict_sexes>
      get copyWith => CopyWith$Query$Dicts$get_dict_sexes(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Query$Dicts$get_dict_sexes$$DictSexTypeList)
        dictSexTypeList,
    required _T Function(Query$Dicts$get_dict_sexes$$ReturnError) returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "DictSexTypeList":
        return dictSexTypeList(
            this as Query$Dicts$get_dict_sexes$$DictSexTypeList);

      case "ReturnError":
        return returnError(this as Query$Dicts$get_dict_sexes$$ReturnError);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$Dicts$get_dict_sexes$$DictSexTypeList)? dictSexTypeList,
    _T Function(Query$Dicts$get_dict_sexes$$ReturnError)? returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "DictSexTypeList":
        if (dictSexTypeList != null) {
          return dictSexTypeList(
              this as Query$Dicts$get_dict_sexes$$DictSexTypeList);
        } else {
          return orElse();
        }

      case "ReturnError":
        if (returnError != null) {
          return returnError(this as Query$Dicts$get_dict_sexes$$ReturnError);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$Dicts$get_dict_sexes<TRes> {
  factory CopyWith$Query$Dicts$get_dict_sexes(
    Query$Dicts$get_dict_sexes instance,
    TRes Function(Query$Dicts$get_dict_sexes) then,
  ) = _CopyWithImpl$Query$Dicts$get_dict_sexes;

  factory CopyWith$Query$Dicts$get_dict_sexes.stub(TRes res) =
      _CopyWithStubImpl$Query$Dicts$get_dict_sexes;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$Dicts$get_dict_sexes<TRes>
    implements CopyWith$Query$Dicts$get_dict_sexes<TRes> {
  _CopyWithImpl$Query$Dicts$get_dict_sexes(
    this._instance,
    this._then,
  );

  final Query$Dicts$get_dict_sexes _instance;

  final TRes Function(Query$Dicts$get_dict_sexes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
      Query$Dicts$get_dict_sexes(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$Dicts$get_dict_sexes<TRes>
    implements CopyWith$Query$Dicts$get_dict_sexes<TRes> {
  _CopyWithStubImpl$Query$Dicts$get_dict_sexes(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$Dicts$get_dict_sexes$$DictSexTypeList
    implements Query$Dicts$get_dict_sexes {
  Query$Dicts$get_dict_sexes$$DictSexTypeList({
    this.$__typename = 'DictSexTypeList',
    required this.dict_sex_type_list,
  });

  factory Query$Dicts$get_dict_sexes$$DictSexTypeList.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$dict_sex_type_list = json['dict_sex_type_list'];
    return Query$Dicts$get_dict_sexes$$DictSexTypeList(
      $__typename: (l$$__typename as String),
      dict_sex_type_list: (l$dict_sex_type_list as List<dynamic>)
          .map(
              (e) => Fragment$SexFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final String $__typename;

  final List<Fragment$SexFragment> dict_sex_type_list;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$dict_sex_type_list = dict_sex_type_list;
    _resultData['dict_sex_type_list'] =
        l$dict_sex_type_list.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$dict_sex_type_list = dict_sex_type_list;
    return Object.hashAll([
      l$$__typename,
      Object.hashAll(l$dict_sex_type_list.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Dicts$get_dict_sexes$$DictSexTypeList) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$dict_sex_type_list = dict_sex_type_list;
    final lOther$dict_sex_type_list = other.dict_sex_type_list;
    if (l$dict_sex_type_list.length != lOther$dict_sex_type_list.length) {
      return false;
    }
    for (int i = 0; i < l$dict_sex_type_list.length; i++) {
      final l$dict_sex_type_list$entry = l$dict_sex_type_list[i];
      final lOther$dict_sex_type_list$entry = lOther$dict_sex_type_list[i];
      if (l$dict_sex_type_list$entry != lOther$dict_sex_type_list$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Query$Dicts$get_dict_sexes$$DictSexTypeList
    on Query$Dicts$get_dict_sexes$$DictSexTypeList {
  CopyWith$Query$Dicts$get_dict_sexes$$DictSexTypeList<
          Query$Dicts$get_dict_sexes$$DictSexTypeList>
      get copyWith => CopyWith$Query$Dicts$get_dict_sexes$$DictSexTypeList(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Dicts$get_dict_sexes$$DictSexTypeList<TRes> {
  factory CopyWith$Query$Dicts$get_dict_sexes$$DictSexTypeList(
    Query$Dicts$get_dict_sexes$$DictSexTypeList instance,
    TRes Function(Query$Dicts$get_dict_sexes$$DictSexTypeList) then,
  ) = _CopyWithImpl$Query$Dicts$get_dict_sexes$$DictSexTypeList;

  factory CopyWith$Query$Dicts$get_dict_sexes$$DictSexTypeList.stub(TRes res) =
      _CopyWithStubImpl$Query$Dicts$get_dict_sexes$$DictSexTypeList;

  TRes call({
    String? $__typename,
    List<Fragment$SexFragment>? dict_sex_type_list,
  });
  TRes dict_sex_type_list(
      Iterable<Fragment$SexFragment> Function(
              Iterable<CopyWith$Fragment$SexFragment<Fragment$SexFragment>>)
          _fn);
}

class _CopyWithImpl$Query$Dicts$get_dict_sexes$$DictSexTypeList<TRes>
    implements CopyWith$Query$Dicts$get_dict_sexes$$DictSexTypeList<TRes> {
  _CopyWithImpl$Query$Dicts$get_dict_sexes$$DictSexTypeList(
    this._instance,
    this._then,
  );

  final Query$Dicts$get_dict_sexes$$DictSexTypeList _instance;

  final TRes Function(Query$Dicts$get_dict_sexes$$DictSexTypeList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? dict_sex_type_list = _undefined,
  }) =>
      _then(Query$Dicts$get_dict_sexes$$DictSexTypeList(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        dict_sex_type_list:
            dict_sex_type_list == _undefined || dict_sex_type_list == null
                ? _instance.dict_sex_type_list
                : (dict_sex_type_list as List<Fragment$SexFragment>),
      ));

  TRes dict_sex_type_list(
          Iterable<Fragment$SexFragment> Function(
                  Iterable<CopyWith$Fragment$SexFragment<Fragment$SexFragment>>)
              _fn) =>
      call(
          dict_sex_type_list: _fn(_instance.dict_sex_type_list
              .map((e) => CopyWith$Fragment$SexFragment(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Dicts$get_dict_sexes$$DictSexTypeList<TRes>
    implements CopyWith$Query$Dicts$get_dict_sexes$$DictSexTypeList<TRes> {
  _CopyWithStubImpl$Query$Dicts$get_dict_sexes$$DictSexTypeList(this._res);

  TRes _res;

  call({
    String? $__typename,
    List<Fragment$SexFragment>? dict_sex_type_list,
  }) =>
      _res;

  dict_sex_type_list(_fn) => _res;
}

class Query$Dicts$get_dict_sexes$$ReturnError
    implements Query$Dicts$get_dict_sexes {
  Query$Dicts$get_dict_sexes$$ReturnError({
    this.$__typename = 'ReturnError',
    required this.message,
    required this.name,
  });

  factory Query$Dicts$get_dict_sexes$$ReturnError.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$message = json['message'];
    final l$name = json['name'];
    return Query$Dicts$get_dict_sexes$$ReturnError(
      $__typename: (l$$__typename as String),
      message: (l$message as String),
      name: (l$name as String),
    );
  }

  final String $__typename;

  final String message;

  final String name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$message = message;
    final l$name = name;
    return Object.hashAll([
      l$$__typename,
      l$message,
      l$name,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Dicts$get_dict_sexes$$ReturnError) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Dicts$get_dict_sexes$$ReturnError
    on Query$Dicts$get_dict_sexes$$ReturnError {
  CopyWith$Query$Dicts$get_dict_sexes$$ReturnError<
          Query$Dicts$get_dict_sexes$$ReturnError>
      get copyWith => CopyWith$Query$Dicts$get_dict_sexes$$ReturnError(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Dicts$get_dict_sexes$$ReturnError<TRes> {
  factory CopyWith$Query$Dicts$get_dict_sexes$$ReturnError(
    Query$Dicts$get_dict_sexes$$ReturnError instance,
    TRes Function(Query$Dicts$get_dict_sexes$$ReturnError) then,
  ) = _CopyWithImpl$Query$Dicts$get_dict_sexes$$ReturnError;

  factory CopyWith$Query$Dicts$get_dict_sexes$$ReturnError.stub(TRes res) =
      _CopyWithStubImpl$Query$Dicts$get_dict_sexes$$ReturnError;

  TRes call({
    String? $__typename,
    String? message,
    String? name,
  });
}

class _CopyWithImpl$Query$Dicts$get_dict_sexes$$ReturnError<TRes>
    implements CopyWith$Query$Dicts$get_dict_sexes$$ReturnError<TRes> {
  _CopyWithImpl$Query$Dicts$get_dict_sexes$$ReturnError(
    this._instance,
    this._then,
  );

  final Query$Dicts$get_dict_sexes$$ReturnError _instance;

  final TRes Function(Query$Dicts$get_dict_sexes$$ReturnError) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? message = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Query$Dicts$get_dict_sexes$$ReturnError(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
      ));
}

class _CopyWithStubImpl$Query$Dicts$get_dict_sexes$$ReturnError<TRes>
    implements CopyWith$Query$Dicts$get_dict_sexes$$ReturnError<TRes> {
  _CopyWithStubImpl$Query$Dicts$get_dict_sexes$$ReturnError(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? message,
    String? name,
  }) =>
      _res;
}

class Query$Dicts$get_dict_regions {
  Query$Dicts$get_dict_regions({required this.$__typename});

  factory Query$Dicts$get_dict_regions.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "DictRegionTypeList":
        return Query$Dicts$get_dict_regions$$DictRegionTypeList.fromJson(json);

      case "ReturnError":
        return Query$Dicts$get_dict_regions$$ReturnError.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$Dicts$get_dict_regions(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Dicts$get_dict_regions) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Dicts$get_dict_regions
    on Query$Dicts$get_dict_regions {
  CopyWith$Query$Dicts$get_dict_regions<Query$Dicts$get_dict_regions>
      get copyWith => CopyWith$Query$Dicts$get_dict_regions(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Query$Dicts$get_dict_regions$$DictRegionTypeList)
        dictRegionTypeList,
    required _T Function(Query$Dicts$get_dict_regions$$ReturnError) returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "DictRegionTypeList":
        return dictRegionTypeList(
            this as Query$Dicts$get_dict_regions$$DictRegionTypeList);

      case "ReturnError":
        return returnError(this as Query$Dicts$get_dict_regions$$ReturnError);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$Dicts$get_dict_regions$$DictRegionTypeList)?
        dictRegionTypeList,
    _T Function(Query$Dicts$get_dict_regions$$ReturnError)? returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "DictRegionTypeList":
        if (dictRegionTypeList != null) {
          return dictRegionTypeList(
              this as Query$Dicts$get_dict_regions$$DictRegionTypeList);
        } else {
          return orElse();
        }

      case "ReturnError":
        if (returnError != null) {
          return returnError(this as Query$Dicts$get_dict_regions$$ReturnError);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$Dicts$get_dict_regions<TRes> {
  factory CopyWith$Query$Dicts$get_dict_regions(
    Query$Dicts$get_dict_regions instance,
    TRes Function(Query$Dicts$get_dict_regions) then,
  ) = _CopyWithImpl$Query$Dicts$get_dict_regions;

  factory CopyWith$Query$Dicts$get_dict_regions.stub(TRes res) =
      _CopyWithStubImpl$Query$Dicts$get_dict_regions;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$Dicts$get_dict_regions<TRes>
    implements CopyWith$Query$Dicts$get_dict_regions<TRes> {
  _CopyWithImpl$Query$Dicts$get_dict_regions(
    this._instance,
    this._then,
  );

  final Query$Dicts$get_dict_regions _instance;

  final TRes Function(Query$Dicts$get_dict_regions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$Dicts$get_dict_regions(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$Dicts$get_dict_regions<TRes>
    implements CopyWith$Query$Dicts$get_dict_regions<TRes> {
  _CopyWithStubImpl$Query$Dicts$get_dict_regions(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$Dicts$get_dict_regions$$DictRegionTypeList
    implements Query$Dicts$get_dict_regions {
  Query$Dicts$get_dict_regions$$DictRegionTypeList({
    this.$__typename = 'DictRegionTypeList',
    required this.dict_region_type_list,
  });

  factory Query$Dicts$get_dict_regions$$DictRegionTypeList.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$dict_region_type_list = json['dict_region_type_list'];
    return Query$Dicts$get_dict_regions$$DictRegionTypeList(
      $__typename: (l$$__typename as String),
      dict_region_type_list: (l$dict_region_type_list as List<dynamic>)
          .map((e) =>
              Fragment$RegionFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final String $__typename;

  final List<Fragment$RegionFragment> dict_region_type_list;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$dict_region_type_list = dict_region_type_list;
    _resultData['dict_region_type_list'] =
        l$dict_region_type_list.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$dict_region_type_list = dict_region_type_list;
    return Object.hashAll([
      l$$__typename,
      Object.hashAll(l$dict_region_type_list.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Dicts$get_dict_regions$$DictRegionTypeList) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$dict_region_type_list = dict_region_type_list;
    final lOther$dict_region_type_list = other.dict_region_type_list;
    if (l$dict_region_type_list.length != lOther$dict_region_type_list.length) {
      return false;
    }
    for (int i = 0; i < l$dict_region_type_list.length; i++) {
      final l$dict_region_type_list$entry = l$dict_region_type_list[i];
      final lOther$dict_region_type_list$entry =
          lOther$dict_region_type_list[i];
      if (l$dict_region_type_list$entry != lOther$dict_region_type_list$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Query$Dicts$get_dict_regions$$DictRegionTypeList
    on Query$Dicts$get_dict_regions$$DictRegionTypeList {
  CopyWith$Query$Dicts$get_dict_regions$$DictRegionTypeList<
          Query$Dicts$get_dict_regions$$DictRegionTypeList>
      get copyWith => CopyWith$Query$Dicts$get_dict_regions$$DictRegionTypeList(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Dicts$get_dict_regions$$DictRegionTypeList<TRes> {
  factory CopyWith$Query$Dicts$get_dict_regions$$DictRegionTypeList(
    Query$Dicts$get_dict_regions$$DictRegionTypeList instance,
    TRes Function(Query$Dicts$get_dict_regions$$DictRegionTypeList) then,
  ) = _CopyWithImpl$Query$Dicts$get_dict_regions$$DictRegionTypeList;

  factory CopyWith$Query$Dicts$get_dict_regions$$DictRegionTypeList.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Dicts$get_dict_regions$$DictRegionTypeList;

  TRes call({
    String? $__typename,
    List<Fragment$RegionFragment>? dict_region_type_list,
  });
  TRes dict_region_type_list(
      Iterable<Fragment$RegionFragment> Function(
              Iterable<
                  CopyWith$Fragment$RegionFragment<Fragment$RegionFragment>>)
          _fn);
}

class _CopyWithImpl$Query$Dicts$get_dict_regions$$DictRegionTypeList<TRes>
    implements CopyWith$Query$Dicts$get_dict_regions$$DictRegionTypeList<TRes> {
  _CopyWithImpl$Query$Dicts$get_dict_regions$$DictRegionTypeList(
    this._instance,
    this._then,
  );

  final Query$Dicts$get_dict_regions$$DictRegionTypeList _instance;

  final TRes Function(Query$Dicts$get_dict_regions$$DictRegionTypeList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? dict_region_type_list = _undefined,
  }) =>
      _then(Query$Dicts$get_dict_regions$$DictRegionTypeList(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        dict_region_type_list:
            dict_region_type_list == _undefined || dict_region_type_list == null
                ? _instance.dict_region_type_list
                : (dict_region_type_list as List<Fragment$RegionFragment>),
      ));

  TRes dict_region_type_list(
          Iterable<Fragment$RegionFragment> Function(
                  Iterable<
                      CopyWith$Fragment$RegionFragment<
                          Fragment$RegionFragment>>)
              _fn) =>
      call(
          dict_region_type_list: _fn(_instance.dict_region_type_list
              .map((e) => CopyWith$Fragment$RegionFragment(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Dicts$get_dict_regions$$DictRegionTypeList<TRes>
    implements CopyWith$Query$Dicts$get_dict_regions$$DictRegionTypeList<TRes> {
  _CopyWithStubImpl$Query$Dicts$get_dict_regions$$DictRegionTypeList(this._res);

  TRes _res;

  call({
    String? $__typename,
    List<Fragment$RegionFragment>? dict_region_type_list,
  }) =>
      _res;

  dict_region_type_list(_fn) => _res;
}

class Query$Dicts$get_dict_regions$$ReturnError
    implements Query$Dicts$get_dict_regions {
  Query$Dicts$get_dict_regions$$ReturnError({
    this.$__typename = 'ReturnError',
    required this.name,
    required this.message,
  });

  factory Query$Dicts$get_dict_regions$$ReturnError.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$name = json['name'];
    final l$message = json['message'];
    return Query$Dicts$get_dict_regions$$ReturnError(
      $__typename: (l$$__typename as String),
      name: (l$name as String),
      message: (l$message as String),
    );
  }

  final String $__typename;

  final String name;

  final String message;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$message = message;
    _resultData['message'] = l$message;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$name = name;
    final l$message = message;
    return Object.hashAll([
      l$$__typename,
      l$name,
      l$message,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Dicts$get_dict_regions$$ReturnError) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Dicts$get_dict_regions$$ReturnError
    on Query$Dicts$get_dict_regions$$ReturnError {
  CopyWith$Query$Dicts$get_dict_regions$$ReturnError<
          Query$Dicts$get_dict_regions$$ReturnError>
      get copyWith => CopyWith$Query$Dicts$get_dict_regions$$ReturnError(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Dicts$get_dict_regions$$ReturnError<TRes> {
  factory CopyWith$Query$Dicts$get_dict_regions$$ReturnError(
    Query$Dicts$get_dict_regions$$ReturnError instance,
    TRes Function(Query$Dicts$get_dict_regions$$ReturnError) then,
  ) = _CopyWithImpl$Query$Dicts$get_dict_regions$$ReturnError;

  factory CopyWith$Query$Dicts$get_dict_regions$$ReturnError.stub(TRes res) =
      _CopyWithStubImpl$Query$Dicts$get_dict_regions$$ReturnError;

  TRes call({
    String? $__typename,
    String? name,
    String? message,
  });
}

class _CopyWithImpl$Query$Dicts$get_dict_regions$$ReturnError<TRes>
    implements CopyWith$Query$Dicts$get_dict_regions$$ReturnError<TRes> {
  _CopyWithImpl$Query$Dicts$get_dict_regions$$ReturnError(
    this._instance,
    this._then,
  );

  final Query$Dicts$get_dict_regions$$ReturnError _instance;

  final TRes Function(Query$Dicts$get_dict_regions$$ReturnError) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? name = _undefined,
    Object? message = _undefined,
  }) =>
      _then(Query$Dicts$get_dict_regions$$ReturnError(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
      ));
}

class _CopyWithStubImpl$Query$Dicts$get_dict_regions$$ReturnError<TRes>
    implements CopyWith$Query$Dicts$get_dict_regions$$ReturnError<TRes> {
  _CopyWithStubImpl$Query$Dicts$get_dict_regions$$ReturnError(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? name,
    String? message,
  }) =>
      _res;
}

class Query$Dicts$get_dict_feds {
  Query$Dicts$get_dict_feds({required this.$__typename});

  factory Query$Dicts$get_dict_feds.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "DictFedTypeList":
        return Query$Dicts$get_dict_feds$$DictFedTypeList.fromJson(json);

      case "ReturnError":
        return Query$Dicts$get_dict_feds$$ReturnError.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$Dicts$get_dict_feds(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Dicts$get_dict_feds) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Dicts$get_dict_feds
    on Query$Dicts$get_dict_feds {
  CopyWith$Query$Dicts$get_dict_feds<Query$Dicts$get_dict_feds> get copyWith =>
      CopyWith$Query$Dicts$get_dict_feds(
        this,
        (i) => i,
      );
  _T when<_T>({
    required _T Function(Query$Dicts$get_dict_feds$$DictFedTypeList)
        dictFedTypeList,
    required _T Function(Query$Dicts$get_dict_feds$$ReturnError) returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "DictFedTypeList":
        return dictFedTypeList(
            this as Query$Dicts$get_dict_feds$$DictFedTypeList);

      case "ReturnError":
        return returnError(this as Query$Dicts$get_dict_feds$$ReturnError);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$Dicts$get_dict_feds$$DictFedTypeList)? dictFedTypeList,
    _T Function(Query$Dicts$get_dict_feds$$ReturnError)? returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "DictFedTypeList":
        if (dictFedTypeList != null) {
          return dictFedTypeList(
              this as Query$Dicts$get_dict_feds$$DictFedTypeList);
        } else {
          return orElse();
        }

      case "ReturnError":
        if (returnError != null) {
          return returnError(this as Query$Dicts$get_dict_feds$$ReturnError);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$Dicts$get_dict_feds<TRes> {
  factory CopyWith$Query$Dicts$get_dict_feds(
    Query$Dicts$get_dict_feds instance,
    TRes Function(Query$Dicts$get_dict_feds) then,
  ) = _CopyWithImpl$Query$Dicts$get_dict_feds;

  factory CopyWith$Query$Dicts$get_dict_feds.stub(TRes res) =
      _CopyWithStubImpl$Query$Dicts$get_dict_feds;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$Dicts$get_dict_feds<TRes>
    implements CopyWith$Query$Dicts$get_dict_feds<TRes> {
  _CopyWithImpl$Query$Dicts$get_dict_feds(
    this._instance,
    this._then,
  );

  final Query$Dicts$get_dict_feds _instance;

  final TRes Function(Query$Dicts$get_dict_feds) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$Dicts$get_dict_feds(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$Dicts$get_dict_feds<TRes>
    implements CopyWith$Query$Dicts$get_dict_feds<TRes> {
  _CopyWithStubImpl$Query$Dicts$get_dict_feds(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$Dicts$get_dict_feds$$DictFedTypeList
    implements Query$Dicts$get_dict_feds {
  Query$Dicts$get_dict_feds$$DictFedTypeList({
    this.$__typename = 'DictFedTypeList',
    required this.dict_fed_type_list,
  });

  factory Query$Dicts$get_dict_feds$$DictFedTypeList.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$dict_fed_type_list = json['dict_fed_type_list'];
    return Query$Dicts$get_dict_feds$$DictFedTypeList(
      $__typename: (l$$__typename as String),
      dict_fed_type_list: (l$dict_fed_type_list as List<dynamic>)
          .map(
              (e) => Fragment$FedFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final String $__typename;

  final List<Fragment$FedFragment> dict_fed_type_list;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$dict_fed_type_list = dict_fed_type_list;
    _resultData['dict_fed_type_list'] =
        l$dict_fed_type_list.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$dict_fed_type_list = dict_fed_type_list;
    return Object.hashAll([
      l$$__typename,
      Object.hashAll(l$dict_fed_type_list.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Dicts$get_dict_feds$$DictFedTypeList) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$dict_fed_type_list = dict_fed_type_list;
    final lOther$dict_fed_type_list = other.dict_fed_type_list;
    if (l$dict_fed_type_list.length != lOther$dict_fed_type_list.length) {
      return false;
    }
    for (int i = 0; i < l$dict_fed_type_list.length; i++) {
      final l$dict_fed_type_list$entry = l$dict_fed_type_list[i];
      final lOther$dict_fed_type_list$entry = lOther$dict_fed_type_list[i];
      if (l$dict_fed_type_list$entry != lOther$dict_fed_type_list$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Query$Dicts$get_dict_feds$$DictFedTypeList
    on Query$Dicts$get_dict_feds$$DictFedTypeList {
  CopyWith$Query$Dicts$get_dict_feds$$DictFedTypeList<
          Query$Dicts$get_dict_feds$$DictFedTypeList>
      get copyWith => CopyWith$Query$Dicts$get_dict_feds$$DictFedTypeList(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Dicts$get_dict_feds$$DictFedTypeList<TRes> {
  factory CopyWith$Query$Dicts$get_dict_feds$$DictFedTypeList(
    Query$Dicts$get_dict_feds$$DictFedTypeList instance,
    TRes Function(Query$Dicts$get_dict_feds$$DictFedTypeList) then,
  ) = _CopyWithImpl$Query$Dicts$get_dict_feds$$DictFedTypeList;

  factory CopyWith$Query$Dicts$get_dict_feds$$DictFedTypeList.stub(TRes res) =
      _CopyWithStubImpl$Query$Dicts$get_dict_feds$$DictFedTypeList;

  TRes call({
    String? $__typename,
    List<Fragment$FedFragment>? dict_fed_type_list,
  });
  TRes dict_fed_type_list(
      Iterable<Fragment$FedFragment> Function(
              Iterable<CopyWith$Fragment$FedFragment<Fragment$FedFragment>>)
          _fn);
}

class _CopyWithImpl$Query$Dicts$get_dict_feds$$DictFedTypeList<TRes>
    implements CopyWith$Query$Dicts$get_dict_feds$$DictFedTypeList<TRes> {
  _CopyWithImpl$Query$Dicts$get_dict_feds$$DictFedTypeList(
    this._instance,
    this._then,
  );

  final Query$Dicts$get_dict_feds$$DictFedTypeList _instance;

  final TRes Function(Query$Dicts$get_dict_feds$$DictFedTypeList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? dict_fed_type_list = _undefined,
  }) =>
      _then(Query$Dicts$get_dict_feds$$DictFedTypeList(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        dict_fed_type_list:
            dict_fed_type_list == _undefined || dict_fed_type_list == null
                ? _instance.dict_fed_type_list
                : (dict_fed_type_list as List<Fragment$FedFragment>),
      ));

  TRes dict_fed_type_list(
          Iterable<Fragment$FedFragment> Function(
                  Iterable<CopyWith$Fragment$FedFragment<Fragment$FedFragment>>)
              _fn) =>
      call(
          dict_fed_type_list: _fn(_instance.dict_fed_type_list
              .map((e) => CopyWith$Fragment$FedFragment(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Dicts$get_dict_feds$$DictFedTypeList<TRes>
    implements CopyWith$Query$Dicts$get_dict_feds$$DictFedTypeList<TRes> {
  _CopyWithStubImpl$Query$Dicts$get_dict_feds$$DictFedTypeList(this._res);

  TRes _res;

  call({
    String? $__typename,
    List<Fragment$FedFragment>? dict_fed_type_list,
  }) =>
      _res;

  dict_fed_type_list(_fn) => _res;
}

class Query$Dicts$get_dict_feds$$ReturnError
    implements Query$Dicts$get_dict_feds {
  Query$Dicts$get_dict_feds$$ReturnError({
    this.$__typename = 'ReturnError',
    required this.message,
    required this.name,
  });

  factory Query$Dicts$get_dict_feds$$ReturnError.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$message = json['message'];
    final l$name = json['name'];
    return Query$Dicts$get_dict_feds$$ReturnError(
      $__typename: (l$$__typename as String),
      message: (l$message as String),
      name: (l$name as String),
    );
  }

  final String $__typename;

  final String message;

  final String name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$message = message;
    final l$name = name;
    return Object.hashAll([
      l$$__typename,
      l$message,
      l$name,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Dicts$get_dict_feds$$ReturnError) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Dicts$get_dict_feds$$ReturnError
    on Query$Dicts$get_dict_feds$$ReturnError {
  CopyWith$Query$Dicts$get_dict_feds$$ReturnError<
          Query$Dicts$get_dict_feds$$ReturnError>
      get copyWith => CopyWith$Query$Dicts$get_dict_feds$$ReturnError(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Dicts$get_dict_feds$$ReturnError<TRes> {
  factory CopyWith$Query$Dicts$get_dict_feds$$ReturnError(
    Query$Dicts$get_dict_feds$$ReturnError instance,
    TRes Function(Query$Dicts$get_dict_feds$$ReturnError) then,
  ) = _CopyWithImpl$Query$Dicts$get_dict_feds$$ReturnError;

  factory CopyWith$Query$Dicts$get_dict_feds$$ReturnError.stub(TRes res) =
      _CopyWithStubImpl$Query$Dicts$get_dict_feds$$ReturnError;

  TRes call({
    String? $__typename,
    String? message,
    String? name,
  });
}

class _CopyWithImpl$Query$Dicts$get_dict_feds$$ReturnError<TRes>
    implements CopyWith$Query$Dicts$get_dict_feds$$ReturnError<TRes> {
  _CopyWithImpl$Query$Dicts$get_dict_feds$$ReturnError(
    this._instance,
    this._then,
  );

  final Query$Dicts$get_dict_feds$$ReturnError _instance;

  final TRes Function(Query$Dicts$get_dict_feds$$ReturnError) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? message = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Query$Dicts$get_dict_feds$$ReturnError(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
      ));
}

class _CopyWithStubImpl$Query$Dicts$get_dict_feds$$ReturnError<TRes>
    implements CopyWith$Query$Dicts$get_dict_feds$$ReturnError<TRes> {
  _CopyWithStubImpl$Query$Dicts$get_dict_feds$$ReturnError(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? message,
    String? name,
  }) =>
      _res;
}

class Query$Dicts$get_dict_cities {
  Query$Dicts$get_dict_cities({required this.$__typename});

  factory Query$Dicts$get_dict_cities.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "DictCityTypeList":
        return Query$Dicts$get_dict_cities$$DictCityTypeList.fromJson(json);

      case "ReturnError":
        return Query$Dicts$get_dict_cities$$ReturnError.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$Dicts$get_dict_cities(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Dicts$get_dict_cities) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Dicts$get_dict_cities
    on Query$Dicts$get_dict_cities {
  CopyWith$Query$Dicts$get_dict_cities<Query$Dicts$get_dict_cities>
      get copyWith => CopyWith$Query$Dicts$get_dict_cities(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Query$Dicts$get_dict_cities$$DictCityTypeList)
        dictCityTypeList,
    required _T Function(Query$Dicts$get_dict_cities$$ReturnError) returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "DictCityTypeList":
        return dictCityTypeList(
            this as Query$Dicts$get_dict_cities$$DictCityTypeList);

      case "ReturnError":
        return returnError(this as Query$Dicts$get_dict_cities$$ReturnError);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$Dicts$get_dict_cities$$DictCityTypeList)?
        dictCityTypeList,
    _T Function(Query$Dicts$get_dict_cities$$ReturnError)? returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "DictCityTypeList":
        if (dictCityTypeList != null) {
          return dictCityTypeList(
              this as Query$Dicts$get_dict_cities$$DictCityTypeList);
        } else {
          return orElse();
        }

      case "ReturnError":
        if (returnError != null) {
          return returnError(this as Query$Dicts$get_dict_cities$$ReturnError);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$Dicts$get_dict_cities<TRes> {
  factory CopyWith$Query$Dicts$get_dict_cities(
    Query$Dicts$get_dict_cities instance,
    TRes Function(Query$Dicts$get_dict_cities) then,
  ) = _CopyWithImpl$Query$Dicts$get_dict_cities;

  factory CopyWith$Query$Dicts$get_dict_cities.stub(TRes res) =
      _CopyWithStubImpl$Query$Dicts$get_dict_cities;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$Dicts$get_dict_cities<TRes>
    implements CopyWith$Query$Dicts$get_dict_cities<TRes> {
  _CopyWithImpl$Query$Dicts$get_dict_cities(
    this._instance,
    this._then,
  );

  final Query$Dicts$get_dict_cities _instance;

  final TRes Function(Query$Dicts$get_dict_cities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$Dicts$get_dict_cities(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$Dicts$get_dict_cities<TRes>
    implements CopyWith$Query$Dicts$get_dict_cities<TRes> {
  _CopyWithStubImpl$Query$Dicts$get_dict_cities(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$Dicts$get_dict_cities$$DictCityTypeList
    implements Query$Dicts$get_dict_cities {
  Query$Dicts$get_dict_cities$$DictCityTypeList({
    this.$__typename = 'DictCityTypeList',
    required this.dict_city_type_list,
  });

  factory Query$Dicts$get_dict_cities$$DictCityTypeList.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$dict_city_type_list = json['dict_city_type_list'];
    return Query$Dicts$get_dict_cities$$DictCityTypeList(
      $__typename: (l$$__typename as String),
      dict_city_type_list: (l$dict_city_type_list as List<dynamic>)
          .map((e) =>
              Fragment$CityFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final String $__typename;

  final List<Fragment$CityFragment> dict_city_type_list;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$dict_city_type_list = dict_city_type_list;
    _resultData['dict_city_type_list'] =
        l$dict_city_type_list.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$dict_city_type_list = dict_city_type_list;
    return Object.hashAll([
      l$$__typename,
      Object.hashAll(l$dict_city_type_list.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Dicts$get_dict_cities$$DictCityTypeList) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$dict_city_type_list = dict_city_type_list;
    final lOther$dict_city_type_list = other.dict_city_type_list;
    if (l$dict_city_type_list.length != lOther$dict_city_type_list.length) {
      return false;
    }
    for (int i = 0; i < l$dict_city_type_list.length; i++) {
      final l$dict_city_type_list$entry = l$dict_city_type_list[i];
      final lOther$dict_city_type_list$entry = lOther$dict_city_type_list[i];
      if (l$dict_city_type_list$entry != lOther$dict_city_type_list$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Query$Dicts$get_dict_cities$$DictCityTypeList
    on Query$Dicts$get_dict_cities$$DictCityTypeList {
  CopyWith$Query$Dicts$get_dict_cities$$DictCityTypeList<
          Query$Dicts$get_dict_cities$$DictCityTypeList>
      get copyWith => CopyWith$Query$Dicts$get_dict_cities$$DictCityTypeList(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Dicts$get_dict_cities$$DictCityTypeList<TRes> {
  factory CopyWith$Query$Dicts$get_dict_cities$$DictCityTypeList(
    Query$Dicts$get_dict_cities$$DictCityTypeList instance,
    TRes Function(Query$Dicts$get_dict_cities$$DictCityTypeList) then,
  ) = _CopyWithImpl$Query$Dicts$get_dict_cities$$DictCityTypeList;

  factory CopyWith$Query$Dicts$get_dict_cities$$DictCityTypeList.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Dicts$get_dict_cities$$DictCityTypeList;

  TRes call({
    String? $__typename,
    List<Fragment$CityFragment>? dict_city_type_list,
  });
  TRes dict_city_type_list(
      Iterable<Fragment$CityFragment> Function(
              Iterable<CopyWith$Fragment$CityFragment<Fragment$CityFragment>>)
          _fn);
}

class _CopyWithImpl$Query$Dicts$get_dict_cities$$DictCityTypeList<TRes>
    implements CopyWith$Query$Dicts$get_dict_cities$$DictCityTypeList<TRes> {
  _CopyWithImpl$Query$Dicts$get_dict_cities$$DictCityTypeList(
    this._instance,
    this._then,
  );

  final Query$Dicts$get_dict_cities$$DictCityTypeList _instance;

  final TRes Function(Query$Dicts$get_dict_cities$$DictCityTypeList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? dict_city_type_list = _undefined,
  }) =>
      _then(Query$Dicts$get_dict_cities$$DictCityTypeList(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        dict_city_type_list:
            dict_city_type_list == _undefined || dict_city_type_list == null
                ? _instance.dict_city_type_list
                : (dict_city_type_list as List<Fragment$CityFragment>),
      ));

  TRes dict_city_type_list(
          Iterable<Fragment$CityFragment> Function(
                  Iterable<
                      CopyWith$Fragment$CityFragment<Fragment$CityFragment>>)
              _fn) =>
      call(
          dict_city_type_list: _fn(_instance.dict_city_type_list
              .map((e) => CopyWith$Fragment$CityFragment(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Dicts$get_dict_cities$$DictCityTypeList<TRes>
    implements CopyWith$Query$Dicts$get_dict_cities$$DictCityTypeList<TRes> {
  _CopyWithStubImpl$Query$Dicts$get_dict_cities$$DictCityTypeList(this._res);

  TRes _res;

  call({
    String? $__typename,
    List<Fragment$CityFragment>? dict_city_type_list,
  }) =>
      _res;

  dict_city_type_list(_fn) => _res;
}

class Query$Dicts$get_dict_cities$$ReturnError
    implements Query$Dicts$get_dict_cities {
  Query$Dicts$get_dict_cities$$ReturnError({
    this.$__typename = 'ReturnError',
    required this.message,
    required this.name,
  });

  factory Query$Dicts$get_dict_cities$$ReturnError.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$message = json['message'];
    final l$name = json['name'];
    return Query$Dicts$get_dict_cities$$ReturnError(
      $__typename: (l$$__typename as String),
      message: (l$message as String),
      name: (l$name as String),
    );
  }

  final String $__typename;

  final String message;

  final String name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$message = message;
    final l$name = name;
    return Object.hashAll([
      l$$__typename,
      l$message,
      l$name,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Dicts$get_dict_cities$$ReturnError) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Dicts$get_dict_cities$$ReturnError
    on Query$Dicts$get_dict_cities$$ReturnError {
  CopyWith$Query$Dicts$get_dict_cities$$ReturnError<
          Query$Dicts$get_dict_cities$$ReturnError>
      get copyWith => CopyWith$Query$Dicts$get_dict_cities$$ReturnError(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Dicts$get_dict_cities$$ReturnError<TRes> {
  factory CopyWith$Query$Dicts$get_dict_cities$$ReturnError(
    Query$Dicts$get_dict_cities$$ReturnError instance,
    TRes Function(Query$Dicts$get_dict_cities$$ReturnError) then,
  ) = _CopyWithImpl$Query$Dicts$get_dict_cities$$ReturnError;

  factory CopyWith$Query$Dicts$get_dict_cities$$ReturnError.stub(TRes res) =
      _CopyWithStubImpl$Query$Dicts$get_dict_cities$$ReturnError;

  TRes call({
    String? $__typename,
    String? message,
    String? name,
  });
}

class _CopyWithImpl$Query$Dicts$get_dict_cities$$ReturnError<TRes>
    implements CopyWith$Query$Dicts$get_dict_cities$$ReturnError<TRes> {
  _CopyWithImpl$Query$Dicts$get_dict_cities$$ReturnError(
    this._instance,
    this._then,
  );

  final Query$Dicts$get_dict_cities$$ReturnError _instance;

  final TRes Function(Query$Dicts$get_dict_cities$$ReturnError) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? message = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Query$Dicts$get_dict_cities$$ReturnError(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
      ));
}

class _CopyWithStubImpl$Query$Dicts$get_dict_cities$$ReturnError<TRes>
    implements CopyWith$Query$Dicts$get_dict_cities$$ReturnError<TRes> {
  _CopyWithStubImpl$Query$Dicts$get_dict_cities$$ReturnError(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? message,
    String? name,
  }) =>
      _res;
}

class Query$Profile {
  Query$Profile({
    required this.profile,
    this.$__typename = 'Query',
  });

  factory Query$Profile.fromJson(Map<String, dynamic> json) {
    final l$profile = json['profile'];
    final l$$__typename = json['__typename'];
    return Query$Profile(
      profile:
          Query$Profile$profile.fromJson((l$profile as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Profile$profile profile;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$profile = profile;
    _resultData['profile'] = l$profile.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$profile = profile;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$profile,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Profile) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$profile = profile;
    final lOther$profile = other.profile;
    if (l$profile != lOther$profile) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Profile on Query$Profile {
  CopyWith$Query$Profile<Query$Profile> get copyWith => CopyWith$Query$Profile(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Profile<TRes> {
  factory CopyWith$Query$Profile(
    Query$Profile instance,
    TRes Function(Query$Profile) then,
  ) = _CopyWithImpl$Query$Profile;

  factory CopyWith$Query$Profile.stub(TRes res) =
      _CopyWithStubImpl$Query$Profile;

  TRes call({
    Query$Profile$profile? profile,
    String? $__typename,
  });
  CopyWith$Query$Profile$profile<TRes> get profile;
}

class _CopyWithImpl$Query$Profile<TRes>
    implements CopyWith$Query$Profile<TRes> {
  _CopyWithImpl$Query$Profile(
    this._instance,
    this._then,
  );

  final Query$Profile _instance;

  final TRes Function(Query$Profile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? profile = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Profile(
        profile: profile == _undefined || profile == null
            ? _instance.profile
            : (profile as Query$Profile$profile),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Profile$profile<TRes> get profile {
    final local$profile = _instance.profile;
    return CopyWith$Query$Profile$profile(
        local$profile, (e) => call(profile: e));
  }
}

class _CopyWithStubImpl$Query$Profile<TRes>
    implements CopyWith$Query$Profile<TRes> {
  _CopyWithStubImpl$Query$Profile(this._res);

  TRes _res;

  call({
    Query$Profile$profile? profile,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Profile$profile<TRes> get profile =>
      CopyWith$Query$Profile$profile.stub(_res);
}

const documentNodeQueryProfile = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Profile'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'profile'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'Profile'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'ProfileFragment'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ReturnError'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'message'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionProfileFragment,
  fragmentDefinitionCityFragment,
  fragmentDefinitionRegionFragment,
  fragmentDefinitionFedFragment,
  fragmentDefinitionSexFragment,
]);

class Query$Profile$profile {
  Query$Profile$profile({required this.$__typename});

  factory Query$Profile$profile.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Profile":
        return Query$Profile$profile$$Profile.fromJson(json);

      case "ReturnError":
        return Query$Profile$profile$$ReturnError.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$Profile$profile($__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Profile$profile) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Profile$profile on Query$Profile$profile {
  CopyWith$Query$Profile$profile<Query$Profile$profile> get copyWith =>
      CopyWith$Query$Profile$profile(
        this,
        (i) => i,
      );
  _T when<_T>({
    required _T Function(Query$Profile$profile$$Profile) profile,
    required _T Function(Query$Profile$profile$$ReturnError) returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Profile":
        return profile(this as Query$Profile$profile$$Profile);

      case "ReturnError":
        return returnError(this as Query$Profile$profile$$ReturnError);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$Profile$profile$$Profile)? profile,
    _T Function(Query$Profile$profile$$ReturnError)? returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Profile":
        if (profile != null) {
          return profile(this as Query$Profile$profile$$Profile);
        } else {
          return orElse();
        }

      case "ReturnError":
        if (returnError != null) {
          return returnError(this as Query$Profile$profile$$ReturnError);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$Profile$profile<TRes> {
  factory CopyWith$Query$Profile$profile(
    Query$Profile$profile instance,
    TRes Function(Query$Profile$profile) then,
  ) = _CopyWithImpl$Query$Profile$profile;

  factory CopyWith$Query$Profile$profile.stub(TRes res) =
      _CopyWithStubImpl$Query$Profile$profile;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$Profile$profile<TRes>
    implements CopyWith$Query$Profile$profile<TRes> {
  _CopyWithImpl$Query$Profile$profile(
    this._instance,
    this._then,
  );

  final Query$Profile$profile _instance;

  final TRes Function(Query$Profile$profile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(Query$Profile$profile(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String)));
}

class _CopyWithStubImpl$Query$Profile$profile<TRes>
    implements CopyWith$Query$Profile$profile<TRes> {
  _CopyWithStubImpl$Query$Profile$profile(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$Profile$profile$$Profile
    implements Fragment$ProfileFragment, Query$Profile$profile {
  Query$Profile$profile$$Profile({
    this.birthday,
    required this.change_date,
    this.city,
    this.email,
    this.first_name,
    this.fullness,
    required this.is_approval_participation,
    required this.is_approval_pdn,
    this.is_blocked,
    this.is_test_user,
    this.is_imported,
    this.last_name,
    this.locality,
    this.middle_name,
    this.phone,
    required this.profile_id,
    required this.profile_uid,
    this.region,
    required this.registration_date,
    required this.respondent_status,
    this.sex,
    this.telegram_username,
    required this.user_edit,
    this.$__typename = 'Profile',
  });

  factory Query$Profile$profile$$Profile.fromJson(Map<String, dynamic> json) {
    final l$birthday = json['birthday'];
    final l$change_date = json['change_date'];
    final l$city = json['city'];
    final l$email = json['email'];
    final l$first_name = json['first_name'];
    final l$fullness = json['fullness'];
    final l$is_approval_participation = json['is_approval_participation'];
    final l$is_approval_pdn = json['is_approval_pdn'];
    final l$is_blocked = json['is_blocked'];
    final l$is_test_user = json['is_test_user'];
    final l$is_imported = json['is_imported'];
    final l$last_name = json['last_name'];
    final l$locality = json['locality'];
    final l$middle_name = json['middle_name'];
    final l$phone = json['phone'];
    final l$profile_id = json['profile_id'];
    final l$profile_uid = json['profile_uid'];
    final l$region = json['region'];
    final l$registration_date = json['registration_date'];
    final l$respondent_status = json['respondent_status'];
    final l$sex = json['sex'];
    final l$telegram_username = json['telegram_username'];
    final l$user_edit = json['user_edit'];
    final l$$__typename = json['__typename'];
    return Query$Profile$profile$$Profile(
      birthday: (l$birthday as String?),
      change_date: (l$change_date as String),
      city: l$city == null
          ? null
          : Fragment$CityFragment.fromJson((l$city as Map<String, dynamic>)),
      email: (l$email as String?),
      first_name: (l$first_name as String?),
      fullness: (l$fullness as int?),
      is_approval_participation: (l$is_approval_participation as bool),
      is_approval_pdn: (l$is_approval_pdn as bool),
      is_blocked: (l$is_blocked as bool?),
      is_test_user: (l$is_test_user as bool?),
      is_imported: (l$is_imported as bool?),
      last_name: (l$last_name as String?),
      locality: (l$locality as String?),
      middle_name: (l$middle_name as String?),
      phone: (l$phone as String?),
      profile_id: (l$profile_id as int),
      profile_uid: (l$profile_uid as String),
      region: l$region == null
          ? null
          : Fragment$RegionFragment.fromJson(
              (l$region as Map<String, dynamic>)),
      registration_date: (l$registration_date as String),
      respondent_status:
          Query$Profile$profile$$Profile$respondent_status.fromJson(
              (l$respondent_status as Map<String, dynamic>)),
      sex: l$sex == null
          ? null
          : Fragment$SexFragment.fromJson((l$sex as Map<String, dynamic>)),
      telegram_username: (l$telegram_username as String?),
      user_edit: (l$user_edit as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String? birthday;

  final String change_date;

  final Fragment$CityFragment? city;

  final String? email;

  final String? first_name;

  final int? fullness;

  final bool is_approval_participation;

  final bool is_approval_pdn;

  final bool? is_blocked;

  final bool? is_test_user;

  final bool? is_imported;

  final String? last_name;

  final String? locality;

  final String? middle_name;

  final String? phone;

  final int profile_id;

  final String profile_uid;

  final Fragment$RegionFragment? region;

  final String registration_date;

  final Query$Profile$profile$$Profile$respondent_status respondent_status;

  final Fragment$SexFragment? sex;

  final String? telegram_username;

  final String user_edit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$birthday = birthday;
    _resultData['birthday'] = l$birthday;
    final l$change_date = change_date;
    _resultData['change_date'] = l$change_date;
    final l$city = city;
    _resultData['city'] = l$city?.toJson();
    final l$email = email;
    _resultData['email'] = l$email;
    final l$first_name = first_name;
    _resultData['first_name'] = l$first_name;
    final l$fullness = fullness;
    _resultData['fullness'] = l$fullness;
    final l$is_approval_participation = is_approval_participation;
    _resultData['is_approval_participation'] = l$is_approval_participation;
    final l$is_approval_pdn = is_approval_pdn;
    _resultData['is_approval_pdn'] = l$is_approval_pdn;
    final l$is_blocked = is_blocked;
    _resultData['is_blocked'] = l$is_blocked;
    final l$is_test_user = is_test_user;
    _resultData['is_test_user'] = l$is_test_user;
    final l$is_imported = is_imported;
    _resultData['is_imported'] = l$is_imported;
    final l$last_name = last_name;
    _resultData['last_name'] = l$last_name;
    final l$locality = locality;
    _resultData['locality'] = l$locality;
    final l$middle_name = middle_name;
    _resultData['middle_name'] = l$middle_name;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$profile_id = profile_id;
    _resultData['profile_id'] = l$profile_id;
    final l$profile_uid = profile_uid;
    _resultData['profile_uid'] = l$profile_uid;
    final l$region = region;
    _resultData['region'] = l$region?.toJson();
    final l$registration_date = registration_date;
    _resultData['registration_date'] = l$registration_date;
    final l$respondent_status = respondent_status;
    _resultData['respondent_status'] = l$respondent_status.toJson();
    final l$sex = sex;
    _resultData['sex'] = l$sex?.toJson();
    final l$telegram_username = telegram_username;
    _resultData['telegram_username'] = l$telegram_username;
    final l$user_edit = user_edit;
    _resultData['user_edit'] = l$user_edit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$birthday = birthday;
    final l$change_date = change_date;
    final l$city = city;
    final l$email = email;
    final l$first_name = first_name;
    final l$fullness = fullness;
    final l$is_approval_participation = is_approval_participation;
    final l$is_approval_pdn = is_approval_pdn;
    final l$is_blocked = is_blocked;
    final l$is_test_user = is_test_user;
    final l$is_imported = is_imported;
    final l$last_name = last_name;
    final l$locality = locality;
    final l$middle_name = middle_name;
    final l$phone = phone;
    final l$profile_id = profile_id;
    final l$profile_uid = profile_uid;
    final l$region = region;
    final l$registration_date = registration_date;
    final l$respondent_status = respondent_status;
    final l$sex = sex;
    final l$telegram_username = telegram_username;
    final l$user_edit = user_edit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$birthday,
      l$change_date,
      l$city,
      l$email,
      l$first_name,
      l$fullness,
      l$is_approval_participation,
      l$is_approval_pdn,
      l$is_blocked,
      l$is_test_user,
      l$is_imported,
      l$last_name,
      l$locality,
      l$middle_name,
      l$phone,
      l$profile_id,
      l$profile_uid,
      l$region,
      l$registration_date,
      l$respondent_status,
      l$sex,
      l$telegram_username,
      l$user_edit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Profile$profile$$Profile) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$birthday = birthday;
    final lOther$birthday = other.birthday;
    if (l$birthday != lOther$birthday) {
      return false;
    }
    final l$change_date = change_date;
    final lOther$change_date = other.change_date;
    if (l$change_date != lOther$change_date) {
      return false;
    }
    final l$city = city;
    final lOther$city = other.city;
    if (l$city != lOther$city) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$first_name = first_name;
    final lOther$first_name = other.first_name;
    if (l$first_name != lOther$first_name) {
      return false;
    }
    final l$fullness = fullness;
    final lOther$fullness = other.fullness;
    if (l$fullness != lOther$fullness) {
      return false;
    }
    final l$is_approval_participation = is_approval_participation;
    final lOther$is_approval_participation = other.is_approval_participation;
    if (l$is_approval_participation != lOther$is_approval_participation) {
      return false;
    }
    final l$is_approval_pdn = is_approval_pdn;
    final lOther$is_approval_pdn = other.is_approval_pdn;
    if (l$is_approval_pdn != lOther$is_approval_pdn) {
      return false;
    }
    final l$is_blocked = is_blocked;
    final lOther$is_blocked = other.is_blocked;
    if (l$is_blocked != lOther$is_blocked) {
      return false;
    }
    final l$is_test_user = is_test_user;
    final lOther$is_test_user = other.is_test_user;
    if (l$is_test_user != lOther$is_test_user) {
      return false;
    }
    final l$is_imported = is_imported;
    final lOther$is_imported = other.is_imported;
    if (l$is_imported != lOther$is_imported) {
      return false;
    }
    final l$last_name = last_name;
    final lOther$last_name = other.last_name;
    if (l$last_name != lOther$last_name) {
      return false;
    }
    final l$locality = locality;
    final lOther$locality = other.locality;
    if (l$locality != lOther$locality) {
      return false;
    }
    final l$middle_name = middle_name;
    final lOther$middle_name = other.middle_name;
    if (l$middle_name != lOther$middle_name) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$profile_id = profile_id;
    final lOther$profile_id = other.profile_id;
    if (l$profile_id != lOther$profile_id) {
      return false;
    }
    final l$profile_uid = profile_uid;
    final lOther$profile_uid = other.profile_uid;
    if (l$profile_uid != lOther$profile_uid) {
      return false;
    }
    final l$region = region;
    final lOther$region = other.region;
    if (l$region != lOther$region) {
      return false;
    }
    final l$registration_date = registration_date;
    final lOther$registration_date = other.registration_date;
    if (l$registration_date != lOther$registration_date) {
      return false;
    }
    final l$respondent_status = respondent_status;
    final lOther$respondent_status = other.respondent_status;
    if (l$respondent_status != lOther$respondent_status) {
      return false;
    }
    final l$sex = sex;
    final lOther$sex = other.sex;
    if (l$sex != lOther$sex) {
      return false;
    }
    final l$telegram_username = telegram_username;
    final lOther$telegram_username = other.telegram_username;
    if (l$telegram_username != lOther$telegram_username) {
      return false;
    }
    final l$user_edit = user_edit;
    final lOther$user_edit = other.user_edit;
    if (l$user_edit != lOther$user_edit) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Profile$profile$$Profile
    on Query$Profile$profile$$Profile {
  CopyWith$Query$Profile$profile$$Profile<Query$Profile$profile$$Profile>
      get copyWith => CopyWith$Query$Profile$profile$$Profile(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Profile$profile$$Profile<TRes> {
  factory CopyWith$Query$Profile$profile$$Profile(
    Query$Profile$profile$$Profile instance,
    TRes Function(Query$Profile$profile$$Profile) then,
  ) = _CopyWithImpl$Query$Profile$profile$$Profile;

  factory CopyWith$Query$Profile$profile$$Profile.stub(TRes res) =
      _CopyWithStubImpl$Query$Profile$profile$$Profile;

  TRes call({
    String? birthday,
    String? change_date,
    Fragment$CityFragment? city,
    String? email,
    String? first_name,
    int? fullness,
    bool? is_approval_participation,
    bool? is_approval_pdn,
    bool? is_blocked,
    bool? is_test_user,
    bool? is_imported,
    String? last_name,
    String? locality,
    String? middle_name,
    String? phone,
    int? profile_id,
    String? profile_uid,
    Fragment$RegionFragment? region,
    String? registration_date,
    Query$Profile$profile$$Profile$respondent_status? respondent_status,
    Fragment$SexFragment? sex,
    String? telegram_username,
    String? user_edit,
    String? $__typename,
  });
  CopyWith$Fragment$CityFragment<TRes> get city;
  CopyWith$Fragment$RegionFragment<TRes> get region;
  CopyWith$Query$Profile$profile$$Profile$respondent_status<TRes>
      get respondent_status;
  CopyWith$Fragment$SexFragment<TRes> get sex;
}

class _CopyWithImpl$Query$Profile$profile$$Profile<TRes>
    implements CopyWith$Query$Profile$profile$$Profile<TRes> {
  _CopyWithImpl$Query$Profile$profile$$Profile(
    this._instance,
    this._then,
  );

  final Query$Profile$profile$$Profile _instance;

  final TRes Function(Query$Profile$profile$$Profile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? birthday = _undefined,
    Object? change_date = _undefined,
    Object? city = _undefined,
    Object? email = _undefined,
    Object? first_name = _undefined,
    Object? fullness = _undefined,
    Object? is_approval_participation = _undefined,
    Object? is_approval_pdn = _undefined,
    Object? is_blocked = _undefined,
    Object? is_test_user = _undefined,
    Object? is_imported = _undefined,
    Object? last_name = _undefined,
    Object? locality = _undefined,
    Object? middle_name = _undefined,
    Object? phone = _undefined,
    Object? profile_id = _undefined,
    Object? profile_uid = _undefined,
    Object? region = _undefined,
    Object? registration_date = _undefined,
    Object? respondent_status = _undefined,
    Object? sex = _undefined,
    Object? telegram_username = _undefined,
    Object? user_edit = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Profile$profile$$Profile(
        birthday:
            birthday == _undefined ? _instance.birthday : (birthday as String?),
        change_date: change_date == _undefined || change_date == null
            ? _instance.change_date
            : (change_date as String),
        city: city == _undefined
            ? _instance.city
            : (city as Fragment$CityFragment?),
        email: email == _undefined ? _instance.email : (email as String?),
        first_name: first_name == _undefined
            ? _instance.first_name
            : (first_name as String?),
        fullness:
            fullness == _undefined ? _instance.fullness : (fullness as int?),
        is_approval_participation: is_approval_participation == _undefined ||
                is_approval_participation == null
            ? _instance.is_approval_participation
            : (is_approval_participation as bool),
        is_approval_pdn:
            is_approval_pdn == _undefined || is_approval_pdn == null
                ? _instance.is_approval_pdn
                : (is_approval_pdn as bool),
        is_blocked: is_blocked == _undefined
            ? _instance.is_blocked
            : (is_blocked as bool?),
        is_test_user: is_test_user == _undefined
            ? _instance.is_test_user
            : (is_test_user as bool?),
        is_imported: is_imported == _undefined
            ? _instance.is_imported
            : (is_imported as bool?),
        last_name: last_name == _undefined
            ? _instance.last_name
            : (last_name as String?),
        locality:
            locality == _undefined ? _instance.locality : (locality as String?),
        middle_name: middle_name == _undefined
            ? _instance.middle_name
            : (middle_name as String?),
        phone: phone == _undefined ? _instance.phone : (phone as String?),
        profile_id: profile_id == _undefined || profile_id == null
            ? _instance.profile_id
            : (profile_id as int),
        profile_uid: profile_uid == _undefined || profile_uid == null
            ? _instance.profile_uid
            : (profile_uid as String),
        region: region == _undefined
            ? _instance.region
            : (region as Fragment$RegionFragment?),
        registration_date:
            registration_date == _undefined || registration_date == null
                ? _instance.registration_date
                : (registration_date as String),
        respondent_status:
            respondent_status == _undefined || respondent_status == null
                ? _instance.respondent_status
                : (respondent_status
                    as Query$Profile$profile$$Profile$respondent_status),
        sex: sex == _undefined ? _instance.sex : (sex as Fragment$SexFragment?),
        telegram_username: telegram_username == _undefined
            ? _instance.telegram_username
            : (telegram_username as String?),
        user_edit: user_edit == _undefined || user_edit == null
            ? _instance.user_edit
            : (user_edit as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$CityFragment<TRes> get city {
    final local$city = _instance.city;
    return local$city == null
        ? CopyWith$Fragment$CityFragment.stub(_then(_instance))
        : CopyWith$Fragment$CityFragment(local$city, (e) => call(city: e));
  }

  CopyWith$Fragment$RegionFragment<TRes> get region {
    final local$region = _instance.region;
    return local$region == null
        ? CopyWith$Fragment$RegionFragment.stub(_then(_instance))
        : CopyWith$Fragment$RegionFragment(
            local$region, (e) => call(region: e));
  }

  CopyWith$Query$Profile$profile$$Profile$respondent_status<TRes>
      get respondent_status {
    final local$respondent_status = _instance.respondent_status;
    return CopyWith$Query$Profile$profile$$Profile$respondent_status(
        local$respondent_status, (e) => call(respondent_status: e));
  }

  CopyWith$Fragment$SexFragment<TRes> get sex {
    final local$sex = _instance.sex;
    return local$sex == null
        ? CopyWith$Fragment$SexFragment.stub(_then(_instance))
        : CopyWith$Fragment$SexFragment(local$sex, (e) => call(sex: e));
  }
}

class _CopyWithStubImpl$Query$Profile$profile$$Profile<TRes>
    implements CopyWith$Query$Profile$profile$$Profile<TRes> {
  _CopyWithStubImpl$Query$Profile$profile$$Profile(this._res);

  TRes _res;

  call({
    String? birthday,
    String? change_date,
    Fragment$CityFragment? city,
    String? email,
    String? first_name,
    int? fullness,
    bool? is_approval_participation,
    bool? is_approval_pdn,
    bool? is_blocked,
    bool? is_test_user,
    bool? is_imported,
    String? last_name,
    String? locality,
    String? middle_name,
    String? phone,
    int? profile_id,
    String? profile_uid,
    Fragment$RegionFragment? region,
    String? registration_date,
    Query$Profile$profile$$Profile$respondent_status? respondent_status,
    Fragment$SexFragment? sex,
    String? telegram_username,
    String? user_edit,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$CityFragment<TRes> get city =>
      CopyWith$Fragment$CityFragment.stub(_res);

  CopyWith$Fragment$RegionFragment<TRes> get region =>
      CopyWith$Fragment$RegionFragment.stub(_res);

  CopyWith$Query$Profile$profile$$Profile$respondent_status<TRes>
      get respondent_status =>
          CopyWith$Query$Profile$profile$$Profile$respondent_status.stub(_res);

  CopyWith$Fragment$SexFragment<TRes> get sex =>
      CopyWith$Fragment$SexFragment.stub(_res);
}

class Query$Profile$profile$$Profile$respondent_status
    implements Fragment$ProfileFragment$respondent_status {
  Query$Profile$profile$$Profile$respondent_status({
    required this.status_email,
    required this.status_profile,
    required this.status_activity,
    this.$__typename = 'Statuses',
  });

  factory Query$Profile$profile$$Profile$respondent_status.fromJson(
      Map<String, dynamic> json) {
    final l$status_email = json['status_email'];
    final l$status_profile = json['status_profile'];
    final l$status_activity = json['status_activity'];
    final l$$__typename = json['__typename'];
    return Query$Profile$profile$$Profile$respondent_status(
      status_email:
          Query$Profile$profile$$Profile$respondent_status$status_email
              .fromJson((l$status_email as Map<String, dynamic>)),
      status_profile:
          Query$Profile$profile$$Profile$respondent_status$status_profile
              .fromJson((l$status_profile as Map<String, dynamic>)),
      status_activity:
          Query$Profile$profile$$Profile$respondent_status$status_activity
              .fromJson((l$status_activity as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Profile$profile$$Profile$respondent_status$status_email
      status_email;

  final Query$Profile$profile$$Profile$respondent_status$status_profile
      status_profile;

  final Query$Profile$profile$$Profile$respondent_status$status_activity
      status_activity;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$status_email = status_email;
    _resultData['status_email'] = l$status_email.toJson();
    final l$status_profile = status_profile;
    _resultData['status_profile'] = l$status_profile.toJson();
    final l$status_activity = status_activity;
    _resultData['status_activity'] = l$status_activity.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$status_email = status_email;
    final l$status_profile = status_profile;
    final l$status_activity = status_activity;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$status_email,
      l$status_profile,
      l$status_activity,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Profile$profile$$Profile$respondent_status) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$status_email = status_email;
    final lOther$status_email = other.status_email;
    if (l$status_email != lOther$status_email) {
      return false;
    }
    final l$status_profile = status_profile;
    final lOther$status_profile = other.status_profile;
    if (l$status_profile != lOther$status_profile) {
      return false;
    }
    final l$status_activity = status_activity;
    final lOther$status_activity = other.status_activity;
    if (l$status_activity != lOther$status_activity) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Profile$profile$$Profile$respondent_status
    on Query$Profile$profile$$Profile$respondent_status {
  CopyWith$Query$Profile$profile$$Profile$respondent_status<
          Query$Profile$profile$$Profile$respondent_status>
      get copyWith => CopyWith$Query$Profile$profile$$Profile$respondent_status(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Profile$profile$$Profile$respondent_status<TRes> {
  factory CopyWith$Query$Profile$profile$$Profile$respondent_status(
    Query$Profile$profile$$Profile$respondent_status instance,
    TRes Function(Query$Profile$profile$$Profile$respondent_status) then,
  ) = _CopyWithImpl$Query$Profile$profile$$Profile$respondent_status;

  factory CopyWith$Query$Profile$profile$$Profile$respondent_status.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Profile$profile$$Profile$respondent_status;

  TRes call({
    Query$Profile$profile$$Profile$respondent_status$status_email? status_email,
    Query$Profile$profile$$Profile$respondent_status$status_profile?
        status_profile,
    Query$Profile$profile$$Profile$respondent_status$status_activity?
        status_activity,
    String? $__typename,
  });
  CopyWith$Query$Profile$profile$$Profile$respondent_status$status_email<TRes>
      get status_email;
  CopyWith$Query$Profile$profile$$Profile$respondent_status$status_profile<TRes>
      get status_profile;
  CopyWith$Query$Profile$profile$$Profile$respondent_status$status_activity<
      TRes> get status_activity;
}

class _CopyWithImpl$Query$Profile$profile$$Profile$respondent_status<TRes>
    implements CopyWith$Query$Profile$profile$$Profile$respondent_status<TRes> {
  _CopyWithImpl$Query$Profile$profile$$Profile$respondent_status(
    this._instance,
    this._then,
  );

  final Query$Profile$profile$$Profile$respondent_status _instance;

  final TRes Function(Query$Profile$profile$$Profile$respondent_status) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status_email = _undefined,
    Object? status_profile = _undefined,
    Object? status_activity = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Profile$profile$$Profile$respondent_status(
        status_email: status_email == _undefined || status_email == null
            ? _instance.status_email
            : (status_email
                as Query$Profile$profile$$Profile$respondent_status$status_email),
        status_profile: status_profile == _undefined || status_profile == null
            ? _instance.status_profile
            : (status_profile
                as Query$Profile$profile$$Profile$respondent_status$status_profile),
        status_activity: status_activity == _undefined ||
                status_activity == null
            ? _instance.status_activity
            : (status_activity
                as Query$Profile$profile$$Profile$respondent_status$status_activity),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Profile$profile$$Profile$respondent_status$status_email<TRes>
      get status_email {
    final local$status_email = _instance.status_email;
    return CopyWith$Query$Profile$profile$$Profile$respondent_status$status_email(
        local$status_email, (e) => call(status_email: e));
  }

  CopyWith$Query$Profile$profile$$Profile$respondent_status$status_profile<TRes>
      get status_profile {
    final local$status_profile = _instance.status_profile;
    return CopyWith$Query$Profile$profile$$Profile$respondent_status$status_profile(
        local$status_profile, (e) => call(status_profile: e));
  }

  CopyWith$Query$Profile$profile$$Profile$respondent_status$status_activity<
      TRes> get status_activity {
    final local$status_activity = _instance.status_activity;
    return CopyWith$Query$Profile$profile$$Profile$respondent_status$status_activity(
        local$status_activity, (e) => call(status_activity: e));
  }
}

class _CopyWithStubImpl$Query$Profile$profile$$Profile$respondent_status<TRes>
    implements CopyWith$Query$Profile$profile$$Profile$respondent_status<TRes> {
  _CopyWithStubImpl$Query$Profile$profile$$Profile$respondent_status(this._res);

  TRes _res;

  call({
    Query$Profile$profile$$Profile$respondent_status$status_email? status_email,
    Query$Profile$profile$$Profile$respondent_status$status_profile?
        status_profile,
    Query$Profile$profile$$Profile$respondent_status$status_activity?
        status_activity,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Profile$profile$$Profile$respondent_status$status_email<TRes>
      get status_email =>
          CopyWith$Query$Profile$profile$$Profile$respondent_status$status_email
              .stub(_res);

  CopyWith$Query$Profile$profile$$Profile$respondent_status$status_profile<TRes>
      get status_profile =>
          CopyWith$Query$Profile$profile$$Profile$respondent_status$status_profile
              .stub(_res);

  CopyWith$Query$Profile$profile$$Profile$respondent_status$status_activity<
          TRes>
      get status_activity =>
          CopyWith$Query$Profile$profile$$Profile$respondent_status$status_activity
              .stub(_res);
}

class Query$Profile$profile$$Profile$respondent_status$status_email
    implements Fragment$ProfileFragment$respondent_status$status_email {
  Query$Profile$profile$$Profile$respondent_status$status_email({
    required this.status_code,
    required this.status_name,
    this.$__typename = 'Status',
  });

  factory Query$Profile$profile$$Profile$respondent_status$status_email.fromJson(
      Map<String, dynamic> json) {
    final l$status_code = json['status_code'];
    final l$status_name = json['status_name'];
    final l$$__typename = json['__typename'];
    return Query$Profile$profile$$Profile$respondent_status$status_email(
      status_code: (l$status_code as String),
      status_name: (l$status_name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String status_code;

  final String status_name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$status_code = status_code;
    _resultData['status_code'] = l$status_code;
    final l$status_name = status_name;
    _resultData['status_name'] = l$status_name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$status_code = status_code;
    final l$status_name = status_name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$status_code,
      l$status_name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$Profile$profile$$Profile$respondent_status$status_email) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$status_code = status_code;
    final lOther$status_code = other.status_code;
    if (l$status_code != lOther$status_code) {
      return false;
    }
    final l$status_name = status_name;
    final lOther$status_name = other.status_name;
    if (l$status_name != lOther$status_name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Profile$profile$$Profile$respondent_status$status_email
    on Query$Profile$profile$$Profile$respondent_status$status_email {
  CopyWith$Query$Profile$profile$$Profile$respondent_status$status_email<
          Query$Profile$profile$$Profile$respondent_status$status_email>
      get copyWith =>
          CopyWith$Query$Profile$profile$$Profile$respondent_status$status_email(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Profile$profile$$Profile$respondent_status$status_email<
    TRes> {
  factory CopyWith$Query$Profile$profile$$Profile$respondent_status$status_email(
    Query$Profile$profile$$Profile$respondent_status$status_email instance,
    TRes Function(Query$Profile$profile$$Profile$respondent_status$status_email)
        then,
  ) = _CopyWithImpl$Query$Profile$profile$$Profile$respondent_status$status_email;

  factory CopyWith$Query$Profile$profile$$Profile$respondent_status$status_email.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Profile$profile$$Profile$respondent_status$status_email;

  TRes call({
    String? status_code,
    String? status_name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Profile$profile$$Profile$respondent_status$status_email<
        TRes>
    implements
        CopyWith$Query$Profile$profile$$Profile$respondent_status$status_email<
            TRes> {
  _CopyWithImpl$Query$Profile$profile$$Profile$respondent_status$status_email(
    this._instance,
    this._then,
  );

  final Query$Profile$profile$$Profile$respondent_status$status_email _instance;

  final TRes Function(
      Query$Profile$profile$$Profile$respondent_status$status_email) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status_code = _undefined,
    Object? status_name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Profile$profile$$Profile$respondent_status$status_email(
        status_code: status_code == _undefined || status_code == null
            ? _instance.status_code
            : (status_code as String),
        status_name: status_name == _undefined || status_name == null
            ? _instance.status_name
            : (status_name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Profile$profile$$Profile$respondent_status$status_email<
        TRes>
    implements
        CopyWith$Query$Profile$profile$$Profile$respondent_status$status_email<
            TRes> {
  _CopyWithStubImpl$Query$Profile$profile$$Profile$respondent_status$status_email(
      this._res);

  TRes _res;

  call({
    String? status_code,
    String? status_name,
    String? $__typename,
  }) =>
      _res;
}

class Query$Profile$profile$$Profile$respondent_status$status_profile
    implements Fragment$ProfileFragment$respondent_status$status_profile {
  Query$Profile$profile$$Profile$respondent_status$status_profile({
    required this.status_code,
    required this.status_name,
    this.$__typename = 'Status',
  });

  factory Query$Profile$profile$$Profile$respondent_status$status_profile.fromJson(
      Map<String, dynamic> json) {
    final l$status_code = json['status_code'];
    final l$status_name = json['status_name'];
    final l$$__typename = json['__typename'];
    return Query$Profile$profile$$Profile$respondent_status$status_profile(
      status_code: (l$status_code as String),
      status_name: (l$status_name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String status_code;

  final String status_name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$status_code = status_code;
    _resultData['status_code'] = l$status_code;
    final l$status_name = status_name;
    _resultData['status_name'] = l$status_name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$status_code = status_code;
    final l$status_name = status_name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$status_code,
      l$status_name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$Profile$profile$$Profile$respondent_status$status_profile) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$status_code = status_code;
    final lOther$status_code = other.status_code;
    if (l$status_code != lOther$status_code) {
      return false;
    }
    final l$status_name = status_name;
    final lOther$status_name = other.status_name;
    if (l$status_name != lOther$status_name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Profile$profile$$Profile$respondent_status$status_profile
    on Query$Profile$profile$$Profile$respondent_status$status_profile {
  CopyWith$Query$Profile$profile$$Profile$respondent_status$status_profile<
          Query$Profile$profile$$Profile$respondent_status$status_profile>
      get copyWith =>
          CopyWith$Query$Profile$profile$$Profile$respondent_status$status_profile(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Profile$profile$$Profile$respondent_status$status_profile<
    TRes> {
  factory CopyWith$Query$Profile$profile$$Profile$respondent_status$status_profile(
    Query$Profile$profile$$Profile$respondent_status$status_profile instance,
    TRes Function(
            Query$Profile$profile$$Profile$respondent_status$status_profile)
        then,
  ) = _CopyWithImpl$Query$Profile$profile$$Profile$respondent_status$status_profile;

  factory CopyWith$Query$Profile$profile$$Profile$respondent_status$status_profile.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Profile$profile$$Profile$respondent_status$status_profile;

  TRes call({
    String? status_code,
    String? status_name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Profile$profile$$Profile$respondent_status$status_profile<
        TRes>
    implements
        CopyWith$Query$Profile$profile$$Profile$respondent_status$status_profile<
            TRes> {
  _CopyWithImpl$Query$Profile$profile$$Profile$respondent_status$status_profile(
    this._instance,
    this._then,
  );

  final Query$Profile$profile$$Profile$respondent_status$status_profile
      _instance;

  final TRes Function(
      Query$Profile$profile$$Profile$respondent_status$status_profile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status_code = _undefined,
    Object? status_name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Profile$profile$$Profile$respondent_status$status_profile(
        status_code: status_code == _undefined || status_code == null
            ? _instance.status_code
            : (status_code as String),
        status_name: status_name == _undefined || status_name == null
            ? _instance.status_name
            : (status_name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Profile$profile$$Profile$respondent_status$status_profile<
        TRes>
    implements
        CopyWith$Query$Profile$profile$$Profile$respondent_status$status_profile<
            TRes> {
  _CopyWithStubImpl$Query$Profile$profile$$Profile$respondent_status$status_profile(
      this._res);

  TRes _res;

  call({
    String? status_code,
    String? status_name,
    String? $__typename,
  }) =>
      _res;
}

class Query$Profile$profile$$Profile$respondent_status$status_activity
    implements Fragment$ProfileFragment$respondent_status$status_activity {
  Query$Profile$profile$$Profile$respondent_status$status_activity({
    required this.status_code,
    required this.status_name,
    this.$__typename = 'Status',
  });

  factory Query$Profile$profile$$Profile$respondent_status$status_activity.fromJson(
      Map<String, dynamic> json) {
    final l$status_code = json['status_code'];
    final l$status_name = json['status_name'];
    final l$$__typename = json['__typename'];
    return Query$Profile$profile$$Profile$respondent_status$status_activity(
      status_code: (l$status_code as String),
      status_name: (l$status_name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String status_code;

  final String status_name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$status_code = status_code;
    _resultData['status_code'] = l$status_code;
    final l$status_name = status_name;
    _resultData['status_name'] = l$status_name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$status_code = status_code;
    final l$status_name = status_name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$status_code,
      l$status_name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$Profile$profile$$Profile$respondent_status$status_activity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$status_code = status_code;
    final lOther$status_code = other.status_code;
    if (l$status_code != lOther$status_code) {
      return false;
    }
    final l$status_name = status_name;
    final lOther$status_name = other.status_name;
    if (l$status_name != lOther$status_name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Profile$profile$$Profile$respondent_status$status_activity
    on Query$Profile$profile$$Profile$respondent_status$status_activity {
  CopyWith$Query$Profile$profile$$Profile$respondent_status$status_activity<
          Query$Profile$profile$$Profile$respondent_status$status_activity>
      get copyWith =>
          CopyWith$Query$Profile$profile$$Profile$respondent_status$status_activity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Profile$profile$$Profile$respondent_status$status_activity<
    TRes> {
  factory CopyWith$Query$Profile$profile$$Profile$respondent_status$status_activity(
    Query$Profile$profile$$Profile$respondent_status$status_activity instance,
    TRes Function(
            Query$Profile$profile$$Profile$respondent_status$status_activity)
        then,
  ) = _CopyWithImpl$Query$Profile$profile$$Profile$respondent_status$status_activity;

  factory CopyWith$Query$Profile$profile$$Profile$respondent_status$status_activity.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Profile$profile$$Profile$respondent_status$status_activity;

  TRes call({
    String? status_code,
    String? status_name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Profile$profile$$Profile$respondent_status$status_activity<
        TRes>
    implements
        CopyWith$Query$Profile$profile$$Profile$respondent_status$status_activity<
            TRes> {
  _CopyWithImpl$Query$Profile$profile$$Profile$respondent_status$status_activity(
    this._instance,
    this._then,
  );

  final Query$Profile$profile$$Profile$respondent_status$status_activity
      _instance;

  final TRes Function(
      Query$Profile$profile$$Profile$respondent_status$status_activity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status_code = _undefined,
    Object? status_name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Profile$profile$$Profile$respondent_status$status_activity(
        status_code: status_code == _undefined || status_code == null
            ? _instance.status_code
            : (status_code as String),
        status_name: status_name == _undefined || status_name == null
            ? _instance.status_name
            : (status_name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Profile$profile$$Profile$respondent_status$status_activity<
        TRes>
    implements
        CopyWith$Query$Profile$profile$$Profile$respondent_status$status_activity<
            TRes> {
  _CopyWithStubImpl$Query$Profile$profile$$Profile$respondent_status$status_activity(
      this._res);

  TRes _res;

  call({
    String? status_code,
    String? status_name,
    String? $__typename,
  }) =>
      _res;
}

class Query$Profile$profile$$ReturnError implements Query$Profile$profile {
  Query$Profile$profile$$ReturnError({
    this.$__typename = 'ReturnError',
    required this.message,
    required this.name,
  });

  factory Query$Profile$profile$$ReturnError.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$message = json['message'];
    final l$name = json['name'];
    return Query$Profile$profile$$ReturnError(
      $__typename: (l$$__typename as String),
      message: (l$message as String),
      name: (l$name as String),
    );
  }

  final String $__typename;

  final String message;

  final String name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$message = message;
    final l$name = name;
    return Object.hashAll([
      l$$__typename,
      l$message,
      l$name,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Profile$profile$$ReturnError) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Profile$profile$$ReturnError
    on Query$Profile$profile$$ReturnError {
  CopyWith$Query$Profile$profile$$ReturnError<
          Query$Profile$profile$$ReturnError>
      get copyWith => CopyWith$Query$Profile$profile$$ReturnError(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Profile$profile$$ReturnError<TRes> {
  factory CopyWith$Query$Profile$profile$$ReturnError(
    Query$Profile$profile$$ReturnError instance,
    TRes Function(Query$Profile$profile$$ReturnError) then,
  ) = _CopyWithImpl$Query$Profile$profile$$ReturnError;

  factory CopyWith$Query$Profile$profile$$ReturnError.stub(TRes res) =
      _CopyWithStubImpl$Query$Profile$profile$$ReturnError;

  TRes call({
    String? $__typename,
    String? message,
    String? name,
  });
}

class _CopyWithImpl$Query$Profile$profile$$ReturnError<TRes>
    implements CopyWith$Query$Profile$profile$$ReturnError<TRes> {
  _CopyWithImpl$Query$Profile$profile$$ReturnError(
    this._instance,
    this._then,
  );

  final Query$Profile$profile$$ReturnError _instance;

  final TRes Function(Query$Profile$profile$$ReturnError) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? message = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Query$Profile$profile$$ReturnError(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
      ));
}

class _CopyWithStubImpl$Query$Profile$profile$$ReturnError<TRes>
    implements CopyWith$Query$Profile$profile$$ReturnError<TRes> {
  _CopyWithStubImpl$Query$Profile$profile$$ReturnError(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? message,
    String? name,
  }) =>
      _res;
}

class Variables$Query$RefreshToken {
  factory Variables$Query$RefreshToken({required String refresh_token}) =>
      Variables$Query$RefreshToken._({
        r'refresh_token': refresh_token,
      });

  Variables$Query$RefreshToken._(this._$data);

  factory Variables$Query$RefreshToken.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$refresh_token = data['refresh_token'];
    result$data['refresh_token'] = (l$refresh_token as String);
    return Variables$Query$RefreshToken._(result$data);
  }

  Map<String, dynamic> _$data;

  String get refresh_token => (_$data['refresh_token'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$refresh_token = refresh_token;
    result$data['refresh_token'] = l$refresh_token;
    return result$data;
  }

  CopyWith$Variables$Query$RefreshToken<Variables$Query$RefreshToken>
      get copyWith => CopyWith$Variables$Query$RefreshToken(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$RefreshToken) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$refresh_token = refresh_token;
    final lOther$refresh_token = other.refresh_token;
    if (l$refresh_token != lOther$refresh_token) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$refresh_token = refresh_token;
    return Object.hashAll([l$refresh_token]);
  }
}

abstract class CopyWith$Variables$Query$RefreshToken<TRes> {
  factory CopyWith$Variables$Query$RefreshToken(
    Variables$Query$RefreshToken instance,
    TRes Function(Variables$Query$RefreshToken) then,
  ) = _CopyWithImpl$Variables$Query$RefreshToken;

  factory CopyWith$Variables$Query$RefreshToken.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$RefreshToken;

  TRes call({String? refresh_token});
}

class _CopyWithImpl$Variables$Query$RefreshToken<TRes>
    implements CopyWith$Variables$Query$RefreshToken<TRes> {
  _CopyWithImpl$Variables$Query$RefreshToken(
    this._instance,
    this._then,
  );

  final Variables$Query$RefreshToken _instance;

  final TRes Function(Variables$Query$RefreshToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? refresh_token = _undefined}) =>
      _then(Variables$Query$RefreshToken._({
        ..._instance._$data,
        if (refresh_token != _undefined && refresh_token != null)
          'refresh_token': (refresh_token as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$RefreshToken<TRes>
    implements CopyWith$Variables$Query$RefreshToken<TRes> {
  _CopyWithStubImpl$Variables$Query$RefreshToken(this._res);

  TRes _res;

  call({String? refresh_token}) => _res;
}

class Query$RefreshToken {
  Query$RefreshToken({
    required this.refresh_token,
    this.$__typename = 'Query',
  });

  factory Query$RefreshToken.fromJson(Map<String, dynamic> json) {
    final l$refresh_token = json['refresh_token'];
    final l$$__typename = json['__typename'];
    return Query$RefreshToken(
      refresh_token: Query$RefreshToken$refresh_token.fromJson(
          (l$refresh_token as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$RefreshToken$refresh_token refresh_token;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$refresh_token = refresh_token;
    _resultData['refresh_token'] = l$refresh_token.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$refresh_token = refresh_token;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$refresh_token,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$RefreshToken) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$refresh_token = refresh_token;
    final lOther$refresh_token = other.refresh_token;
    if (l$refresh_token != lOther$refresh_token) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$RefreshToken on Query$RefreshToken {
  CopyWith$Query$RefreshToken<Query$RefreshToken> get copyWith =>
      CopyWith$Query$RefreshToken(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$RefreshToken<TRes> {
  factory CopyWith$Query$RefreshToken(
    Query$RefreshToken instance,
    TRes Function(Query$RefreshToken) then,
  ) = _CopyWithImpl$Query$RefreshToken;

  factory CopyWith$Query$RefreshToken.stub(TRes res) =
      _CopyWithStubImpl$Query$RefreshToken;

  TRes call({
    Query$RefreshToken$refresh_token? refresh_token,
    String? $__typename,
  });
  CopyWith$Query$RefreshToken$refresh_token<TRes> get refresh_token;
}

class _CopyWithImpl$Query$RefreshToken<TRes>
    implements CopyWith$Query$RefreshToken<TRes> {
  _CopyWithImpl$Query$RefreshToken(
    this._instance,
    this._then,
  );

  final Query$RefreshToken _instance;

  final TRes Function(Query$RefreshToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? refresh_token = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RefreshToken(
        refresh_token: refresh_token == _undefined || refresh_token == null
            ? _instance.refresh_token
            : (refresh_token as Query$RefreshToken$refresh_token),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$RefreshToken$refresh_token<TRes> get refresh_token {
    final local$refresh_token = _instance.refresh_token;
    return CopyWith$Query$RefreshToken$refresh_token(
        local$refresh_token, (e) => call(refresh_token: e));
  }
}

class _CopyWithStubImpl$Query$RefreshToken<TRes>
    implements CopyWith$Query$RefreshToken<TRes> {
  _CopyWithStubImpl$Query$RefreshToken(this._res);

  TRes _res;

  call({
    Query$RefreshToken$refresh_token? refresh_token,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$RefreshToken$refresh_token<TRes> get refresh_token =>
      CopyWith$Query$RefreshToken$refresh_token.stub(_res);
}

const documentNodeQueryRefreshToken = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'RefreshToken'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'refresh_token')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'refresh_token'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'refresh_token'),
            value: VariableNode(name: NameNode(value: 'refresh_token')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ReturnTokens'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'access_token'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'refresh_token'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ReturnError'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'message'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$RefreshToken$refresh_token {
  Query$RefreshToken$refresh_token({required this.$__typename});

  factory Query$RefreshToken$refresh_token.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "ReturnTokens":
        return Query$RefreshToken$refresh_token$$ReturnTokens.fromJson(json);

      case "ReturnError":
        return Query$RefreshToken$refresh_token$$ReturnError.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$RefreshToken$refresh_token(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$RefreshToken$refresh_token) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$RefreshToken$refresh_token
    on Query$RefreshToken$refresh_token {
  CopyWith$Query$RefreshToken$refresh_token<Query$RefreshToken$refresh_token>
      get copyWith => CopyWith$Query$RefreshToken$refresh_token(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Query$RefreshToken$refresh_token$$ReturnTokens)
        returnTokens,
    required _T Function(Query$RefreshToken$refresh_token$$ReturnError)
        returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ReturnTokens":
        return returnTokens(
            this as Query$RefreshToken$refresh_token$$ReturnTokens);

      case "ReturnError":
        return returnError(
            this as Query$RefreshToken$refresh_token$$ReturnError);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$RefreshToken$refresh_token$$ReturnTokens)? returnTokens,
    _T Function(Query$RefreshToken$refresh_token$$ReturnError)? returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ReturnTokens":
        if (returnTokens != null) {
          return returnTokens(
              this as Query$RefreshToken$refresh_token$$ReturnTokens);
        } else {
          return orElse();
        }

      case "ReturnError":
        if (returnError != null) {
          return returnError(
              this as Query$RefreshToken$refresh_token$$ReturnError);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$RefreshToken$refresh_token<TRes> {
  factory CopyWith$Query$RefreshToken$refresh_token(
    Query$RefreshToken$refresh_token instance,
    TRes Function(Query$RefreshToken$refresh_token) then,
  ) = _CopyWithImpl$Query$RefreshToken$refresh_token;

  factory CopyWith$Query$RefreshToken$refresh_token.stub(TRes res) =
      _CopyWithStubImpl$Query$RefreshToken$refresh_token;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$RefreshToken$refresh_token<TRes>
    implements CopyWith$Query$RefreshToken$refresh_token<TRes> {
  _CopyWithImpl$Query$RefreshToken$refresh_token(
    this._instance,
    this._then,
  );

  final Query$RefreshToken$refresh_token _instance;

  final TRes Function(Query$RefreshToken$refresh_token) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$RefreshToken$refresh_token(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$RefreshToken$refresh_token<TRes>
    implements CopyWith$Query$RefreshToken$refresh_token<TRes> {
  _CopyWithStubImpl$Query$RefreshToken$refresh_token(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$RefreshToken$refresh_token$$ReturnTokens
    implements Query$RefreshToken$refresh_token {
  Query$RefreshToken$refresh_token$$ReturnTokens({
    this.$__typename = 'ReturnTokens',
    required this.access_token,
    required this.refresh_token,
  });

  factory Query$RefreshToken$refresh_token$$ReturnTokens.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$access_token = json['access_token'];
    final l$refresh_token = json['refresh_token'];
    return Query$RefreshToken$refresh_token$$ReturnTokens(
      $__typename: (l$$__typename as String),
      access_token: (l$access_token as String),
      refresh_token: (l$refresh_token as String),
    );
  }

  final String $__typename;

  final String access_token;

  final String refresh_token;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$access_token = access_token;
    _resultData['access_token'] = l$access_token;
    final l$refresh_token = refresh_token;
    _resultData['refresh_token'] = l$refresh_token;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$access_token = access_token;
    final l$refresh_token = refresh_token;
    return Object.hashAll([
      l$$__typename,
      l$access_token,
      l$refresh_token,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$RefreshToken$refresh_token$$ReturnTokens) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$access_token = access_token;
    final lOther$access_token = other.access_token;
    if (l$access_token != lOther$access_token) {
      return false;
    }
    final l$refresh_token = refresh_token;
    final lOther$refresh_token = other.refresh_token;
    if (l$refresh_token != lOther$refresh_token) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$RefreshToken$refresh_token$$ReturnTokens
    on Query$RefreshToken$refresh_token$$ReturnTokens {
  CopyWith$Query$RefreshToken$refresh_token$$ReturnTokens<
          Query$RefreshToken$refresh_token$$ReturnTokens>
      get copyWith => CopyWith$Query$RefreshToken$refresh_token$$ReturnTokens(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RefreshToken$refresh_token$$ReturnTokens<TRes> {
  factory CopyWith$Query$RefreshToken$refresh_token$$ReturnTokens(
    Query$RefreshToken$refresh_token$$ReturnTokens instance,
    TRes Function(Query$RefreshToken$refresh_token$$ReturnTokens) then,
  ) = _CopyWithImpl$Query$RefreshToken$refresh_token$$ReturnTokens;

  factory CopyWith$Query$RefreshToken$refresh_token$$ReturnTokens.stub(
          TRes res) =
      _CopyWithStubImpl$Query$RefreshToken$refresh_token$$ReturnTokens;

  TRes call({
    String? $__typename,
    String? access_token,
    String? refresh_token,
  });
}

class _CopyWithImpl$Query$RefreshToken$refresh_token$$ReturnTokens<TRes>
    implements CopyWith$Query$RefreshToken$refresh_token$$ReturnTokens<TRes> {
  _CopyWithImpl$Query$RefreshToken$refresh_token$$ReturnTokens(
    this._instance,
    this._then,
  );

  final Query$RefreshToken$refresh_token$$ReturnTokens _instance;

  final TRes Function(Query$RefreshToken$refresh_token$$ReturnTokens) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? access_token = _undefined,
    Object? refresh_token = _undefined,
  }) =>
      _then(Query$RefreshToken$refresh_token$$ReturnTokens(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        access_token: access_token == _undefined || access_token == null
            ? _instance.access_token
            : (access_token as String),
        refresh_token: refresh_token == _undefined || refresh_token == null
            ? _instance.refresh_token
            : (refresh_token as String),
      ));
}

class _CopyWithStubImpl$Query$RefreshToken$refresh_token$$ReturnTokens<TRes>
    implements CopyWith$Query$RefreshToken$refresh_token$$ReturnTokens<TRes> {
  _CopyWithStubImpl$Query$RefreshToken$refresh_token$$ReturnTokens(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? access_token,
    String? refresh_token,
  }) =>
      _res;
}

class Query$RefreshToken$refresh_token$$ReturnError
    implements Query$RefreshToken$refresh_token {
  Query$RefreshToken$refresh_token$$ReturnError({
    this.$__typename = 'ReturnError',
    required this.message,
    required this.name,
  });

  factory Query$RefreshToken$refresh_token$$ReturnError.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$message = json['message'];
    final l$name = json['name'];
    return Query$RefreshToken$refresh_token$$ReturnError(
      $__typename: (l$$__typename as String),
      message: (l$message as String),
      name: (l$name as String),
    );
  }

  final String $__typename;

  final String message;

  final String name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$message = message;
    final l$name = name;
    return Object.hashAll([
      l$$__typename,
      l$message,
      l$name,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$RefreshToken$refresh_token$$ReturnError) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$RefreshToken$refresh_token$$ReturnError
    on Query$RefreshToken$refresh_token$$ReturnError {
  CopyWith$Query$RefreshToken$refresh_token$$ReturnError<
          Query$RefreshToken$refresh_token$$ReturnError>
      get copyWith => CopyWith$Query$RefreshToken$refresh_token$$ReturnError(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RefreshToken$refresh_token$$ReturnError<TRes> {
  factory CopyWith$Query$RefreshToken$refresh_token$$ReturnError(
    Query$RefreshToken$refresh_token$$ReturnError instance,
    TRes Function(Query$RefreshToken$refresh_token$$ReturnError) then,
  ) = _CopyWithImpl$Query$RefreshToken$refresh_token$$ReturnError;

  factory CopyWith$Query$RefreshToken$refresh_token$$ReturnError.stub(
          TRes res) =
      _CopyWithStubImpl$Query$RefreshToken$refresh_token$$ReturnError;

  TRes call({
    String? $__typename,
    String? message,
    String? name,
  });
}

class _CopyWithImpl$Query$RefreshToken$refresh_token$$ReturnError<TRes>
    implements CopyWith$Query$RefreshToken$refresh_token$$ReturnError<TRes> {
  _CopyWithImpl$Query$RefreshToken$refresh_token$$ReturnError(
    this._instance,
    this._then,
  );

  final Query$RefreshToken$refresh_token$$ReturnError _instance;

  final TRes Function(Query$RefreshToken$refresh_token$$ReturnError) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? message = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Query$RefreshToken$refresh_token$$ReturnError(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
      ));
}

class _CopyWithStubImpl$Query$RefreshToken$refresh_token$$ReturnError<TRes>
    implements CopyWith$Query$RefreshToken$refresh_token$$ReturnError<TRes> {
  _CopyWithStubImpl$Query$RefreshToken$refresh_token$$ReturnError(this._res);

  TRes _res;

  call({
    String? $__typename,
    String? message,
    String? name,
  }) =>
      _res;
}

class Variables$Mutation$SendCodeVerify {
  factory Variables$Mutation$SendCodeVerify(
          {required Input$UsernameInput data}) =>
      Variables$Mutation$SendCodeVerify._({
        r'data': data,
      });

  Variables$Mutation$SendCodeVerify._(this._$data);

  factory Variables$Mutation$SendCodeVerify.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$UsernameInput.fromJson((l$data as Map<String, dynamic>));
    return Variables$Mutation$SendCodeVerify._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UsernameInput get data => (_$data['data'] as Input$UsernameInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$SendCodeVerify<Variables$Mutation$SendCodeVerify>
      get copyWith => CopyWith$Variables$Mutation$SendCodeVerify(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$SendCodeVerify) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    return Object.hashAll([l$data]);
  }
}

abstract class CopyWith$Variables$Mutation$SendCodeVerify<TRes> {
  factory CopyWith$Variables$Mutation$SendCodeVerify(
    Variables$Mutation$SendCodeVerify instance,
    TRes Function(Variables$Mutation$SendCodeVerify) then,
  ) = _CopyWithImpl$Variables$Mutation$SendCodeVerify;

  factory CopyWith$Variables$Mutation$SendCodeVerify.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SendCodeVerify;

  TRes call({Input$UsernameInput? data});
}

class _CopyWithImpl$Variables$Mutation$SendCodeVerify<TRes>
    implements CopyWith$Variables$Mutation$SendCodeVerify<TRes> {
  _CopyWithImpl$Variables$Mutation$SendCodeVerify(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SendCodeVerify _instance;

  final TRes Function(Variables$Mutation$SendCodeVerify) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$SendCodeVerify._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$UsernameInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SendCodeVerify<TRes>
    implements CopyWith$Variables$Mutation$SendCodeVerify<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SendCodeVerify(this._res);

  TRes _res;

  call({Input$UsernameInput? data}) => _res;
}

class Mutation$SendCodeVerify {
  Mutation$SendCodeVerify({
    required this.web_send_code_verified,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SendCodeVerify.fromJson(Map<String, dynamic> json) {
    final l$web_send_code_verified = json['web_send_code_verified'];
    final l$$__typename = json['__typename'];
    return Mutation$SendCodeVerify(
      web_send_code_verified:
          Mutation$SendCodeVerify$web_send_code_verified.fromJson(
              (l$web_send_code_verified as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SendCodeVerify$web_send_code_verified web_send_code_verified;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$web_send_code_verified = web_send_code_verified;
    _resultData['web_send_code_verified'] = l$web_send_code_verified.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$web_send_code_verified = web_send_code_verified;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$web_send_code_verified,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SendCodeVerify) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$web_send_code_verified = web_send_code_verified;
    final lOther$web_send_code_verified = other.web_send_code_verified;
    if (l$web_send_code_verified != lOther$web_send_code_verified) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SendCodeVerify on Mutation$SendCodeVerify {
  CopyWith$Mutation$SendCodeVerify<Mutation$SendCodeVerify> get copyWith =>
      CopyWith$Mutation$SendCodeVerify(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SendCodeVerify<TRes> {
  factory CopyWith$Mutation$SendCodeVerify(
    Mutation$SendCodeVerify instance,
    TRes Function(Mutation$SendCodeVerify) then,
  ) = _CopyWithImpl$Mutation$SendCodeVerify;

  factory CopyWith$Mutation$SendCodeVerify.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SendCodeVerify;

  TRes call({
    Mutation$SendCodeVerify$web_send_code_verified? web_send_code_verified,
    String? $__typename,
  });
  CopyWith$Mutation$SendCodeVerify$web_send_code_verified<TRes>
      get web_send_code_verified;
}

class _CopyWithImpl$Mutation$SendCodeVerify<TRes>
    implements CopyWith$Mutation$SendCodeVerify<TRes> {
  _CopyWithImpl$Mutation$SendCodeVerify(
    this._instance,
    this._then,
  );

  final Mutation$SendCodeVerify _instance;

  final TRes Function(Mutation$SendCodeVerify) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? web_send_code_verified = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SendCodeVerify(
        web_send_code_verified: web_send_code_verified == _undefined ||
                web_send_code_verified == null
            ? _instance.web_send_code_verified
            : (web_send_code_verified
                as Mutation$SendCodeVerify$web_send_code_verified),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$SendCodeVerify$web_send_code_verified<TRes>
      get web_send_code_verified {
    final local$web_send_code_verified = _instance.web_send_code_verified;
    return CopyWith$Mutation$SendCodeVerify$web_send_code_verified(
        local$web_send_code_verified, (e) => call(web_send_code_verified: e));
  }
}

class _CopyWithStubImpl$Mutation$SendCodeVerify<TRes>
    implements CopyWith$Mutation$SendCodeVerify<TRes> {
  _CopyWithStubImpl$Mutation$SendCodeVerify(this._res);

  TRes _res;

  call({
    Mutation$SendCodeVerify$web_send_code_verified? web_send_code_verified,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$SendCodeVerify$web_send_code_verified<TRes>
      get web_send_code_verified =>
          CopyWith$Mutation$SendCodeVerify$web_send_code_verified.stub(_res);
}

const documentNodeMutationSendCodeVerify = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SendCodeVerify'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'UsernameInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'web_send_code_verified'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: VariableNode(name: NameNode(value: 'data')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ReturnTimer'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'timer'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ReturnError'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'message'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Mutation$SendCodeVerify$web_send_code_verified {
  Mutation$SendCodeVerify$web_send_code_verified({required this.$__typename});

  factory Mutation$SendCodeVerify$web_send_code_verified.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "ReturnTimer":
        return Mutation$SendCodeVerify$web_send_code_verified$$ReturnTimer
            .fromJson(json);

      case "ReturnError":
        return Mutation$SendCodeVerify$web_send_code_verified$$ReturnError
            .fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Mutation$SendCodeVerify$web_send_code_verified(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SendCodeVerify$web_send_code_verified) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SendCodeVerify$web_send_code_verified
    on Mutation$SendCodeVerify$web_send_code_verified {
  CopyWith$Mutation$SendCodeVerify$web_send_code_verified<
          Mutation$SendCodeVerify$web_send_code_verified>
      get copyWith => CopyWith$Mutation$SendCodeVerify$web_send_code_verified(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Mutation$SendCodeVerify$web_send_code_verified$$ReturnTimer)
        returnTimer,
    required _T Function(
            Mutation$SendCodeVerify$web_send_code_verified$$ReturnError)
        returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ReturnTimer":
        return returnTimer(this
            as Mutation$SendCodeVerify$web_send_code_verified$$ReturnTimer);

      case "ReturnError":
        return returnError(this
            as Mutation$SendCodeVerify$web_send_code_verified$$ReturnError);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Mutation$SendCodeVerify$web_send_code_verified$$ReturnTimer)?
        returnTimer,
    _T Function(Mutation$SendCodeVerify$web_send_code_verified$$ReturnError)?
        returnError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ReturnTimer":
        if (returnTimer != null) {
          return returnTimer(this
              as Mutation$SendCodeVerify$web_send_code_verified$$ReturnTimer);
        } else {
          return orElse();
        }

      case "ReturnError":
        if (returnError != null) {
          return returnError(this
              as Mutation$SendCodeVerify$web_send_code_verified$$ReturnError);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$SendCodeVerify$web_send_code_verified<TRes> {
  factory CopyWith$Mutation$SendCodeVerify$web_send_code_verified(
    Mutation$SendCodeVerify$web_send_code_verified instance,
    TRes Function(Mutation$SendCodeVerify$web_send_code_verified) then,
  ) = _CopyWithImpl$Mutation$SendCodeVerify$web_send_code_verified;

  factory CopyWith$Mutation$SendCodeVerify$web_send_code_verified.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SendCodeVerify$web_send_code_verified;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$SendCodeVerify$web_send_code_verified<TRes>
    implements CopyWith$Mutation$SendCodeVerify$web_send_code_verified<TRes> {
  _CopyWithImpl$Mutation$SendCodeVerify$web_send_code_verified(
    this._instance,
    this._then,
  );

  final Mutation$SendCodeVerify$web_send_code_verified _instance;

  final TRes Function(Mutation$SendCodeVerify$web_send_code_verified) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$SendCodeVerify$web_send_code_verified(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$SendCodeVerify$web_send_code_verified<TRes>
    implements CopyWith$Mutation$SendCodeVerify$web_send_code_verified<TRes> {
  _CopyWithStubImpl$Mutation$SendCodeVerify$web_send_code_verified(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$SendCodeVerify$web_send_code_verified$$ReturnTimer
    implements Mutation$SendCodeVerify$web_send_code_verified {
  Mutation$SendCodeVerify$web_send_code_verified$$ReturnTimer({
    this.$__typename = 'ReturnTimer',
    required this.timer,
  });

  factory Mutation$SendCodeVerify$web_send_code_verified$$ReturnTimer.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$timer = json['timer'];
    return Mutation$SendCodeVerify$web_send_code_verified$$ReturnTimer(
      $__typename: (l$$__typename as String),
      timer: (l$timer as String),
    );
  }

  final String $__typename;

  final String timer;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$timer = timer;
    _resultData['timer'] = l$timer;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$timer = timer;
    return Object.hashAll([
      l$$__typename,
      l$timer,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$SendCodeVerify$web_send_code_verified$$ReturnTimer) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$timer = timer;
    final lOther$timer = other.timer;
    if (l$timer != lOther$timer) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SendCodeVerify$web_send_code_verified$$ReturnTimer
    on Mutation$SendCodeVerify$web_send_code_verified$$ReturnTimer {
  CopyWith$Mutation$SendCodeVerify$web_send_code_verified$$ReturnTimer<
          Mutation$SendCodeVerify$web_send_code_verified$$ReturnTimer>
      get copyWith =>
          CopyWith$Mutation$SendCodeVerify$web_send_code_verified$$ReturnTimer(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SendCodeVerify$web_send_code_verified$$ReturnTimer<
    TRes> {
  factory CopyWith$Mutation$SendCodeVerify$web_send_code_verified$$ReturnTimer(
    Mutation$SendCodeVerify$web_send_code_verified$$ReturnTimer instance,
    TRes Function(Mutation$SendCodeVerify$web_send_code_verified$$ReturnTimer)
        then,
  ) = _CopyWithImpl$Mutation$SendCodeVerify$web_send_code_verified$$ReturnTimer;

  factory CopyWith$Mutation$SendCodeVerify$web_send_code_verified$$ReturnTimer.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SendCodeVerify$web_send_code_verified$$ReturnTimer;

  TRes call({
    String? $__typename,
    String? timer,
  });
}

class _CopyWithImpl$Mutation$SendCodeVerify$web_send_code_verified$$ReturnTimer<
        TRes>
    implements
        CopyWith$Mutation$SendCodeVerify$web_send_code_verified$$ReturnTimer<
            TRes> {
  _CopyWithImpl$Mutation$SendCodeVerify$web_send_code_verified$$ReturnTimer(
    this._instance,
    this._then,
  );

  final Mutation$SendCodeVerify$web_send_code_verified$$ReturnTimer _instance;

  final TRes Function(
      Mutation$SendCodeVerify$web_send_code_verified$$ReturnTimer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? timer = _undefined,
  }) =>
      _then(Mutation$SendCodeVerify$web_send_code_verified$$ReturnTimer(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        timer: timer == _undefined || timer == null
            ? _instance.timer
            : (timer as String),
      ));
}

class _CopyWithStubImpl$Mutation$SendCodeVerify$web_send_code_verified$$ReturnTimer<
        TRes>
    implements
        CopyWith$Mutation$SendCodeVerify$web_send_code_verified$$ReturnTimer<
            TRes> {
  _CopyWithStubImpl$Mutation$SendCodeVerify$web_send_code_verified$$ReturnTimer(
      this._res);

  TRes _res;

  call({
    String? $__typename,
    String? timer,
  }) =>
      _res;
}

class Mutation$SendCodeVerify$web_send_code_verified$$ReturnError
    implements Mutation$SendCodeVerify$web_send_code_verified {
  Mutation$SendCodeVerify$web_send_code_verified$$ReturnError({
    this.$__typename = 'ReturnError',
    required this.message,
    required this.name,
  });

  factory Mutation$SendCodeVerify$web_send_code_verified$$ReturnError.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$message = json['message'];
    final l$name = json['name'];
    return Mutation$SendCodeVerify$web_send_code_verified$$ReturnError(
      $__typename: (l$$__typename as String),
      message: (l$message as String),
      name: (l$name as String),
    );
  }

  final String $__typename;

  final String message;

  final String name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$message = message;
    final l$name = name;
    return Object.hashAll([
      l$$__typename,
      l$message,
      l$name,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$SendCodeVerify$web_send_code_verified$$ReturnError) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SendCodeVerify$web_send_code_verified$$ReturnError
    on Mutation$SendCodeVerify$web_send_code_verified$$ReturnError {
  CopyWith$Mutation$SendCodeVerify$web_send_code_verified$$ReturnError<
          Mutation$SendCodeVerify$web_send_code_verified$$ReturnError>
      get copyWith =>
          CopyWith$Mutation$SendCodeVerify$web_send_code_verified$$ReturnError(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SendCodeVerify$web_send_code_verified$$ReturnError<
    TRes> {
  factory CopyWith$Mutation$SendCodeVerify$web_send_code_verified$$ReturnError(
    Mutation$SendCodeVerify$web_send_code_verified$$ReturnError instance,
    TRes Function(Mutation$SendCodeVerify$web_send_code_verified$$ReturnError)
        then,
  ) = _CopyWithImpl$Mutation$SendCodeVerify$web_send_code_verified$$ReturnError;

  factory CopyWith$Mutation$SendCodeVerify$web_send_code_verified$$ReturnError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SendCodeVerify$web_send_code_verified$$ReturnError;

  TRes call({
    String? $__typename,
    String? message,
    String? name,
  });
}

class _CopyWithImpl$Mutation$SendCodeVerify$web_send_code_verified$$ReturnError<
        TRes>
    implements
        CopyWith$Mutation$SendCodeVerify$web_send_code_verified$$ReturnError<
            TRes> {
  _CopyWithImpl$Mutation$SendCodeVerify$web_send_code_verified$$ReturnError(
    this._instance,
    this._then,
  );

  final Mutation$SendCodeVerify$web_send_code_verified$$ReturnError _instance;

  final TRes Function(
      Mutation$SendCodeVerify$web_send_code_verified$$ReturnError) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? message = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Mutation$SendCodeVerify$web_send_code_verified$$ReturnError(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
      ));
}

class _CopyWithStubImpl$Mutation$SendCodeVerify$web_send_code_verified$$ReturnError<
        TRes>
    implements
        CopyWith$Mutation$SendCodeVerify$web_send_code_verified$$ReturnError<
            TRes> {
  _CopyWithStubImpl$Mutation$SendCodeVerify$web_send_code_verified$$ReturnError(
      this._res);

  TRes _res;

  call({
    String? $__typename,
    String? message,
    String? name,
  }) =>
      _res;
}
