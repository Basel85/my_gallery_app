import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery_app/core/helpers/app_route_paths.dart';
import 'package:my_gallery_app/core/theme/app_colors.dart';
import 'package:my_gallery_app/core/utils/snack_bar_viewer.dart';
import 'package:my_gallery_app/core/widgets/loading_alert_dialog.dart';
import 'package:my_gallery_app/features/login/domain/entities/login_request_body.dart';
import 'package:my_gallery_app/features/login/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:my_gallery_app/features/login/presentation/cubits/login_cubit/login_states.dart';
import 'package:my_gallery_app/features/login/presentation/widgets/login_form/email_form_field.dart';
import 'package:my_gallery_app/features/login/presentation/widgets/login_form/login_text.dart';
import 'package:my_gallery_app/features/login/presentation/widgets/login_form/password_form_field.dart';
import 'package:my_gallery_app/features/login/presentation/widgets/login_form/submit_button/submit_button.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> with SnackBarViewer {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 41.w,
      right: 41.w,
      top: 368.h,
      child: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginFailure) {
            Navigator.pop(context);
            showSnackBar(
                context: context,
                message: state.message,
                backgroundColor: Colors.red);
          } else if (state is LoginSuccess) {
            Navigator.pop(context);
            showSnackBar(
                context: context,
                message: 'Login Successful',
                backgroundColor: Colors.green);
            Navigator.pushReplacementNamed(context, AppRoutePaths.gallery);
          } else {
            showDialog(
                context: context,
                builder: (context) {
                  return const LoadingAlertDialog();
                });
          }
        },
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.pureWhiteColor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(32.r),
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 48.h),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const LoginText(),
                      SizedBox(
                        height: 37.h,
                      ),
                      EmailFormField(emailController: _emailController),
                      SizedBox(
                        height: 37.h,
                      ),
                      PasswordFormField(
                          passwordController: _passwordController),
                      SizedBox(
                        height: 37.h,
                      ),
                      SubmitButton(
                        onTap: () {
                          FocusScope.of(context).unfocus();
                          if (_formKey.currentState!.validate()) {
                            LoginCubit.get(context).login(LoginRequestBody(
                                email: _emailController.text,
                                password: _passwordController.text));
                          }
                        },
                      ),
                      SizedBox(
                        height: 7.67.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
