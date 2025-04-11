class Input$CheckCodeInput {
  factory Input$CheckCodeInput({
    String? email,
    String? phone,
    int? code,
    String? recruit_session_uid,
  }) =>
      Input$CheckCodeInput._({
        if (email != null) r'email': email,
        if (phone != null) r'phone': phone,
        if (code != null) r'code': code,
        if (recruit_session_uid != null)
          r'recruit_session_uid': recruit_session_uid,
      });

  Input$CheckCodeInput._(this._$data);

  factory Input$CheckCodeInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = (l$phone as String?);
    }
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = (l$code as int?);
    }
    if (data.containsKey('recruit_session_uid')) {
      final l$recruit_session_uid = data['recruit_session_uid'];
      result$data['recruit_session_uid'] = (l$recruit_session_uid as String?);
    }
    return Input$CheckCodeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get email => (_$data['email'] as String?);

  String? get phone => (_$data['phone'] as String?);

  int? get code => (_$data['code'] as int?);

  String? get recruit_session_uid => (_$data['recruit_session_uid'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone;
    }
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code;
    }
    if (_$data.containsKey('recruit_session_uid')) {
      final l$recruit_session_uid = recruit_session_uid;
      result$data['recruit_session_uid'] = l$recruit_session_uid;
    }
    return result$data;
  }

  CopyWith$Input$CheckCodeInput<Input$CheckCodeInput> get copyWith =>
      CopyWith$Input$CheckCodeInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CheckCodeInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (_$data.containsKey('code') != other._$data.containsKey('code')) {
      return false;
    }
    if (l$code != lOther$code) {
      return false;
    }
    final l$recruit_session_uid = recruit_session_uid;
    final lOther$recruit_session_uid = other.recruit_session_uid;
    if (_$data.containsKey('recruit_session_uid') !=
        other._$data.containsKey('recruit_session_uid')) {
      return false;
    }
    if (l$recruit_session_uid != lOther$recruit_session_uid) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$phone = phone;
    final l$code = code;
    final l$recruit_session_uid = recruit_session_uid;
    return Object.hashAll([
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('phone') ? l$phone : const {},
      _$data.containsKey('code') ? l$code : const {},
      _$data.containsKey('recruit_session_uid')
          ? l$recruit_session_uid
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$CheckCodeInput<TRes> {
  factory CopyWith$Input$CheckCodeInput(
    Input$CheckCodeInput instance,
    TRes Function(Input$CheckCodeInput) then,
  ) = _CopyWithImpl$Input$CheckCodeInput;

  factory CopyWith$Input$CheckCodeInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CheckCodeInput;

  TRes call({
    String? email,
    String? phone,
    int? code,
    String? recruit_session_uid,
  });
}

class _CopyWithImpl$Input$CheckCodeInput<TRes>
    implements CopyWith$Input$CheckCodeInput<TRes> {
  _CopyWithImpl$Input$CheckCodeInput(
    this._instance,
    this._then,
  );

  final Input$CheckCodeInput _instance;

  final TRes Function(Input$CheckCodeInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? phone = _undefined,
    Object? code = _undefined,
    Object? recruit_session_uid = _undefined,
  }) =>
      _then(Input$CheckCodeInput._({
        ..._instance._$data,
        if (email != _undefined) 'email': (email as String?),
        if (phone != _undefined) 'phone': (phone as String?),
        if (code != _undefined) 'code': (code as int?),
        if (recruit_session_uid != _undefined)
          'recruit_session_uid': (recruit_session_uid as String?),
      }));
}

class _CopyWithStubImpl$Input$CheckCodeInput<TRes>
    implements CopyWith$Input$CheckCodeInput<TRes> {
  _CopyWithStubImpl$Input$CheckCodeInput(this._res);

  TRes _res;

  call({
    String? email,
    String? phone,
    int? code,
    String? recruit_session_uid,
  }) =>
      _res;
}

class Input$CheckCodeVerifiedInput {
  factory Input$CheckCodeVerifiedInput({
    String? email,
    String? phone,
    int? code,
    String? recruit_session_uid,
  }) =>
      Input$CheckCodeVerifiedInput._({
        if (email != null) r'email': email,
        if (phone != null) r'phone': phone,
        if (code != null) r'code': code,
        if (recruit_session_uid != null)
          r'recruit_session_uid': recruit_session_uid,
      });

  Input$CheckCodeVerifiedInput._(this._$data);

  factory Input$CheckCodeVerifiedInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = (l$phone as String?);
    }
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = (l$code as int?);
    }
    if (data.containsKey('recruit_session_uid')) {
      final l$recruit_session_uid = data['recruit_session_uid'];
      result$data['recruit_session_uid'] = (l$recruit_session_uid as String?);
    }
    return Input$CheckCodeVerifiedInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get email => (_$data['email'] as String?);

  String? get phone => (_$data['phone'] as String?);

  int? get code => (_$data['code'] as int?);

  String? get recruit_session_uid => (_$data['recruit_session_uid'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone;
    }
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code;
    }
    if (_$data.containsKey('recruit_session_uid')) {
      final l$recruit_session_uid = recruit_session_uid;
      result$data['recruit_session_uid'] = l$recruit_session_uid;
    }
    return result$data;
  }

  CopyWith$Input$CheckCodeVerifiedInput<Input$CheckCodeVerifiedInput>
      get copyWith => CopyWith$Input$CheckCodeVerifiedInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CheckCodeVerifiedInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (_$data.containsKey('code') != other._$data.containsKey('code')) {
      return false;
    }
    if (l$code != lOther$code) {
      return false;
    }
    final l$recruit_session_uid = recruit_session_uid;
    final lOther$recruit_session_uid = other.recruit_session_uid;
    if (_$data.containsKey('recruit_session_uid') !=
        other._$data.containsKey('recruit_session_uid')) {
      return false;
    }
    if (l$recruit_session_uid != lOther$recruit_session_uid) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$phone = phone;
    final l$code = code;
    final l$recruit_session_uid = recruit_session_uid;
    return Object.hashAll([
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('phone') ? l$phone : const {},
      _$data.containsKey('code') ? l$code : const {},
      _$data.containsKey('recruit_session_uid')
          ? l$recruit_session_uid
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$CheckCodeVerifiedInput<TRes> {
  factory CopyWith$Input$CheckCodeVerifiedInput(
    Input$CheckCodeVerifiedInput instance,
    TRes Function(Input$CheckCodeVerifiedInput) then,
  ) = _CopyWithImpl$Input$CheckCodeVerifiedInput;

  factory CopyWith$Input$CheckCodeVerifiedInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CheckCodeVerifiedInput;

  TRes call({
    String? email,
    String? phone,
    int? code,
    String? recruit_session_uid,
  });
}

class _CopyWithImpl$Input$CheckCodeVerifiedInput<TRes>
    implements CopyWith$Input$CheckCodeVerifiedInput<TRes> {
  _CopyWithImpl$Input$CheckCodeVerifiedInput(
    this._instance,
    this._then,
  );

  final Input$CheckCodeVerifiedInput _instance;

  final TRes Function(Input$CheckCodeVerifiedInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? phone = _undefined,
    Object? code = _undefined,
    Object? recruit_session_uid = _undefined,
  }) =>
      _then(Input$CheckCodeVerifiedInput._({
        ..._instance._$data,
        if (email != _undefined) 'email': (email as String?),
        if (phone != _undefined) 'phone': (phone as String?),
        if (code != _undefined) 'code': (code as int?),
        if (recruit_session_uid != _undefined)
          'recruit_session_uid': (recruit_session_uid as String?),
      }));
}

class _CopyWithStubImpl$Input$CheckCodeVerifiedInput<TRes>
    implements CopyWith$Input$CheckCodeVerifiedInput<TRes> {
  _CopyWithStubImpl$Input$CheckCodeVerifiedInput(this._res);

  TRes _res;

  call({
    String? email,
    String? phone,
    int? code,
    String? recruit_session_uid,
  }) =>
      _res;
}

class Input$CheckPasswordInput {
  factory Input$CheckPasswordInput({
    int? code,
    String? hashed_code,
    String? phone,
  }) =>
      Input$CheckPasswordInput._({
        if (code != null) r'code': code,
        if (hashed_code != null) r'hashed_code': hashed_code,
        if (phone != null) r'phone': phone,
      });

  Input$CheckPasswordInput._(this._$data);

  factory Input$CheckPasswordInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = (l$code as int?);
    }
    if (data.containsKey('hashed_code')) {
      final l$hashed_code = data['hashed_code'];
      result$data['hashed_code'] = (l$hashed_code as String?);
    }
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = (l$phone as String?);
    }
    return Input$CheckPasswordInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get code => (_$data['code'] as int?);

  String? get hashed_code => (_$data['hashed_code'] as String?);

  String? get phone => (_$data['phone'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code;
    }
    if (_$data.containsKey('hashed_code')) {
      final l$hashed_code = hashed_code;
      result$data['hashed_code'] = l$hashed_code;
    }
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone;
    }
    return result$data;
  }

  CopyWith$Input$CheckPasswordInput<Input$CheckPasswordInput> get copyWith =>
      CopyWith$Input$CheckPasswordInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CheckPasswordInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (_$data.containsKey('code') != other._$data.containsKey('code')) {
      return false;
    }
    if (l$code != lOther$code) {
      return false;
    }
    final l$hashed_code = hashed_code;
    final lOther$hashed_code = other.hashed_code;
    if (_$data.containsKey('hashed_code') !=
        other._$data.containsKey('hashed_code')) {
      return false;
    }
    if (l$hashed_code != lOther$hashed_code) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$hashed_code = hashed_code;
    final l$phone = phone;
    return Object.hashAll([
      _$data.containsKey('code') ? l$code : const {},
      _$data.containsKey('hashed_code') ? l$hashed_code : const {},
      _$data.containsKey('phone') ? l$phone : const {},
    ]);
  }
}

