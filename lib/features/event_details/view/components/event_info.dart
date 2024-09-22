import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:evnto/core/helpers/extensions/sliver_extensions.dart';
import 'package:evnto/core/widgets/public_button.dart';
import 'package:evnto/core/widgets/public_divider.dart';
import 'package:evnto/features/shared/data/shared_event_entity.dart';
import 'package:evnto/features/shared/view/components/event_list_tile/shared_event_card_location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/view/components/event_list_tile/shared_event_card_date.dart';
import 'event_info_names.dart';
import 'event_info_tabs.dart';

class EventInfo extends StatelessWidget {
  final EventEntity event;
  const EventInfo({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 240.h,
      right: 0,
      left: 0,
      bottom: 30.h,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(32.r),
          ),
        ),
        child: CustomScrollView(
          slivers: [
            EventInfoNames(event: event).toSliver(),
            20.svph,
            const PublicDivider(
              width: double.infinity,
            ).toSliver(),
            20.svph,
            SharedEventCardDate(event: event).toSliver(),
            8.svph,
            PublicButton(
              width: 160.w,
              title: "Add to Calendar",
              borderRadius: 32.r,
              titleSize: 12.sp,
              onPressed: () {},
            ).toSliver(),
            12.svph,
            SharedEventCardLocation(location: event.location).toSliver(),
            8.svph,
            PublicButton(
              width: 160.w,
              title: "Get Location",
              borderRadius: 32.r,
              titleSize: 12.sp,
              onPressed: () {},
            ).toSliver(),
            24.svph,
            EventInfoTabs(event: event).toSliver(),
          ],
        ),
      ),
    );
  }
}
