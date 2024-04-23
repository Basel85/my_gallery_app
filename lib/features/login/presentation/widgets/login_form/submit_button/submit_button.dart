import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery_app/core/theme/app_colors.dart';
import 'package:my_gallery_app/features/login/presentation/widgets/login_form/submit_button/submit_text.dart';

class SubmitButton extends StatelessWidget {
  final void Function() onTap;
  const SubmitButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 282.42.w,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 22.11.h),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.lightBlueColor,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: const SubmitText(),
      ),
    );
  }
}
