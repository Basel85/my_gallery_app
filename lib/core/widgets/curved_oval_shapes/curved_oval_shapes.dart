import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery_app/core/widgets/curved_oval_shapes/curved_oval_shapes_image.dart';

class CurvedOvalShapes extends StatelessWidget {
  const CurvedOvalShapes({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: -72.w,
      top: -140.h,
      child: const CurvedOvalShapesImage(),
    );
  }
}
