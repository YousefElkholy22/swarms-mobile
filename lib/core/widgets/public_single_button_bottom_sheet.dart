import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../helpers/extensions/sizedbox_extensions.dart';
import '../styles/app_colors.dart';
import '../styles/app_fonts.dart';
import 'public_button.dart';

class PublicSingleButtonBottomSheet extends StatelessWidget {
  /// svg image
  final String image;
  final String title;
  final String subtitle;
  final String? buttonTitle;
  final Color? buttonColor;
  final void Function()? buttonOnPressed;
  const PublicSingleButtonBottomSheet({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    this.buttonTitle,
    this.buttonColor,
    this.buttonOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 4.h,
            width: 40.w,
            decoration: BoxDecoration(
              color: AppColors.grey,
              borderRadius: BorderRadius.circular(64.r),
            ),
          ),
          SvgPicture.asset(
            image,
            width: 120.w,
            height: 120.w,
          ),
          16.ph,
          Text(
            title,
            style: AppFonts.black22Bold,
          ),
          8.ph,
          Text(
            subtitle,
            maxLines: 3,
            textAlign: TextAlign.center,
            style: AppFonts.grey14Normal.copyWith(),
          ),
          32.ph,
          PublicButton(
            title: buttonTitle ?? "Ok",
            backgroundColor: buttonColor ?? AppColors.blue,
            width: double.infinity,
            onPressed: buttonOnPressed ??
                () {
                  Navigator.pop(context);
                },
          ),
        ],
      ),
    );
  }
}