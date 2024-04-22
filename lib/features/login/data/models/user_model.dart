import 'package:my_gallery_app/features/login/domain/entities/user.dart';

class UserModel extends User {
  const UserModel(
      {required super.id,
      required super.name,
      required super.email,
      required super.emailVerifiedAt,
      required super.createdAt,
      required super.updatedAt});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        id: json['id'] ?? -1,
        name: json['name'] ?? "No Name",
        email: json['email'] ?? "No Email",
        emailVerifiedAt: json['email_verified_at'] ?? "No Email Verified At",
        createdAt: json['created_at'] ?? "No Created At",
        updatedAt: json['updated_at'] ?? "No Updated At");
  }
}
