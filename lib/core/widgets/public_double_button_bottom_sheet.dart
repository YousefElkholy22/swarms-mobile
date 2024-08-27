import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../helpers/extensions/sizedbox_extensions.dart';
import '../styles/app_colors.dart';
import 'bottom_sheet_divider.dart';
import 'public_button.dart';
import 'public_outline_button.dart';
import 'public_text.dart';

class PublicDoubleButtonBottomSheet extends StatelessWidget {
  /// svg image
  final String? image;
  final String title;
  final String subtitle;
  final String? yesTitle;
  final Color? yesColor;
  final Color? noColor;
  final String? noTitle;
  final void Function()? onYes;
  final void Function()? onNo;
  const PublicDoubleButtonBottomSheet({
    super.key,
    this.image,
    required this.title,
    required this.subtitle,
    this.yesTitle,
    this.yesColor,
    this.noTitle,
    this.onYes,
    this.onNo,
    this.noColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          /// Image
          const BottomSheetDivder(),
          _getImage(),
          16.ph,

          /// Title
          PublicText(
            text: title,
            size: 22.sp,
            fw: FontWeight.bold,
          ),
          8.ph,
          PublicText(
            text: subtitle,
            size: 14.sp,
            color: AppColors.grey,
            align: TextAlign.center,
            max: 3,
          ),
          32.ph,

          /// Buttons
          Row(
            children: [
              Expanded(
                child: PublicOutlineButton(
                  title: noTitle ?? "No",
                  titleColor: noColor ?? AppColors.grey,
                  titleSize: 14.sp,
                  onPressed: onNo ??
                      () {
                        Navigator.pop(context);
                      },
                ),
              ),
              16.pw,
              Expanded(
                child: PublicButton(
                  title: yesTitle ?? "Yes",
                  backgroundColor: yesColor,
                  onPressed: onYes,
                  titleSize: 14.sp,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _getImage() {
    if (image != null) {
      return SvgPicture.asset(
        image!,
        width: 120.w,
        height: 120.w,
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
