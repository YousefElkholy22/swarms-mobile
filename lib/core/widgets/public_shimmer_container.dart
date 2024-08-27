import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../styles/app_colors.dart';

class PublicShimmerContainer extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;
  const PublicShimmerContainer({
    super.key,
    this.width = 80,
    this.height = 20,
    this.borderRadius = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.lightGrey,
      highlightColor: Colors.white,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(borderRadius),
          color: Colors.white,
        ),
      ),
    );
  }
}
