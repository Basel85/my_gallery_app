import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery_app/core/theme/app_text_styles.dart';

class AppTitleText extends StatelessWidget {
  const AppTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 127.w,
      right: 127.w,
      top: 206.h,
      child: Text(
        'My Gallery',
        style:
            AppTextStyles.fontSize50FontFamilySegoeUIFontWeightBoldColor4A4A4A,
        textAlign: TextAlign.center,
      ),
    );
  }
}
