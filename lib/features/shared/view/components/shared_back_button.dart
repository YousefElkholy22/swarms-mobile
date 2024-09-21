import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styles/app_colors.dart';

class SharedBackButton extends StatelessWidget {
  final void Function()? onPressed;
  const SharedBackButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 46.h,
        width: 46.h,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.blue),
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.arrow_back_rounded,
          color: AppColors.blue,
          size: 22.sp,
        ),
      ),
    );
  }
}
