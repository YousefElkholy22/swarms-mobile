import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';

import '../styles/app_colors.dart';
import '../styles/app_fonts.dart';

class PublicButton extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  final double? width;
  final double? borderRadius;
  final double? titleSize;
  final Color? titleColor;
  final Color? backgroundColor;
  final double? verticalpadding;
  final FontWeight? titleWeight;

  const PublicButton({
    super.key,
    required this.title,
    this.onPressed,
    this.titleSize,
    this.width,
    this.borderRadius,
    this.titleColor,
    this.backgroundColor,
    this.verticalpadding,
    this.titleWeight,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 1.sw,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16.r),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: verticalpadding ?? 16.h),
          child: Text(
            title,
            style: AppFonts.white20Bold.copyWith(
              color: titleColor,
              fontSize: titleSize,
              fontWeight: titleWeight,
            ),
          ),
        ),
      ),
    );
  }
}
