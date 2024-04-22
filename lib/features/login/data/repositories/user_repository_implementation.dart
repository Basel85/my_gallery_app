import 'package:dartz/dartz.dart';
import 'package:my_gallery_app/core/network_exceptions/network_exceptions.dart';
import 'package:my_gallery_app/core/web_services/web_services.dart';
import 'package:my_gallery_app/features/login/domain/entities/login_request_body.dart';
import 'package:my_gallery_app/features/login/domain/entities/user.dart';
import 'package:my_gallery_app/features/login/domain/repositories/user_repository.dart';

class UserRepositoryImplementation implements UserRepository {
  final WebServices _webServices;
  UserRepositoryImplementation(this._webServices);

  @override
  Future<Either<NetworkExceptions, User>> login(
      {required LoginRequestBody loginRequestBody}) async {
    try {
      final loginResponse =
          await _webServices.login(loginRequestBody: loginRequestBody);
      return Right(loginResponse.userModel);
    } catch (e) {
      return Left(NetworkExceptions.getDioException(e));
    }
  }
}
