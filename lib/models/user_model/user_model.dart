import 'package:freezed_annotation/freezed_annotation.dart';


part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  UserModel._();

  factory UserModel({
    String? id,
    String? email,
    String? phoneNumber,
    String? firstName,
    String? lastName,
    //this password for imitation
    String? password,
  }) = _UserModel;


  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
