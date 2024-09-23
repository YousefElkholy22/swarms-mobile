import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'image_icons_row.dart';

class EventDetailsImage extends StatelessWidget {
  final String image;
  const EventDetailsImage({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Stack(
        children: [
          Image.asset(
            image,
            fit: BoxFit.cover,
            height: 268.h,
          ),
          Positioned(
            top: 60.h,
            left: 20.w,
            right: 20.w,
            child: const ImageIconsRow(),
          ),
        ],
      ),
    );
  }
}

