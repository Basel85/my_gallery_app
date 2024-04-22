import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String emailVerifiedAt;
  final String createdAt;
  final String? updatedAt;

  const User(
      {required this.id,
      required this.name,
      required this.email,
      required this.emailVerifiedAt,
      required this.createdAt,
      required this.updatedAt});

  @override
  List<Object?> get props =>
      [id, name, email, emailVerifiedAt, createdAt, updatedAt];
}
