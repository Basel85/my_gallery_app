import 'package:flutter/material.dart';
import 'package:my_gallery_app/core/theme/app_text_styles.dart';

class LoginText extends StatelessWidget {
  const LoginText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'LOG IN',
      style: AppTextStyles.fontSize30FontFamilySegoeUIFontWeightBoldColor4A4A4A,
    );
  }
}