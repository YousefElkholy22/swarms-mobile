import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/app_colors.dart';
import '../styles/app_fonts.dart';

class PublicOutlineButton extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  final double? width;
  final double? borderRadius;
  final double? titleSize;
  final Color titleColor;
  final Color backgroundColor;
  final double? verticalpadding;

  const PublicOutlineButton({
    super.key,
    required this.title,
    this.onPressed,
    this.titleSize,
    this.width,
    this.borderRadius,
    this.titleColor = AppColors.blue,
    this.backgroundColor = AppColors.white,
    this.verticalpadding,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 0.5.sw,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: titleColor,
          side: BorderSide(color: titleColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 12.r),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: verticalpadding ?? 16.h),
          child: Text(
            title,
            style: AppFonts.black22SemiBold.copyWith(fontSize: titleSize),
          ),
        ),
      ),
    );
  }
}