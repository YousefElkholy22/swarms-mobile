import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/styles/app_colors.dart';
import '../../../../../core/styles/app_fonts.dart';
import '../../../../home/view/components/favoirte_icon.dart';
import '../../../data/shared_event_entity.dart';

class SharedEventCardImage extends StatelessWidget {
  final EventEntity event;
  final bool showEventType;
  final double? height;
  final double? width;
  const SharedEventCardImage({
    super.key,
    required this.event,
    this.height,
    this.width,
    this.showEventType = true,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.r),
          child: Image.asset(
            event.image,
            height: height?? 168.h,
            width: width ?? 300.w,
            fit: BoxFit.cover,
          ),
        ),
        showEventType
            ? Positioned(
                top: 8.h,
                left: 8.w,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 14.w, vertical: 4.w),
                  decoration: BoxDecoration(
                    color: AppColors.lightBlue,
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: Text(
                    event.type.name,
                    style: AppFonts.blue12Semibold,
                  ),
                ),
              )
            : const SizedBox.shrink(),
        Positioned(
          top: 8.h,
          right: 8.w,
          child: const FavoriteIcon(),
        ),
      ],
    );
  }
}
