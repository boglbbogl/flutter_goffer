import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user_dtos.freezed.dart';

@freezed
class KakaoTokenDto with _$KakaoTokenDto {
  const factory KakaoTokenDto({
    required String userToken,
    required String userEmail,
  }) = _KakaoTokenDto;
  const KakaoTokenDto._();
}