abstract class CopyWith$Input$CheckPasswordInput<TRes> {
  factory CopyWith$Input$CheckPasswordInput(
    Input$CheckPasswordInput instance,
    TRes Function(Input$CheckPasswordInput) then,
  ) = _CopyWithImpl$Input$CheckPasswordInput;

  factory CopyWith$Input$CheckPasswordInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CheckPasswordInput;

  TRes call({
    int? code,
    String? hashed_code,
    String? phone,
  });
}

class _CopyWithImpl$Input$CheckPasswordInput<TRes>
    implements CopyWith$Input$CheckPasswordInput<TRes> {
  _CopyWithImpl$Input$CheckPasswordInput(
    this._instance,
    this._then,
  );

  final Input$CheckPasswordInput _instance;

  final TRes Function(Input$CheckPasswordInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? hashed_code = _undefined,
    Object? phone = _undefined,
  }) =>
      _then(Input$CheckPasswordInput._({
        ..._instance._$data,
        if (code != _undefined) 'code': (code as int?),
        if (hashed_code != _undefined) 'hashed_code': (hashed_code as String?),
        if (phone != _undefined) 'phone': (phone as String?),
      }));
}

class _CopyWithStubImpl$Input$CheckPasswordInput<TRes>
    implements CopyWith$Input$CheckPasswordInput<TRes> {
  _CopyWithStubImpl$Input$CheckPasswordInput(this._res);

  TRes _res;

  call({
    int? code,
    String? hashed_code,
    String? phone,
  }) =>
      _res;
}

