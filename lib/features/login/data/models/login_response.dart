import 'package:my_gallery_app/features/login/data/models/user_model.dart';

class LoginResponse {
  final UserModel? userModel;
  final String? token;

  LoginResponse({ this.userModel, this.token});

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
        userModel: UserModel.fromJson(json['user']?? {}),
        token: json['token']);
  }
}
