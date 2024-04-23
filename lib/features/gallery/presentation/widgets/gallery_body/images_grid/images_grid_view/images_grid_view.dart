import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery_app/features/gallery/presentation/widgets/gallery_body/images_grid/images_grid_view/gallery_image_component.dart';

class ImagesGridView extends StatelessWidget {
  final List<String> images;
  const ImagesGridView({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 731.h,
      child: GridView.builder(
        physics: const ScrollPhysics(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 108.w,
          childAspectRatio: 1,
          crossAxisSpacing: 24.w,
          mainAxisSpacing: 25.h,
        ),
        itemBuilder: (_, index) => GalleryImageComponent(
          imageUrl: images[index],
        ),
        itemCount: images.length,
      ),
    );
  }
}