class Input$LoginInput {
  factory Input$LoginInput({
    required String phone,
    required bool is_approval_pdn,
    required bool is_approval_participation,
  }) =>
      Input$LoginInput._({
        r'phone': phone,
        r'is_approval_pdn': is_approval_pdn,
        r'is_approval_participation': is_approval_participation,
      });

  Input$LoginInput._(this._$data);

  factory Input$LoginInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$phone = data['phone'];
    result$data['phone'] = (l$phone as String);
    final l$is_approval_pdn = data['is_approval_pdn'];
    result$data['is_approval_pdn'] = (l$is_approval_pdn as bool);
    final l$is_approval_participation = data['is_approval_participation'];
    result$data['is_approval_participation'] =
        (l$is_approval_participation as bool);
    return Input$LoginInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get phone => (_$data['phone'] as String);

  bool get is_approval_pdn => (_$data['is_approval_pdn'] as bool);

  bool get is_approval_participation =>
      (_$data['is_approval_participation'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$phone = phone;
    result$data['phone'] = l$phone;
    final l$is_approval_pdn = is_approval_pdn;
    result$data['is_approval_pdn'] = l$is_approval_pdn;
    final l$is_approval_participation = is_approval_participation;
    result$data['is_approval_participation'] = l$is_approval_participation;
    return result$data;
  }

  CopyWith$Input$LoginInput<Input$LoginInput> get copyWith =>
      CopyWith$Input$LoginInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$LoginInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$is_approval_pdn = is_approval_pdn;
    final lOther$is_approval_pdn = other.is_approval_pdn;
    if (l$is_approval_pdn != lOther$is_approval_pdn) {
      return false;
    }
    final l$is_approval_participation = is_approval_participation;
    final lOther$is_approval_participation = other.is_approval_participation;
    if (l$is_approval_participation != lOther$is_approval_participation) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$phone = phone;
    final l$is_approval_pdn = is_approval_pdn;
    final l$is_approval_participation = is_approval_participation;
    return Object.hashAll([
      l$phone,
      l$is_approval_pdn,
      l$is_approval_participation,
    ]);
  }
}

abstract class CopyWith$Input$LoginInput<TRes> {
  factory CopyWith$Input$LoginInput(
    Input$LoginInput instance,
    TRes Function(Input$LoginInput) then,
  ) = _CopyWithImpl$Input$LoginInput;

  factory CopyWith$Input$LoginInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LoginInput;

  TRes call({
    String? phone,
    bool? is_approval_pdn,
    bool? is_approval_participation,
  });
}

class _CopyWithImpl$Input$LoginInput<TRes>
    implements CopyWith$Input$LoginInput<TRes> {
  _CopyWithImpl$Input$LoginInput(
    this._instance,
    this._then,
  );

  final Input$LoginInput _instance;

  final TRes Function(Input$LoginInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? phone = _undefined,
    Object? is_approval_pdn = _undefined,
    Object? is_approval_participation = _undefined,
  }) =>
      _then(Input$LoginInput._({
        ..._instance._$data,
        if (phone != _undefined && phone != null) 'phone': (phone as String),
        if (is_approval_pdn != _undefined && is_approval_pdn != null)
          'is_approval_pdn': (is_approval_pdn as bool),
        if (is_approval_participation != _undefined &&
            is_approval_participation != null)
          'is_approval_participation': (is_approval_participation as bool),
      }));
}

class _CopyWithStubImpl$Input$LoginInput<TRes>
    implements CopyWith$Input$LoginInput<TRes> {
  _CopyWithStubImpl$Input$LoginInput(this._res);

  TRes _res;

  call({
    String? phone,
    bool? is_approval_pdn,
    bool? is_approval_participation,
  }) =>
      _res;
}

