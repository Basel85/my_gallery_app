import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_gallery_app/core/helpers/app_assets.dart';

class CurvedOvalShapesImage extends StatelessWidget {
  const CurvedOvalShapesImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(AppAssets.curvedOvalShapes,
        width: 371.53.w, height: 357.h);
  }
}
