import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../styles/app_colors.dart';

enum ImageType { network, file, asset, none }

class PublicCircularImage extends StatelessWidget {
  final String? image;
  final ImageType type;
  final double? radius;
  const PublicCircularImage({
    super.key,
    this.image,
    this.type = ImageType.none,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (radius ?? 70).r * 2,
      width: (radius ?? 70).r * 2,
      decoration: const BoxDecoration(
        color: AppColors.white,
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
    return Center(
      child: Icon(
        Iconsax.user,
        color: AppColors.darkGrey,
        size: (radius ?? 70).r * 2 - 20.r,

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
