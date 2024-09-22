import 'package:evnto/core/constants/app_dummy.dart';
import 'package:evnto/core/helpers/extensions/sliver_extensions.dart';
import 'package:evnto/core/styles/app_colors.dart';
import 'package:evnto/features/shared/data/shared_event_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'details_view.dart';
import 'reviews_view.dart';
import 'speaker_view.dart';

class EventInfoTabs extends StatelessWidget {
  final EventEntity event;
  const EventInfoTabs({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      animationDuration: const Duration(milliseconds: 300),
      child: SizedBox(
        height: 260.h,
        child: Column(
          children: [
            TabBar(
              labelStyle: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.normal,
                color: AppColors.blue,
              ),
              unselectedLabelStyle: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.normal,
                color: AppColors.grey,
              ),
              indicatorColor: AppColors.blue,
              tabs: const [
                Tab(
                  text: "Details",
                ),
                Tab(
                  text: "Speakers",
                ),
                Tab(
                  text: "Reviews",
                ),
              ],
            ),
             const Expanded(
              child: TabBarView(
                children:  [
                   DetailsView(),
                   SpeakersView(),
                   ReviewsView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



