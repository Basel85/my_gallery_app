import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery_app/features/login/presentation/widgets/blured_component/transparent_elipse_component.dart';

class BluredComponent extends StatelessWidget {
  final double left;
  final double top;
  final double height;
  final double width;
  const BluredComponent(
      {super.key,
      required this.left,
      required this.top,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left.w,
      top: top.h,
      child: ClipOval(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
          child: TransparentElipseComponent(
            height: height,
            width: width,
          ),
        ),
      ),
    );
  }
}
