import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery_app/features/gallery/presentation/widgets/gallery_appbar/gallery_appbar_title.dart';
import 'package:my_gallery_app/features/gallery/presentation/widgets/gallery_appbar/user_profile_picture.dart';

class GalleryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GalleryAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(),
      title: const GalleryAppbarTitle(),
      actions: const [UserProfilePicture()],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(40.h);
}
