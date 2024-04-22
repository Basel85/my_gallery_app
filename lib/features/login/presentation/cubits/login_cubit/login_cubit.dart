import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_gallery_app/core/network_exceptions/network_exceptions.dart';
import 'package:my_gallery_app/features/login/domain/entities/login_request_body.dart';
import 'package:my_gallery_app/features/login/domain/repositories/user_repository.dart';
import 'package:my_gallery_app/features/login/presentation/cubits/login_cubit/login_states.dart';

class LoginCubit extends Cubit<LoginState> {
  final UserRepository _userRepository;
  LoginCubit(this._userRepository) : super(LoginInitial());
  static LoginCubit get(context) => BlocProvider.of(context);
  void login(LoginRequestBody loginRequestBody) async{
    emit(LoginLoading());
    final response = await _userRepository.login(loginRequestBody: loginRequestBody);
    response.fold(
      (error) => emit(LoginFailure(message: NetworkExceptions.getErrorMessage(error))),
      (user) => emit(LoginSuccess(user: user)),
    );
  }
}
