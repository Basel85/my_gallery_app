import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_gallery_app/core/utils/snack_bar_viewer.dart';
import 'package:my_gallery_app/core/widgets/loading_alert_dialog.dart';
import 'package:my_gallery_app/features/gallery/presentation/cubits/get_gallery_data_cubit/get_gallery_data_cubit.dart';
import 'package:my_gallery_app/features/gallery/presentation/cubits/upload_image_cubit/upload_image_cubit.dart';
import 'package:my_gallery_app/features/gallery/presentation/cubits/upload_image_cubit/upload_image_states.dart';
import 'package:my_gallery_app/features/gallery/presentation/widgets/gallery_body/gallery_screen_buttons/gallery_screen_custom_button.dart';

class GalleryScreenButtons extends StatelessWidget with SnackBarViewer {
  final double appBarHeight;
  const GalleryScreenButtons({super.key, required this.appBarHeight});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 163.h - appBarHeight.h,
      left: 0,
      right: 0,
      child: BlocListener<UploadImageCubit, UploadImageState>(
        listener: (context, state) {
          if (state is UploadImageSuccess) {
            Navigator.pop(context);
            showSnackBar(
                context: context,
                message: state.message,
                backgroundColor: Colors.green);
            GetGalleryDataCubit.get(context).getGalleryData();
          } else if (state is UploadImageFailure) {
            Navigator.pop(context);
            showSnackBar(
                context: context,
                message: 'Image Uploaded Successfully',
                backgroundColor: Colors.green);
            GetGalleryDataCubit.get(context).getGalleryData();
          } else {
            showDialog(
                context: context,
                builder: (context) {
                  return const LoadingAlertDialog();
                });
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GalleryScreenCustomButton(onTap: () {}, buttonText: "log out"),
            GalleryScreenCustomButton(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Column(
                            children: [
                              GestureDetector(
                                child: const Text("Gallery"),
                                onTap: () {
                                  UploadImageCubit.get(context).uploadImage(
                                      imageSource: ImageSource.gallery);
                                  Navigator.pop(context);
                                },
                              ),
                              GestureDetector(
                                child: const Text("Camera"),
                                onTap: () {
                                  UploadImageCubit.get(context).uploadImage(
                                      imageSource: ImageSource.gallery);
                                    Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                        );
                      });
                },
                buttonText: "upload"),
          ],
        ),
      ),
    );
  }
}
