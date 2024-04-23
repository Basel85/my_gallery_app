import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_gallery_app/core/injection_container/injection_container.dart';
import 'package:my_gallery_app/features/login/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:my_gallery_app/features/login/presentation/widgets/app_title_text.dart';
import 'package:my_gallery_app/core/widgets/curved_oval_shapes/curved_oval_shapes.dart';
import 'package:my_gallery_app/core/widgets/body_component_size.dart';
import 'package:my_gallery_app/core/widgets/gallery_component/gallery_component.dart';
import 'package:my_gallery_app/features/login/presentation/widgets/grey_elipsed_component.dart';
import 'package:my_gallery_app/features/login/presentation/widgets/login_form/login_form.dart';
import 'package:my_gallery_app/features/login/presentation/widgets/love_photography/love_photography.dart';
import 'package:my_gallery_app/features/login/presentation/widgets/pink_elipsed_component.dart';
import 'package:my_gallery_app/core/widgets/blured_component/blured_component.dart';
import 'package:my_gallery_app/core/widgets/three_collapsed_white_circles/three_collapsed_white_circles.dart';
import 'package:my_gallery_app/core/widgets/video_component/video_component.dart';
import 'package:my_gallery_app/core/widgets/yellow_circle/yellow_circle.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BodyComponentSize(),
        const PinkElipsedComponent(),
        const BluredComponent(
          left: -196.86,
          top: 58.75,
          height: 593.69,
          width: 468.13,
        ),
        const GreyElipsedComponent(),
        const BluredComponent(
            left: 79.33, top: -77, height: 683.15, width: 538.67),
        const YellowCircle(),
        const ThreeCollapsedWhiteCircles(),
        const GalleryComponent(),
        const VideoComponent(),
        const CurvedOvalShapes(),
        const LovePhotography(),
        const AppTitleText(),
        BlocProvider(
            create: (context) => getIt<LoginCubit>(), child: const LoginForm()),
      ],
    );
  }
}
