import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery_app/core/theme/app_colors.dart';

class AppTextStyles {
   static TextStyle get fontSize50FontFamilySegoeUIFontWeightBoldColor4A4A4A => TextStyle(
     fontSize: 50.sp,
     fontWeight: FontWeight.bold,
     color: AppColors.blackColor,
   );
   static TextStyle get fontSize30FontFamilySegoeUIFontWeightBoldColor4A4A4A => TextStyle(
     fontSize: 30.sp,
     fontWeight: FontWeight.bold,
     color: AppColors.blackColor,
   );
   static TextStyle get fontSize16FontFamilySegoeUIFontWeightSemiBoldColor988F8C => TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.secondGreyColor,
   );
   static TextStyle get fontSize18FontFamilySegoeUIFontWeightBoldColorFFFFFF => TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.bold,
      color: AppColors.pureWhiteColor,
   ); 
}
