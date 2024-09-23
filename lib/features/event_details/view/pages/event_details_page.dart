import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:evnto/core/styles/app_colors.dart';
import 'package:evnto/core/widgets/public_button.dart';
import 'package:flutter/material.dart';

import 'package:evnto/features/shared/data/shared_event_entity.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import '../../../home/view/components/favoirte_icon.dart';
import '../components/event_details_image.dart';
import '../components/event_info.dart';

class EventDetailsPage extends StatelessWidget {
  final EventEntity event;
  const EventDetailsPage({
    required this.event,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SizedBox.expand(),
          EventDetailsImage(
            image: event.image,
          ),
          EventInfo(
            event: event,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.lightGrey,
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: PublicButton(
                title: "Get Ticket",
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
