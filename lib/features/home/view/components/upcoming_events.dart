import 'package:another_flushbar/flushbar.dart';
import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:evnto/core/widgets/public_title_tile.dart';
import 'package:evnto/features/home/view/components/event_card.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_dummy.dart';
import '../../../shared/data/shared_event_entity.dart';

class EventsList extends StatelessWidget {
  final String title;
  final Function() seeAllOnTap;
  final List<EventEntity> events;
  const EventsList({
    super.key,
    required this.title,
    required this.seeAllOnTap,
    required this.events,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: PublicTitleTile(
              title: title,
              seeAllOnTap: seeAllOnTap,
            ),
          ),
          8.ph,
          SizedBox(
            height: 320.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: events.length,
              itemBuilder: (context, index) {
                return EventCard(
                  event: events[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
