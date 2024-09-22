import 'package:appinio_animated_toggle_tab/appinio_animated_toggle_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styles/app_colors.dart';

class FavoritesFilter extends StatelessWidget {
  const FavoritesFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      child: AppinioAnimatedToggleTab(
        callback: (int i) {},
        tabTexts: const [
          'Upcoming',
          'Past',
        ],
        height: 54.h,
        width: 388.w,
        boxDecoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(8.r),
          ),
          boxShadow: const [
            BoxShadow(
              color: AppColors.lightGrey,
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),
        animatedBoxDecoration: BoxDecoration(
          color: AppColors.blue,
          borderRadius: BorderRadius.all(
            Radius.circular(6.r),
          ),
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
        ),
        activeStyle:  TextStyle(
          color: AppColors.white,
          fontSize: 18.sp,
        ),
        inactiveStyle:  TextStyle(
          color: AppColors.black,
          fontSize: 18.sp,
        ),
      ),
    );
  }
}
