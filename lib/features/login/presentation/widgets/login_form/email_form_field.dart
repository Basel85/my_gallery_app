import 'package:flutter/material.dart';
import 'package:my_gallery_app/features/login/presentation/widgets/custom_text_form_field/custom_text_form_field.dart';

class EmailFormField extends StatelessWidget {
  final TextEditingController emailController;
  const EmailFormField({super.key, required this.emailController});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(labelText: "Email", controller: emailController);
  }
}