class Input$ProfileUpdate {
  factory Input$ProfileUpdate({
    String? last_name,
    String? first_name,
    String? middle_name,
    int? sex_id,
    String? birthday,
    int? city_id,
    String? locality,
    int? region_id,
    String? telegram_username,
  }) =>
      Input$ProfileUpdate._({
        if (last_name != null) r'last_name': last_name,
        if (first_name != null) r'first_name': first_name,
        if (middle_name != null) r'middle_name': middle_name,
        if (sex_id != null) r'sex_id': sex_id,
        if (birthday != null) r'birthday': birthday,
        if (city_id != null) r'city_id': city_id,
        if (locality != null) r'locality': locality,
        if (region_id != null) r'region_id': region_id,
        if (telegram_username != null) r'telegram_username': telegram_username,
      });

  Input$ProfileUpdate._(this._$data);

  factory Input$ProfileUpdate.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('last_name')) {
      final l$last_name = data['last_name'];
      result$data['last_name'] = (l$last_name as String?);
    }
    if (data.containsKey('first_name')) {
      final l$first_name = data['first_name'];
      result$data['first_name'] = (l$first_name as String?);
    }
    if (data.containsKey('middle_name')) {
      final l$middle_name = data['middle_name'];
      result$data['middle_name'] = (l$middle_name as String?);
    }
    if (data.containsKey('sex_id')) {
      final l$sex_id = data['sex_id'];
      result$data['sex_id'] = (l$sex_id as int?);
    }
    if (data.containsKey('birthday')) {
      final l$birthday = data['birthday'];
      result$data['birthday'] = (l$birthday as String?);
    }
    if (data.containsKey('city_id')) {
      final l$city_id = data['city_id'];
      result$data['city_id'] = (l$city_id as int?);
    }
    if (data.containsKey('locality')) {
      final l$locality = data['locality'];
      result$data['locality'] = (l$locality as String?);
    }
    if (data.containsKey('region_id')) {
      final l$region_id = data['region_id'];
      result$data['region_id'] = (l$region_id as int?);
    }
    if (data.containsKey('telegram_username')) {
      final l$telegram_username = data['telegram_username'];
      result$data['telegram_username'] = (l$telegram_username as String?);
    }
    return Input$ProfileUpdate._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get last_name => (_$data['last_name'] as String?);

  String? get first_name => (_$data['first_name'] as String?);

  String? get middle_name => (_$data['middle_name'] as String?);

  int? get sex_id => (_$data['sex_id'] as int?);

  String? get birthday => (_$data['birthday'] as String?);

  int? get city_id => (_$data['city_id'] as int?);

  String? get locality => (_$data['locality'] as String?);

  int? get region_id => (_$data['region_id'] as int?);

  String? get telegram_username => (_$data['telegram_username'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('last_name')) {
      final l$last_name = last_name;
      result$data['last_name'] = l$last_name;
    }
    if (_$data.containsKey('first_name')) {
      final l$first_name = first_name;
      result$data['first_name'] = l$first_name;
    }
    if (_$data.containsKey('middle_name')) {
      final l$middle_name = middle_name;
      result$data['middle_name'] = l$middle_name;
    }
    if (_$data.containsKey('sex_id')) {
      final l$sex_id = sex_id;
      result$data['sex_id'] = l$sex_id;
    }
    if (_$data.containsKey('birthday')) {
      final l$birthday = birthday;
      result$data['birthday'] = l$birthday;
    }
    if (_$data.containsKey('city_id')) {
      final l$city_id = city_id;
      result$data['city_id'] = l$city_id;
    }
    if (_$data.containsKey('locality')) {
      final l$locality = locality;
      result$data['locality'] = l$locality;
    }
    if (_$data.containsKey('region_id')) {
      final l$region_id = region_id;
      result$data['region_id'] = l$region_id;
    }
    if (_$data.containsKey('telegram_username')) {
      final l$telegram_username = telegram_username;
      result$data['telegram_username'] = l$telegram_username;
    }
    return result$data;
  }

  CopyWith$Input$ProfileUpdate<Input$ProfileUpdate> get copyWith =>
      CopyWith$Input$ProfileUpdate(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProfileUpdate) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$last_name = last_name;
    final lOther$last_name = other.last_name;
    if (_$data.containsKey('last_name') !=
        other._$data.containsKey('last_name')) {
      return false;
    }
    if (l$last_name != lOther$last_name) {
      return false;
    }
    final l$first_name = first_name;
    final lOther$first_name = other.first_name;
    if (_$data.containsKey('first_name') !=
        other._$data.containsKey('first_name')) {
      return false;
    }
    if (l$first_name != lOther$first_name) {
      return false;
    }
    final l$middle_name = middle_name;
    final lOther$middle_name = other.middle_name;
    if (_$data.containsKey('middle_name') !=
        other._$data.containsKey('middle_name')) {
      return false;
    }
    if (l$middle_name != lOther$middle_name) {
      return false;
    }
    final l$sex_id = sex_id;
    final lOther$sex_id = other.sex_id;
    if (_$data.containsKey('sex_id') != other._$data.containsKey('sex_id')) {
      return false;
    }
    if (l$sex_id != lOther$sex_id) {
      return false;
    }
    final l$birthday = birthday;
    final lOther$birthday = other.birthday;
    if (_$data.containsKey('birthday') !=
        other._$data.containsKey('birthday')) {
      return false;
    }
    if (l$birthday != lOther$birthday) {
      return false;
    }
    final l$city_id = city_id;
    final lOther$city_id = other.city_id;
    if (_$data.containsKey('city_id') != other._$data.containsKey('city_id')) {
      return false;
    }
    if (l$city_id != lOther$city_id) {
      return false;
    }
    final l$locality = locality;
    final lOther$locality = other.locality;
    if (_$data.containsKey('locality') !=
        other._$data.containsKey('locality')) {
      return false;
    }
    if (l$locality != lOther$locality) {
      return false;
    }
    final l$region_id = region_id;
    final lOther$region_id = other.region_id;
    if (_$data.containsKey('region_id') !=
        other._$data.containsKey('region_id')) {
      return false;
    }
    if (l$region_id != lOther$region_id) {
      return false;
    }
    final l$telegram_username = telegram_username;
    final lOther$telegram_username = other.telegram_username;
    if (_$data.containsKey('telegram_username') !=
        other._$data.containsKey('telegram_username')) {
      return false;
    }
    if (l$telegram_username != lOther$telegram_username) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$last_name = last_name;
    final l$first_name = first_name;
    final l$middle_name = middle_name;
    final l$sex_id = sex_id;
    final l$birthday = birthday;
    final l$city_id = city_id;
    final l$locality = locality;
    final l$region_id = region_id;
    final l$telegram_username = telegram_username;
    return Object.hashAll([
      _$data.containsKey('last_name') ? l$last_name : const {},
      _$data.containsKey('first_name') ? l$first_name : const {},
      _$data.containsKey('middle_name') ? l$middle_name : const {},
      _$data.containsKey('sex_id') ? l$sex_id : const {},
      _$data.containsKey('birthday') ? l$birthday : const {},
      _$data.containsKey('city_id') ? l$city_id : const {},
      _$data.containsKey('locality') ? l$locality : const {},
      _$data.containsKey('region_id') ? l$region_id : const {},
      _$data.containsKey('telegram_username') ? l$telegram_username : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProfileUpdate<TRes> {
  factory CopyWith$Input$ProfileUpdate(
    Input$ProfileUpdate instance,
    TRes Function(Input$ProfileUpdate) then,
  ) = _CopyWithImpl$Input$ProfileUpdate;

  factory CopyWith$Input$ProfileUpdate.stub(TRes res) =
      _CopyWithStubImpl$Input$ProfileUpdate;

  TRes call({
    String? last_name,
    String? first_name,
    String? middle_name,
    int? sex_id,
    String? birthday,
    int? city_id,
    String? locality,
    int? region_id,
    String? telegram_username,
  });
}

class _CopyWithImpl$Input$ProfileUpdate<TRes>
    implements CopyWith$Input$ProfileUpdate<TRes> {
  _CopyWithImpl$Input$ProfileUpdate(
    this._instance,
    this._then,
  );

  final Input$ProfileUpdate _instance;

  final TRes Function(Input$ProfileUpdate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? last_name = _undefined,
    Object? first_name = _undefined,
    Object? middle_name = _undefined,
    Object? sex_id = _undefined,
    Object? birthday = _undefined,
    Object? city_id = _undefined,
    Object? locality = _undefined,
    Object? region_id = _undefined,
    Object? telegram_username = _undefined,
  }) =>
      _then(Input$ProfileUpdate._({
        ..._instance._$data,
        if (last_name != _undefined) 'last_name': (last_name as String?),
        if (first_name != _undefined) 'first_name': (first_name as String?),
        if (middle_name != _undefined) 'middle_name': (middle_name as String?),
        if (sex_id != _undefined) 'sex_id': (sex_id as int?),
        if (birthday != _undefined) 'birthday': (birthday as String?),
        if (city_id != _undefined) 'city_id': (city_id as int?),
        if (locality != _undefined) 'locality': (locality as String?),
        if (region_id != _undefined) 'region_id': (region_id as int?),
        if (telegram_username != _undefined)
          'telegram_username': (telegram_username as String?),
      }));
}

class _CopyWithStubImpl$Input$ProfileUpdate<TRes>
    implements CopyWith$Input$ProfileUpdate<TRes> {
  _CopyWithStubImpl$Input$ProfileUpdate(this._res);

  TRes _res;

  call({
    String? last_name,
    String? first_name,
    String? middle_name,
    int? sex_id,
    String? birthday,
    int? city_id,
    String? locality,
    int? region_id,
    String? telegram_username,
  }) =>
      _res;
}

class Input$RegistrationInput {
  factory Input$RegistrationInput({
    String? phone,
    String? email,
    required bool is_approval_pdn,
    required bool is_approval_participation,
  }) =>
      Input$RegistrationInput._({
        if (phone != null) r'phone': phone,
        if (email != null) r'email': email,
        r'is_approval_pdn': is_approval_pdn,
        r'is_approval_participation': is_approval_participation,
      });

  Input$RegistrationInput._(this._$data);

  factory Input$RegistrationInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = (l$phone as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    final l$is_approval_pdn = data['is_approval_pdn'];
    result$data['is_approval_pdn'] = (l$is_approval_pdn as bool);
    final l$is_approval_participation = data['is_approval_participation'];
    result$data['is_approval_participation'] =
        (l$is_approval_participation as bool);
    return Input$RegistrationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get phone => (_$data['phone'] as String?);

  String? get email => (_$data['email'] as String?);

  bool get is_approval_pdn => (_$data['is_approval_pdn'] as bool);

  bool get is_approval_participation =>
      (_$data['is_approval_participation'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    final l$is_approval_pdn = is_approval_pdn;
    result$data['is_approval_pdn'] = l$is_approval_pdn;
    final l$is_approval_participation = is_approval_participation;
    result$data['is_approval_participation'] = l$is_approval_participation;
    return result$data;
  }

  CopyWith$Input$RegistrationInput<Input$RegistrationInput> get copyWith =>
      CopyWith$Input$RegistrationInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$RegistrationInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$is_approval_pdn = is_approval_pdn;
    final lOther$is_approval_pdn = other.is_approval_pdn;
    if (l$is_approval_pdn != lOther$is_approval_pdn) {
      return false;
    }
    final l$is_approval_participation = is_approval_participation;
    final lOther$is_approval_participation = other.is_approval_participation;
    if (l$is_approval_participation != lOther$is_approval_participation) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$phone = phone;
    final l$email = email;
    final l$is_approval_pdn = is_approval_pdn;
    final l$is_approval_participation = is_approval_participation;
    return Object.hashAll([
      _$data.containsKey('phone') ? l$phone : const {},
      _$data.containsKey('email') ? l$email : const {},
      l$is_approval_pdn,
      l$is_approval_participation,
    ]);
  }
}

abstract class CopyWith$Input$RegistrationInput<TRes> {
  factory CopyWith$Input$RegistrationInput(
    Input$RegistrationInput instance,
    TRes Function(Input$RegistrationInput) then,
  ) = _CopyWithImpl$Input$RegistrationInput;

  factory CopyWith$Input$RegistrationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$RegistrationInput;

  TRes call({
    String? phone,
    String? email,
    bool? is_approval_pdn,
    bool? is_approval_participation,
  });
}

class _CopyWithImpl$Input$RegistrationInput<TRes>
    implements CopyWith$Input$RegistrationInput<TRes> {
  _CopyWithImpl$Input$RegistrationInput(
    this._instance,
    this._then,
  );

  final Input$RegistrationInput _instance;

  final TRes Function(Input$RegistrationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? phone = _undefined,
    Object? email = _undefined,
    Object? is_approval_pdn = _undefined,
    Object? is_approval_participation = _undefined,
  }) =>
      _then(Input$RegistrationInput._({
        ..._instance._$data,
        if (phone != _undefined) 'phone': (phone as String?),
        if (email != _undefined) 'email': (email as String?),
        if (is_approval_pdn != _undefined && is_approval_pdn != null)
          'is_approval_pdn': (is_approval_pdn as bool),
        if (is_approval_participation != _undefined &&
            is_approval_participation != null)
          'is_approval_participation': (is_approval_participation as bool),
      }));
}

class _CopyWithStubImpl$Input$RegistrationInput<TRes>
    implements CopyWith$Input$RegistrationInput<TRes> {
  _CopyWithStubImpl$Input$RegistrationInput(this._res);

  TRes _res;

  call({
    String? phone,
    String? email,
    bool? is_approval_pdn,
    bool? is_approval_participation,
  }) =>
      _res;
}

class Input$SetPasswordInput {
  factory Input$SetPasswordInput({required String password}) =>
      Input$SetPasswordInput._({
        r'password': password,
      });

  Input$SetPasswordInput._(this._$data);

  factory Input$SetPasswordInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Input$SetPasswordInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get password => (_$data['password'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Input$SetPasswordInput<Input$SetPasswordInput> get copyWith =>
      CopyWith$Input$SetPasswordInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SetPasswordInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$password = password;
    return Object.hashAll([l$password]);
  }
}

abstract class CopyWith$Input$SetPasswordInput<TRes> {
  factory CopyWith$Input$SetPasswordInput(
    Input$SetPasswordInput instance,
    TRes Function(Input$SetPasswordInput) then,
  ) = _CopyWithImpl$Input$SetPasswordInput;

  factory CopyWith$Input$SetPasswordInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SetPasswordInput;

  TRes call({String? password});
}

class _CopyWithImpl$Input$SetPasswordInput<TRes>
    implements CopyWith$Input$SetPasswordInput<TRes> {
  _CopyWithImpl$Input$SetPasswordInput(
    this._instance,
    this._then,
  );

  final Input$SetPasswordInput _instance;

  final TRes Function(Input$SetPasswordInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? password = _undefined}) => _then(Input$SetPasswordInput._({
        ..._instance._$data,
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Input$SetPasswordInput<TRes>
    implements CopyWith$Input$SetPasswordInput<TRes> {
  _CopyWithStubImpl$Input$SetPasswordInput(this._res);

  TRes _res;

  call({String? password}) => _res;
}

class Input$SetPasswordVerifiedInput {
  factory Input$SetPasswordVerifiedInput({
    required String password_prev,
    required String password_new,
  }) =>
      Input$SetPasswordVerifiedInput._({
        r'password_prev': password_prev,
        r'password_new': password_new,
      });

  Input$SetPasswordVerifiedInput._(this._$data);

  factory Input$SetPasswordVerifiedInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$password_prev = data['password_prev'];
    result$data['password_prev'] = (l$password_prev as String);
    final l$password_new = data['password_new'];
    result$data['password_new'] = (l$password_new as String);
    return Input$SetPasswordVerifiedInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get password_prev => (_$data['password_prev'] as String);

  String get password_new => (_$data['password_new'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$password_prev = password_prev;
    result$data['password_prev'] = l$password_prev;
    final l$password_new = password_new;
    result$data['password_new'] = l$password_new;
    return result$data;
  }

  CopyWith$Input$SetPasswordVerifiedInput<Input$SetPasswordVerifiedInput>
      get copyWith => CopyWith$Input$SetPasswordVerifiedInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SetPasswordVerifiedInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$password_prev = password_prev;
    final lOther$password_prev = other.password_prev;
    if (l$password_prev != lOther$password_prev) {
      return false;
    }
    final l$password_new = password_new;
    final lOther$password_new = other.password_new;
    if (l$password_new != lOther$password_new) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$password_prev = password_prev;
    final l$password_new = password_new;
    return Object.hashAll([
      l$password_prev,
      l$password_new,
    ]);
  }
}

abstract class CopyWith$Input$SetPasswordVerifiedInput<TRes> {
  factory CopyWith$Input$SetPasswordVerifiedInput(
    Input$SetPasswordVerifiedInput instance,
    TRes Function(Input$SetPasswordVerifiedInput) then,
  ) = _CopyWithImpl$Input$SetPasswordVerifiedInput;

  factory CopyWith$Input$SetPasswordVerifiedInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SetPasswordVerifiedInput;

  TRes call({
    String? password_prev,
    String? password_new,
  });
}

class _CopyWithImpl$Input$SetPasswordVerifiedInput<TRes>
    implements CopyWith$Input$SetPasswordVerifiedInput<TRes> {
  _CopyWithImpl$Input$SetPasswordVerifiedInput(
    this._instance,
    this._then,
  );

  final Input$SetPasswordVerifiedInput _instance;

  final TRes Function(Input$SetPasswordVerifiedInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? password_prev = _undefined,
    Object? password_new = _undefined,
  }) =>
      _then(Input$SetPasswordVerifiedInput._({
        ..._instance._$data,
        if (password_prev != _undefined && password_prev != null)
          'password_prev': (password_prev as String),
        if (password_new != _undefined && password_new != null)
          'password_new': (password_new as String),
      }));
}

class _CopyWithStubImpl$Input$SetPasswordVerifiedInput<TRes>
    implements CopyWith$Input$SetPasswordVerifiedInput<TRes> {
  _CopyWithStubImpl$Input$SetPasswordVerifiedInput(this._res);

  TRes _res;

  call({
    String? password_prev,
    String? password_new,
  }) =>
      _res;
}

class Input$UsernameInput {
  factory Input$UsernameInput({
    String? email,
    String? phone,
  }) =>
      Input$UsernameInput._({
        if (email != null) r'email': email,
        if (phone != null) r'phone': phone,
      });

  Input$UsernameInput._(this._$data);

  factory Input$UsernameInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = (l$phone as String?);
    }
    return Input$UsernameInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get email => (_$data['email'] as String?);

  String? get phone => (_$data['phone'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone;
    }
    return result$data;
  }

  CopyWith$Input$UsernameInput<Input$UsernameInput> get copyWith =>
      CopyWith$Input$UsernameInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UsernameInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$phone = phone;
    return Object.hashAll([
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('phone') ? l$phone : const {},
    ]);
  }
}

abstract class CopyWith$Input$UsernameInput<TRes> {
  factory CopyWith$Input$UsernameInput(
    Input$UsernameInput instance,
    TRes Function(Input$UsernameInput) then,
  ) = _CopyWithImpl$Input$UsernameInput;

  factory CopyWith$Input$UsernameInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UsernameInput;

  TRes call({
    String? email,
    String? phone,
  });
}

class _CopyWithImpl$Input$UsernameInput<TRes>
    implements CopyWith$Input$UsernameInput<TRes> {
  _CopyWithImpl$Input$UsernameInput(
    this._instance,
    this._then,
  );

  final Input$UsernameInput _instance;

  final TRes Function(Input$UsernameInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? phone = _undefined,
  }) =>
      _then(Input$UsernameInput._({
        ..._instance._$data,
        if (email != _undefined) 'email': (email as String?),
        if (phone != _undefined) 'phone': (phone as String?),
      }));
}

class _CopyWithStubImpl$Input$UsernameInput<TRes>
    implements CopyWith$Input$UsernameInput<TRes> {
  _CopyWithStubImpl$Input$UsernameInput(this._res);

  TRes _res;

  call({
    String? email,
    String? phone,
  }) =>
      _res;
}

class Input$VerifyCodeInput {
  factory Input$VerifyCodeInput({
    required String phone,
    required int code,
  }) =>
      Input$VerifyCodeInput._({
        r'phone': phone,
        r'code': code,
      });

  Input$VerifyCodeInput._(this._$data);

  factory Input$VerifyCodeInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$phone = data['phone'];
    result$data['phone'] = (l$phone as String);
    final l$code = data['code'];
    result$data['code'] = (l$code as int);
    return Input$VerifyCodeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get phone => (_$data['phone'] as String);

  int get code => (_$data['code'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$phone = phone;
    result$data['phone'] = l$phone;
    final l$code = code;
    result$data['code'] = l$code;
    return result$data;
  }

  CopyWith$Input$VerifyCodeInput<Input$VerifyCodeInput> get copyWith =>
      CopyWith$Input$VerifyCodeInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$VerifyCodeInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$phone = phone;
    final l$code = code;
    return Object.hashAll([
      l$phone,
      l$code,
    ]);
  }
}

abstract class CopyWith$Input$VerifyCodeInput<TRes> {
  factory CopyWith$Input$VerifyCodeInput(
    Input$VerifyCodeInput instance,
    TRes Function(Input$VerifyCodeInput) then,
  ) = _CopyWithImpl$Input$VerifyCodeInput;

  factory CopyWith$Input$VerifyCodeInput.stub(TRes res) =
      _CopyWithStubImpl$Input$VerifyCodeInput;

  TRes call({
    String? phone,
    int? code,
  });
}

class _CopyWithImpl$Input$VerifyCodeInput<TRes>
    implements CopyWith$Input$VerifyCodeInput<TRes> {
  _CopyWithImpl$Input$VerifyCodeInput(
    this._instance,
    this._then,
  );

  final Input$VerifyCodeInput _instance;

  final TRes Function(Input$VerifyCodeInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? phone = _undefined,
    Object? code = _undefined,
  }) =>
      _then(Input$VerifyCodeInput._({
        ..._instance._$data,
        if (phone != _undefined && phone != null) 'phone': (phone as String),
        if (code != _undefined && code != null) 'code': (code as int),
      }));
}

