import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery_app/features/login/presentation/widgets/gallery_component/gallery_component_icon.dart';

class GalleryComponent extends StatelessWidget {
  const GalleryComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 4.w, top: 337.h, child: const GalleryComponentIcon());
  }
}
