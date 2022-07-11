import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_model.freezed.dart';

part 'token_model.g.dart';

@freezed
class TokenModel with _$TokenModel {
  factory TokenModel({
    required String token,
  }) = _TokenModel;

  TokenModel._();

  factory TokenModel.fromJson(Map<String, dynamic> json) =>
      _$TokenModelFromJson(json);
}
