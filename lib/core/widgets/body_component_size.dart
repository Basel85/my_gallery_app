import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BodyComponentSize extends StatelessWidget {
  final double appBarHeight;
  const BodyComponentSize({super.key, this.appBarHeight=0});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 428.w,
      height: 926.h-appBarHeight.h,
    );
  }
}
