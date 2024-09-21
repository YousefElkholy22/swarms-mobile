import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styles/app_colors.dart';
import '../../../../core/styles/app_fonts.dart';
import '../../data/event_entity.dart';
import 'favoirte_icon.dart';


class EventCardImage extends StatelessWidget {
  final EventEntity event;
  const EventCardImage({
    super.key,
    required this.event,
  });


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.r),
          child: Image.asset(
            event.image,
            height: 168.h,
            width: 300.w,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 8.h,
          left: 8.w,
          child: Container(
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
        ),
        Positioned(
          top: 8.h,
          right: 8.w,
          child: const FavoriteIcon(),
        ),
      ],
    );
  }
}