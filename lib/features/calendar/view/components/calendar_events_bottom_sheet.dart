import 'package:evnto/core/constants/app_dummy.dart';
import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:evnto/core/widgets/bottom_sheet_divider.dart';
import 'package:evnto/features/calendar/view/components/dismisable_event_list_tile.dart';
import 'package:evnto/features/shared/view/components/event_list_tile/shared_event_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalendarEventsBottomSheet extends StatelessWidget {
  const CalendarEventsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600.h,
      child: Column(
        children: [
          16.ph,
          const BottomSheetDivder(),
          16.ph,
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (_, index) {
                return DismisableEventListTile(event: AppDummy.events[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
