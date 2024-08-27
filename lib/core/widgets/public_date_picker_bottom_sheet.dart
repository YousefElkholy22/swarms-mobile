import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../styles/app_colors.dart';

class PublicDatePickerBottomSheet extends StatelessWidget {
  final dynamic Function(Object?)? onSubmit;
  final DateTime? initialDate;
  const PublicDatePickerBottomSheet({
    super.key,
    this.onSubmit,
    this.initialDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: SfDateRangePicker(
        showActionButtons: true,
        showTodayButton: true,
        headerStyle: const DateRangePickerHeaderStyle(
          backgroundColor: AppColors.white,
        ),
        minDate: DateTime(2000),
        maxDate: DateTime.now(),
        backgroundColor: AppColors.white,
        initialSelectedDate: initialDate ?? DateTime.now(),
        initialDisplayDate: initialDate ?? DateTime.now(),
        onSubmit: onSubmit,
        onCancel: () => Navigator.pop(context),
      ),
    );
  }
}
