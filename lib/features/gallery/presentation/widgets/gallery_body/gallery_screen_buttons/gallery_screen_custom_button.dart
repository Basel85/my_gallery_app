import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery_app/core/theme/app_colors.dart';
import 'package:my_gallery_app/core/theme/app_text_styles.dart';

class GalleryScreenCustomButton extends StatelessWidget {
  final String buttonText;
  final void Function() onTap;
  const GalleryScreenCustomButton(
      {super.key, required this.onTap, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: 145.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.pureWhiteColor,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Text(
            buttonText,
            style: AppTextStyles
                .fontSize20FontFamilyBalooThambi2FontWeightSemiBoldColor4A4A4A,
            textAlign: TextAlign.center,
          )),
    );
  }
}
