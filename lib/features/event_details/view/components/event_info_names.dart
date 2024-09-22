import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:evnto/core/styles/app_fonts.dart';
import 'package:evnto/features/shared/data/shared_event_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styles/app_colors.dart';

class EventInfoNames extends StatelessWidget {
  const EventInfoNames({
    super.key,
    required this.event,
  });

  final EventEntity event;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                event.name,
                maxLines: 1,
                style: AppFonts.black24SemiBold,
              ),
              8.ph,
              Text(
                "Event Organized by IEEE Team",
                maxLines: 1,
                style: AppFonts.black14Normal,
              ),
            ],
          ),
        ),
        Container(
          padding:
              EdgeInsets.symmetric(horizontal: 14.w, vertical: 4.w),
          decoration: BoxDecoration(
            color: AppColors.lightBlue,
            borderRadius: BorderRadius.circular(4.r),
          ),
          child: Text(
            event.type.name,
            style: AppFonts.blue12Semibold,
          ),
        )
      ],
    );
  }
}