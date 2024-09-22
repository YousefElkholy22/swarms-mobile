import '../styles/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class PublicDivider extends StatelessWidget {
  final double? width;
  final Color? color;
  const PublicDivider({super.key, this.width, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? AppColors.darkGrey,
      height: 0.8.h,
      width: width ?? 0.4.sw,
    );
  }
}
