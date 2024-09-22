import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styles/app_colors.dart';

class ToggleCard extends StatelessWidget {
  final bool isSelected;
  final int index;
  const ToggleCard({
    super.key,
    required this.isSelected,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isSelected ? AppColors.blue : AppColors.white,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Text(
        index == 0 ? 'Upcoming' : 'Past',
        style: TextStyle(
          color: isSelected ? AppColors.white : AppColors.blue,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          fontSize: 16.sp,
        ),
      ),
    );
  }
}
