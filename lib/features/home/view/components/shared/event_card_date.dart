import 'package:evnto/core/helpers/extensions/datetime_extensions.dart';
import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/styles/app_colors.dart';
import '../../../../../core/styles/app_fonts.dart';
import '../../../data/event_entity.dart';

class EventCardDate extends StatelessWidget {
  final EventEntity event;
  final double? size;
  const EventCardDate({
    super.key,
    required this.event,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          HugeIcons.strokeRoundedCalendar02,
          color: AppColors.blue,
          size: (size ?? 24.sp- 4.sp),
        ),
        8.pw,
        Text(
          event.date.dayDayMonthFormat,
          style: AppFonts.grey16SemiBold.copyWith(fontSize: size),
        ),
        20.pw,
        Icon(
          Iconsax.clock,
          color: AppColors.blue,
          size: (size ?? 24.sp- 4.sp),
        ),
        8.pw,
        Text(
          event.date.hourMinute12Format,
          style: AppFonts.grey16SemiBold.copyWith(fontSize: size),
        ),
      ],
    );
  }
}
