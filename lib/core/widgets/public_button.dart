import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';

import '../styles/app_colors.dart';
import 'public_text.dart';

class PublicButton extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  final double? width;
  final double borderRadius;
  final double? titleSize;
  final Color? titleColor;
  final Color? backgroundColor;
  final double? verticalpadding;

  const PublicButton({
    super.key,
    required this.title,
    this.onPressed,
    this.titleSize,
    this.width,
    this.borderRadius = 12,
    this.titleColor,
    this.backgroundColor,
    this.verticalpadding,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 0.5.sw,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: verticalpadding ?? 16.h),
          child: PublicText(
            text: title,
            size: titleSize ?? 22.sp,
            color: titleColor ?? AppColors.white,
            fw: FontWeight.normal, // normal
          ),
        ),
      ),
    );
  }
}
