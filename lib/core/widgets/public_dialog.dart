import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../helpers/extensions/sizedbox_extensions.dart';
import '../styles/app_colors.dart';
import 'public_text.dart';
import 'public_button.dart';

class PublicDialog extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String buttonTitle;

  /// Responsable for the dialog style, if true, the dialog will be blue, if false, the dialog will be red
  final bool isSuccess;
  final bool isSvg;
  final void Function()? onClick;

  const PublicDialog({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.buttonTitle,
    this.isSuccess = true,
    this.isSvg = false,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      surfaceTintColor: AppColors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _getImage(),
            24.ph,
            PublicText(
              text: title,
              size: 20.sp,
              fw: FontWeight.bold,
            ),
            16.ph,
            PublicText(
              text: subtitle,
              size: 14.sp,
              color: AppColors.grey,
              align: TextAlign.center,
              max: 3,
            ),
            24.ph,
            PublicButton(
              title: buttonTitle,
              backgroundColor: isSuccess ? AppColors.green : AppColors.red,
              onPressed: onClick ??
                  () {
                    Navigator.pop(context);
                  },
            ),
          ],
        ),
      ),
    );
  }

  Widget _getImage() {
    if (isSvg) {
      return SvgPicture.asset(
        image,
        width: 100.w,
        height: 100.w,
      );
    } else {
      return Image.asset(
        image,
        width: 100.w,
        height: 100.w,
      );
    }
  }
}
