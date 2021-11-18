// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'app_user_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$KakaoTokenDtoTearOff {
  const _$KakaoTokenDtoTearOff();

  _KakaoTokenDto call({required String userToken, required String userEmail}) {
    return _KakaoTokenDto(
      userToken: userToken,
      userEmail: userEmail,
    );
  }
}

/// @nodoc
const $KakaoTokenDto = _$KakaoTokenDtoTearOff();

/// @nodoc
mixin _$KakaoTokenDto {
  String get userToken => throw _privateConstructorUsedError;
  String get userEmail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KakaoTokenDtoCopyWith<KakaoTokenDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KakaoTokenDtoCopyWith<$Res> {
  factory $KakaoTokenDtoCopyWith(
          KakaoTokenDto value, $Res Function(KakaoTokenDto) then) =
      _$KakaoTokenDtoCopyWithImpl<$Res>;
  $Res call({String userToken, String userEmail});
}

/// @nodoc
class _$KakaoTokenDtoCopyWithImpl<$Res>
    implements $KakaoTokenDtoCopyWith<$Res> {
  _$KakaoTokenDtoCopyWithImpl(this._value, this._then);

  final KakaoTokenDto _value;
  // ignore: unused_field
  final $Res Function(KakaoTokenDto) _then;

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
abstract class _$KakaoTokenDtoCopyWith<$Res>
    implements $KakaoTokenDtoCopyWith<$Res> {
  factory _$KakaoTokenDtoCopyWith(
          _KakaoTokenDto value, $Res Function(_KakaoTokenDto) then) =
      __$KakaoTokenDtoCopyWithImpl<$Res>;
  @override
  $Res call({String userToken, String userEmail});
}

/// @nodoc
class __$KakaoTokenDtoCopyWithImpl<$Res>
    extends _$KakaoTokenDtoCopyWithImpl<$Res>
    implements _$KakaoTokenDtoCopyWith<$Res> {
  __$KakaoTokenDtoCopyWithImpl(
      _KakaoTokenDto _value, $Res Function(_KakaoTokenDto) _then)
      : super(_value, (v) => _then(v as _KakaoTokenDto));

  @override
  _KakaoTokenDto get _value => super._value as _KakaoTokenDto;

  @override
  $Res call({
    Object? userToken = freezed,
    Object? userEmail = freezed,
  }) {
    return _then(_KakaoTokenDto(
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

class _$_KakaoTokenDto extends _KakaoTokenDto {
  const _$_KakaoTokenDto({required this.userToken, required this.userEmail})
      : super._();

  @override
  final String userToken;
  @override
  final String userEmail;

  @override
  String toString() {
    return 'KakaoTokenDto(userToken: $userToken, userEmail: $userEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _KakaoTokenDto &&
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
  _$KakaoTokenDtoCopyWith<_KakaoTokenDto> get copyWith =>
      __$KakaoTokenDtoCopyWithImpl<_KakaoTokenDto>(this, _$identity);
}

abstract class _KakaoTokenDto extends KakaoTokenDto {
  const factory _KakaoTokenDto(
      {required String userToken,
      required String userEmail}) = _$_KakaoTokenDto;
  const _KakaoTokenDto._() : super._();

  @override
  String get userToken => throw _privateConstructorUsedError;
  @override
  String get userEmail => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$KakaoTokenDtoCopyWith<_KakaoTokenDto> get copyWith =>
      throw _privateConstructorUsedError;
}
