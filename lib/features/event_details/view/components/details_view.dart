import 'package:evnto/core/constants/app_dummy.dart';
import 'package:evnto/core/styles/app_colors.dart';
import 'package:evnto/features/shared/data/shared_event_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text(
        "Description",
        style: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 8.h),
      Text(
        "This is the description text that goes under the title. It can be multiple lines and will be scrollable if it exceeds the available space.",
        style: TextStyle(
        fontSize: 16.sp,
        color: AppColors.grey,
        ),
      ),
      ],
    ),
    );
  }
}
