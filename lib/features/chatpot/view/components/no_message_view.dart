import 'package:evnto/app.dart';
import 'package:evnto/core/constants/app_assets.dart';
import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:evnto/core/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class NoMessageView extends StatelessWidget {
  const NoMessageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            Assets.jsonsLoading,
            width: 200.w,
            height: 200.h,
          ),
          2.ph,
           Text(
            'wating for messages...',
            style: TextStyle(
              fontSize: 16.sp,
              color: AppColors.darkGrey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
