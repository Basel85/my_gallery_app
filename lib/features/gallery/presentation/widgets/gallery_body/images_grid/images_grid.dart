import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery_app/core/widgets/get_error_message.dart';
import 'package:my_gallery_app/features/gallery/presentation/cubits/get_gallery_data_cubit/get_gallery_data_cubit.dart';
import 'package:my_gallery_app/features/gallery/presentation/cubits/get_gallery_data_cubit/get_gallery_data_states.dart';
import 'package:my_gallery_app/features/gallery/presentation/widgets/gallery_body/images_grid/images_grid_view/images_grid_view.dart';

class ImagesGrid extends StatelessWidget {
  final double appBarHeight;

  const ImagesGrid({super.key, required this.appBarHeight});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 28.w,
      right: 28.w,
      top: 237.h - appBarHeight.h,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent.withOpacity(0.5),
            ),
            child: BlocBuilder<GetGalleryDataCubit,GetGalleryDataState>(
              builder: (context, state) {
                if (state is GetGalleryDataSuccess) {
                  return ImagesGridView(images: state.galleryData.images);
                } else if (state is GetGalleryDataFailure) {
                  return GetErrorMessage(
                      errorMessage: state.errorMessage,
                      onPressed: () {
                        GetGalleryDataCubit.get(context).getGalleryData();
                      });
                }
                return const Center(child: CircularProgressIndicator.adaptive());
              },
            ),
          ),
        ),
      ),
    );
  }
}
