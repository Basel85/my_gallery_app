import 'package:flutter/material.dart';
import 'package:my_gallery_app/core/theme/app_colors.dart';
import 'package:my_gallery_app/features/login/presentation/widgets/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginBody(),
    );
  }
}