class _CopyWithStubImpl$Input$VerifyCodeInput<TRes>
    implements CopyWith$Input$VerifyCodeInput<TRes> {
  _CopyWithStubImpl$Input$VerifyCodeInput(this._res);

  TRes _res;

  call({
    String? phone,
    int? code,
  }) =>
      _res;
}

class Input$WebAuthInput {
  factory Input$WebAuthInput({
    String? phone,
    String? email,
    required String password,
  }) =>
      Input$WebAuthInput._({
        if (phone != null) r'phone': phone,
        if (email != null) r'email': email,
        r'password': password,
      });

  Input$WebAuthInput._(this._$data);

  factory Input$WebAuthInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = (l$phone as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Input$WebAuthInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get phone => (_$data['phone'] as String?);

  String? get email => (_$data['email'] as String?);

  String get password => (_$data['password'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Input$WebAuthInput<Input$WebAuthInput> get copyWith =>
      CopyWith$Input$WebAuthInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$WebAuthInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$phone = phone;
    final l$email = email;
    final l$password = password;
    return Object.hashAll([
      _$data.containsKey('phone') ? l$phone : const {},
      _$data.containsKey('email') ? l$email : const {},
      l$password,
    ]);
  }
}

abstract class CopyWith$Input$WebAuthInput<TRes> {
  factory CopyWith$Input$WebAuthInput(
    Input$WebAuthInput instance,
    TRes Function(Input$WebAuthInput) then,
  ) = _CopyWithImpl$Input$WebAuthInput;

  factory CopyWith$Input$WebAuthInput.stub(TRes res) =
      _CopyWithStubImpl$Input$WebAuthInput;

  TRes call({
    String? phone,
    String? email,
    String? password,
  });
}

class _CopyWithImpl$Input$WebAuthInput<TRes>
    implements CopyWith$Input$WebAuthInput<TRes> {
  _CopyWithImpl$Input$WebAuthInput(
    this._instance,
    this._then,
  );

  final Input$WebAuthInput _instance;

  final TRes Function(Input$WebAuthInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? phone = _undefined,
    Object? email = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Input$WebAuthInput._({
        ..._instance._$data,
        if (phone != _undefined) 'phone': (phone as String?),
        if (email != _undefined) 'email': (email as String?),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Input$WebAuthInput<TRes>
    implements CopyWith$Input$WebAuthInput<TRes> {
  _CopyWithStubImpl$Input$WebAuthInput(this._res);

  TRes _res;

  call({
    String? phone,
    String? email,
    String? password,
  }) =>
      _res;
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{
  'CheckCodeResponse': {
    'Profile',
    'ReturnError',
  },
  'DeleteProfileResponse': {
    'Successfully',
    'ReturnError',
  },
  'GetDictCityResponse': {
    'DictCityTypeList',
    'ReturnError',
  },
  'GetDictFedResponse': {
    'DictFedTypeList',
    'ReturnError',
  },
  'GetDictRegionResponse': {
    'DictRegionTypeList',
    'ReturnError',
  },
  'GetDictSexResponse': {
    'DictSexTypeList',
    'ReturnError',
  },
  'LogoutResponse': {
    'Successfully',
    'ReturnError',
  },
  'ProfileResponse': {
    'Profile',
    'ReturnError',
  },
  'RegistrationResponse': {
    'Successfully',
    'ReturnError',
  },
  'ReturnTimerResponse': {
    'ReturnTimer',
    'ReturnError',
  },
  'ReturnTokenResponse': {
    'ReturnTokens',
    'ReturnError',
  },
  'SetPasswordResponse': {
    'Successfully',
    'ReturnError',
  },
};
