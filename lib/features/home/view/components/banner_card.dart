import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:evnto/core/styles/app_colors.dart';
import 'package:evnto/core/styles/app_fonts.dart';
import 'package:evnto/core/widgets/public_button.dart';
import 'package:evnto/features/home/data/event_bannar_entity.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BannerCard extends StatelessWidget {
  final EventBannarEntity event;
  const BannerCard({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 20.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        image: DecorationImage(
          image: AssetImage(event.imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            event.title,
            maxLines: 1,
            style: AppFonts.white20Bold,
          ),
          4.ph,
          Text(
            event.description,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: AppFonts.white16Normal,
          ),
          4.ph,
          PublicButton(
            title: "Get Ticket",
            backgroundColor: AppColors.lightBlue,
            titleColor: AppColors.blue,
            titleSize: 14.sp,
            titleWeight: FontWeight.w500,
            verticalpadding: 0.h,
            borderRadius: 64.h,
            width: 140.w,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
