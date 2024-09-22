import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/extensions/sizedbox_extensions.dart';
import '../../../../../core/styles/app_colors.dart';
import '../../../../../core/styles/app_fonts.dart';
import '../../../data/shared_event_entity.dart';
import 'shared_event_card_date.dart';
import 'shared_event_card_image.dart';
import 'shared_event_card_location.dart';

class SharedEventListTile extends StatelessWidget {
  final EventEntity event;
  const SharedEventListTile({
    super.key,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: const [
          BoxShadow(
            color: AppColors.lightGrey,
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SharedEventCardImage(
            event: event,
            showEventType: false,
            width: 132.w,
            height: 120.h,
          ),
          14.pw,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 4.w),
                decoration: BoxDecoration(
                  color: AppColors.lightBlue,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Text(
                  event.type.name,
                  style: AppFonts.blue12Semibold,
                ),
              ),
              10.ph,
              Text(
                event.name,
                maxLines: 1,
                style: AppFonts.black18SemiBold,
              ),
              10.ph,
              SharedEventCardDate(event: event, size: 14.sp,),
              10.ph,
              SharedEventCardLocation(location: event.location, size: 14.sp),
            ],
          ),
        ],
      ),
    );
  }
}
