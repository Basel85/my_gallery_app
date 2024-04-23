import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_gallery_app/features/login/presentation/widgets/app_title_text.dart';
import 'package:my_gallery_app/features/login/presentation/widgets/curved_oval_shapes/curved_oval_shapes.dart';
import 'package:my_gallery_app/features/login/presentation/widgets/full_screen_component.dart';
import 'package:my_gallery_app/features/login/presentation/widgets/gallery_component/gallery_component.dart';
import 'package:my_gallery_app/features/login/presentation/widgets/grey_elipsed_component.dart';
import 'package:my_gallery_app/features/login/presentation/widgets/login_form/login_form.dart';
import 'package:my_gallery_app/features/login/presentation/widgets/love_photography/love_photography.dart';
import 'package:my_gallery_app/features/login/presentation/widgets/pink_elipsed_component.dart';
import 'package:my_gallery_app/features/login/presentation/widgets/blured_component/blured_component.dart';
import 'package:my_gallery_app/features/login/presentation/widgets/three_collapsed_white_circles/three_collapsed_white_circles.dart';
import 'package:my_gallery_app/features/login/presentation/widgets/video_component/video_component.dart';
import 'package:my_gallery_app/features/login/presentation/widgets/yellow_circle/yellow_circle.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        FullScreenComponent(),
        PinkElipsedComponent(),
        BluredComponent(
          left: -196.86,
          top: 58.75,
          height: 593.69,
          width: 468.13,
        ),
        GreyElipsedComponent(),
        BluredComponent(left: 79.33, top: -77, height: 683.15, width: 538.67),
        YellowCircle(),
        ThreeCollapsedWhiteCircles(),
        GalleryComponent(),
        VideoComponent(),
        CurvedOvalShapes(),
        LovePhotography(),
        AppTitleText(),
        LoginForm(),
      ],
    );
  }
}
