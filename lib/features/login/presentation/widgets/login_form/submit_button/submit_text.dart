import 'package:flutter/material.dart';
import 'package:my_gallery_app/core/theme/app_text_styles.dart';

class SubmitText extends StatelessWidget {
  const SubmitText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "SUBMIT",style: AppTextStyles.fontSize18FontFamilySegoeUIFontWeightBoldColorFFFFFF,
      textAlign: TextAlign.center,
    );
  }
}