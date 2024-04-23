import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery_app/core/theme/app_colors.dart';

class GalleryImageComponent extends StatelessWidget {
  final String imageUrl;
  const GalleryImageComponent({super.key, required this.imageUrl});
  
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(20.r),
         boxShadow: [
           BoxShadow(
             color: AppColors.pureBlackColor,
             offset: Offset(0, 4.h),
             blurRadius: 8,
           ),
         ],
       ),
       child: Image.network(
         imageUrl,
         fit: BoxFit.cover,
       )
    );
  }
}