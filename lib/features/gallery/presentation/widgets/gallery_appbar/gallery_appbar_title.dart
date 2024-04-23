import 'package:flutter/material.dart';
import 'package:my_gallery_app/core/theme/app_text_styles.dart';

class GalleryAppbarTitle extends StatelessWidget {
  const GalleryAppbarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Welcome Mina',
      style: AppTextStyles
          .fontSize32FontFamilyBalooThambi2FontWeightSemiBoldColor4A4A4A,
    );
  }
}
