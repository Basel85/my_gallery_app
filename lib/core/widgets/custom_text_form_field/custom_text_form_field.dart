import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery_app/core/theme/app_colors.dart';
import 'package:my_gallery_app/core/theme/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final int? maxLines;
  const CustomTextFormField(
      {super.key,
      required this.labelText,
      this.validator,
      required this.controller,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 282.42.w,
        child: TextFormField(
          maxLines: maxLines,
          controller: controller,
          decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 21.41.w, vertical: 11.68.h),
            fillColor: AppColors.whiteColor,
            labelText: labelText,
            labelStyle: AppTextStyles
                .fontSize16FontFamilySegoeUIFontWeightSemiBoldColor988F8C,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(22.r),
              ),
            ),
          ),
          validator: validator,
        ));
  }
}
