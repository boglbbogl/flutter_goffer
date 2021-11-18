// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'app_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppUserTearOff {
  const _$AppUserTearOff();

  _AppUser call(
      {required String email,
      required String profileUrl,
      required String nickName}) {
    return _AppUser(
      email: email,
      profileUrl: profileUrl,
      nickName: nickName,
    );
  }
}

/// @nodoc
const $AppUser = _$AppUserTearOff();

/// @nodoc
mixin _$AppUser {
  String get email => throw _privateConstructorUsedError;
  String get profileUrl => throw _privateConstructorUsedError;
  String get nickName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppUserCopyWith<AppUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res>;
  $Res call({String email, String profileUrl, String nickName});
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res> implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  final AppUser _value;
  // ignore: unused_field
  final $Res Function(AppUser) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? profileUrl = freezed,
    Object? nickName = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profileUrl: profileUrl == freezed
          ? _value.profileUrl
          : profileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: nickName == freezed
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AppUserCopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$AppUserCopyWith(_AppUser value, $Res Function(_AppUser) then) =
      __$AppUserCopyWithImpl<$Res>;
  @override
  $Res call({String email, String profileUrl, String nickName});
}

/// @nodoc
class __$AppUserCopyWithImpl<$Res> extends _$AppUserCopyWithImpl<$Res>
    implements _$AppUserCopyWith<$Res> {
  __$AppUserCopyWithImpl(_AppUser _value, $Res Function(_AppUser) _then)
      : super(_value, (v) => _then(v as _AppUser));

  @override
  _AppUser get _value => super._value as _AppUser;

  @override
  $Res call({
    Object? email = freezed,
    Object? profileUrl = freezed,
    Object? nickName = freezed,
  }) {
    return _then(_AppUser(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profileUrl: profileUrl == freezed
          ? _value.profileUrl
          : profileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: nickName == freezed
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AppUser implements _AppUser {
  const _$_AppUser(
      {required this.email, required this.profileUrl, required this.nickName});

  @override
  final String email;
  @override
  final String profileUrl;
  @override
  final String nickName;

  @override
  String toString() {
    return 'AppUser(email: $email, profileUrl: $profileUrl, nickName: $nickName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppUser &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.profileUrl, profileUrl) ||
                const DeepCollectionEquality()
                    .equals(other.profileUrl, profileUrl)) &&
            (identical(other.nickName, nickName) ||
                const DeepCollectionEquality()
                    .equals(other.nickName, nickName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(profileUrl) ^
      const DeepCollectionEquality().hash(nickName);

  @JsonKey(ignore: true)
  @override
  _$AppUserCopyWith<_AppUser> get copyWith =>
      __$AppUserCopyWithImpl<_AppUser>(this, _$identity);
}

abstract class _AppUser implements AppUser {
  const factory _AppUser(
      {required String email,
      required String profileUrl,
      required String nickName}) = _$_AppUser;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get profileUrl => throw _privateConstructorUsedError;
  @override
  String get nickName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AppUserCopyWith<_AppUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$KakaoTokenTearOff {
  const _$KakaoTokenTearOff();

  _KakaoToken call({required String userToken, required String userEmail}) {
    return _KakaoToken(
      userToken: userToken,
      userEmail: userEmail,
    );
  }
}

/// @nodoc
const $KakaoToken = _$KakaoTokenTearOff();

/// @nodoc
mixin _$KakaoToken {
  String get userToken => throw _privateConstructorUsedError;
  String get userEmail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KakaoTokenCopyWith<KakaoToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KakaoTokenCopyWith<$Res> {
  factory $KakaoTokenCopyWith(
          KakaoToken value, $Res Function(KakaoToken) then) =
      _$KakaoTokenCopyWithImpl<$Res>;
  $Res call({String userToken, String userEmail});
}

/// @nodoc
class _$KakaoTokenCopyWithImpl<$Res> implements $KakaoTokenCopyWith<$Res> {
  _$KakaoTokenCopyWithImpl(this._value, this._then);

  final KakaoToken _value;
  // ignore: unused_field
  final $Res Function(KakaoToken) _then;

  @override
  $Res call({
    Object? userToken = freezed,
    Object? userEmail = freezed,
  }) {
    return _then(_value.copyWith(
      userToken: userToken == freezed
          ? _value.userToken
          : userToken // ignore: cast_nullable_to_non_nullable
              as String,
      userEmail: userEmail == freezed
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$KakaoTokenCopyWith<$Res> implements $KakaoTokenCopyWith<$Res> {
  factory _$KakaoTokenCopyWith(
          _KakaoToken value, $Res Function(_KakaoToken) then) =
      __$KakaoTokenCopyWithImpl<$Res>;
  @override
  $Res call({String userToken, String userEmail});
}

/// @nodoc
class __$KakaoTokenCopyWithImpl<$Res> extends _$KakaoTokenCopyWithImpl<$Res>
    implements _$KakaoTokenCopyWith<$Res> {
  __$KakaoTokenCopyWithImpl(
      _KakaoToken _value, $Res Function(_KakaoToken) _then)
      : super(_value, (v) => _then(v as _KakaoToken));

  @override
  _KakaoToken get _value => super._value as _KakaoToken;

  @override
  $Res call({
    Object? userToken = freezed,
    Object? userEmail = freezed,
  }) {
    return _then(_KakaoToken(
      userToken: userToken == freezed
          ? _value.userToken
          : userToken // ignore: cast_nullable_to_non_nullable
              as String,
      userEmail: userEmail == freezed
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_KakaoToken implements _KakaoToken {
  const _$_KakaoToken({required this.userToken, required this.userEmail});

  @override
  final String userToken;
  @override
  final String userEmail;

  @override
  String toString() {
    return 'KakaoToken(userToken: $userToken, userEmail: $userEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _KakaoToken &&
            (identical(other.userToken, userToken) ||
                const DeepCollectionEquality()
                    .equals(other.userToken, userToken)) &&
            (identical(other.userEmail, userEmail) ||
                const DeepCollectionEquality()
                    .equals(other.userEmail, userEmail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userToken) ^
      const DeepCollectionEquality().hash(userEmail);

  @JsonKey(ignore: true)
  @override
  _$KakaoTokenCopyWith<_KakaoToken> get copyWith =>
      __$KakaoTokenCopyWithImpl<_KakaoToken>(this, _$identity);
}

abstract class _KakaoToken implements KakaoToken {
  const factory _KakaoToken(
      {required String userToken, required String userEmail}) = _$_KakaoToken;

  @override
  String get userToken => throw _privateConstructorUsedError;
  @override
  String get userEmail => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$KakaoTokenCopyWith<_KakaoToken> get copyWith =>
      throw _privateConstructorUsedError;
}
