import 'package:flutter/material.dart';
import 'package:my_gallery_app/core/widgets/blured_component/blured_component.dart';
import 'package:my_gallery_app/core/widgets/body_component_size.dart';
import 'package:my_gallery_app/core/widgets/gallery_component/gallery_component.dart';
import 'package:my_gallery_app/core/widgets/three_collapsed_white_circles/three_collapsed_white_circles.dart';
import 'package:my_gallery_app/core/widgets/video_component/video_component.dart';
import 'package:my_gallery_app/core/widgets/yellow_circle/yellow_circle.dart';
import 'package:my_gallery_app/features/gallery/presentation/widgets/gallery_body/gallery_screen_buttons/gallery_screen_buttons.dart';
import 'package:my_gallery_app/features/gallery/presentation/widgets/gallery_body/images_grid/images_grid.dart';
import 'package:my_gallery_app/features/login/presentation/widgets/grey_elipsed_component.dart';
import 'package:my_gallery_app/features/login/presentation/widgets/pink_elipsed_component.dart';

class GalleryBody extends StatelessWidget {
  const GalleryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        BodyComponentSize(
          appBarHeight: 40,
        ),
        PinkElipsedComponent(
          appBarHeight: 40,
        ),
        BluredComponent(
          left: -196.86,
          top: 58.75,
          height: 593.69,
          width: 468.13,
        ),
        GreyElipsedComponent(
          appBarHeight: -40,
        ),
        BluredComponent(left: 79.33, top: -77, height: 683.15, width: 538.67),
        YellowCircle(
          appBarHeight: 40,
        ),
        ThreeCollapsedWhiteCircles(
          appBarHeight: 40,
        ),
        GalleryComponent(
          appBarHeight: 40,
        ),
        VideoComponent(
          appBarHeight: 40,
        ),
        GalleryScreenButtons(
          appBarHeight: 40,
        ),
        ImagesGrid(
          appBarHeight: 40,
        )
      ],
    );
  }
}
