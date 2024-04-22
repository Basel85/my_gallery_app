import 'package:dartz/dartz.dart';
import 'package:my_gallery_app/core/network_exceptions/network_exceptions.dart';
import 'package:my_gallery_app/features/login/domain/entities/login_request_body.dart';
import 'package:my_gallery_app/features/login/domain/entities/user.dart';

abstract class UserRepository {
  Future<Either<NetworkExceptions,User>> login({required LoginRequestBody loginRequestBody});
}
