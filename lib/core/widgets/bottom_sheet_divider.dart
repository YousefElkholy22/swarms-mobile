import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/app_colors.dart';

class BottomSheetDivder extends StatelessWidget {
  const BottomSheetDivder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4.h,
      width: 40.w,
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(64.r),
      ),
    );
  }
}