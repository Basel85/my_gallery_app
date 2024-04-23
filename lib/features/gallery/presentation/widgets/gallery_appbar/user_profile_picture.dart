import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery_app/core/helpers/app_assets.dart';

class UserProfilePicture extends StatelessWidget {
  const UserProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 33.r,
      backgroundImage: const AssetImage(
        AppAssets.userProfilePicture,
      ),
    );
  }
}
