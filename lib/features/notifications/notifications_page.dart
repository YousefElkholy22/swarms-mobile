import 'package:evnto/core/constants/app_assets.dart';
import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/styles/app_fonts.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(
              Assets.imagesAlarm,
              width: 120.h,
              height: 120.h,
            ),
            16.ph,
            Text(
              'No notifications yet',
              style: AppFonts.black24SemiBold,
            ),
            8.ph,
            Text(
              'You have no notifications at this time.',
              style: AppFonts.black16Normal,
            ),
          ],
        ),
      ),
    );
  }
}
