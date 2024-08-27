import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/app_colors.dart';
import 'public_text.dart';

enum ImageType { network, file, asset, none }

class PublicCircularImage extends StatelessWidget {
  final String? image;
  final ImageType type;
  const PublicCircularImage({
    super.key,
    this.image,
    this.type = ImageType.none,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.w,
      width: 140.w,
      decoration: const BoxDecoration(
        color: AppColors.blue,
        shape: BoxShape.circle,
      ),
      child: _getImage(),
    );
  }

  Widget _getImage() {
    switch (type) {
      case ImageType.network:
        return _getNetworkImage();
      case ImageType.file:
        return _getFileImage();
      case ImageType.asset:
        return _getAssetImage();
      default:
        return _getNoneImage();
    }
  }

  Widget _getNoneImage() {
    return const Center(
      child: PublicText(
        text: "no image",
        color: AppColors.white,
      ),
    );
  }

  ClipOval _getAssetImage() {
    return ClipOval(
      child: Image.asset(
        image!,
        fit: BoxFit.cover,
      ),
    );
  }

  ClipOval _getNetworkImage() {
    return ClipOval(
      child: Image.network(
        image!,
        fit: BoxFit.cover,
      ),
    );
  }

  ClipOval _getFileImage() {
    return ClipOval(
      child: Image.file(
        File(image!),
        fit: BoxFit.cover,
      ),
    );
  }
}
