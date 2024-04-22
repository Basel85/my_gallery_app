import 'package:dartz/dartz.dart';
import 'package:my_gallery_app/core/network_exceptions/network_exceptions.dart';
import 'package:my_gallery_app/features/login/data/data_sources/user_local_data_source.dart';
import 'package:my_gallery_app/features/login/data/data_sources/user_remote_data_source.dart';
import 'package:my_gallery_app/features/login/domain/entities/login_request_body.dart';
import 'package:my_gallery_app/features/login/domain/entities/user.dart';
import 'package:my_gallery_app/features/login/domain/repositories/user_repository.dart';

class UserRepositoryImplementation implements UserRepository {
  final UserRemoteDataSource _userRemoteDataSource;
  final UserLocalDataSource _userLocalDataSource;
  UserRepositoryImplementation(
      this._userRemoteDataSource, this._userLocalDataSource);

  @override
  Future<Either<NetworkExceptions, User>> login(
      {required LoginRequestBody loginRequestBody}) async {
    try {
      final loginResponse = await _userRemoteDataSource.login(loginRequestBody: loginRequestBody);
      _userLocalDataSource.cacheToken(token: loginResponse.token);
      return Right(loginResponse.userModel!);
    } catch (e) {
      return Left(NetworkExceptions.getDioException(e));
    }
  }
}
