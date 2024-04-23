import 'package:flutter/material.dart';
import 'package:my_gallery_app/features/login/presentation/widgets/custom_text_form_field/custom_text_form_field.dart';

class PasswordFormField extends StatelessWidget {
  final TextEditingController passwordController;
  const PasswordFormField({super.key, required this.passwordController});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      labelText: "Password",
      controller: passwordController,
    );
  }
}
