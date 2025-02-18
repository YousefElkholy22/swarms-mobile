import 'package:evnto/core/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/extensions/sizedbox_extensions.dart';
import '../../../../core/styles/app_colors.dart';
import '../../../../core/styles/app_fonts.dart';
import '../../../shared/data/shared_event_entity.dart';

import '../../../shared/view/components/event_list_tile/shared_event_card_date.dart';
import '../../../shared/view/components/event_list_tile/shared_event_card_image.dart';
import '../../../shared/view/components/event_list_tile/shared_event_card_location.dart';

class EventCard extends StatelessWidget {
  final EventEntity event;
  const EventCard({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.eventDetails, arguments: event);
       },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SharedEventCardImage(event: event),
            10.ph,
            Text(
              event.name,
              maxLines: 1,
              style: AppFonts.black18SemiBold,
            ),
            10.ph,
            SharedEventCardDate(event: event),
            10.ph,
            SharedEventCardLocation(location: event.location),
          ],
        ),
      ),
    );
  }
}

