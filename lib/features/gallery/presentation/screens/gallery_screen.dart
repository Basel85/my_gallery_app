import 'package:flutter/material.dart';
import 'package:my_gallery_app/features/gallery/presentation/widgets/gallery_appbar/gallery_appbar.dart';
import 'package:my_gallery_app/features/gallery/presentation/widgets/gallery_body/gallery_body.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: GalleryAppBar(),
      body: GalleryBody(),
    );
  }
}