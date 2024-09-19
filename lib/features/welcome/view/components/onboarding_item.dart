import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:evnto/core/styles/app_fonts.dart';
import 'package:evnto/features/welcome/data/models/onboarding_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingItem extends StatelessWidget {
  final OnBoardingEntity onBoarding;
  const OnboardingItem({
    super.key,
    required this.onBoarding,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: Image.asset(
            onBoarding.image,
            height: 316.h,
            width: double.infinity,
            fit: BoxFit.contain,
          ),
        ),
        60.ph,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Text(
            onBoarding.title,
            style: AppFonts.darkGrey32Bold,
          ),
        ),
        24.ph,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Text(
            onBoarding.description,
            maxLines: 3,
            textAlign: TextAlign.center,
            style: AppFonts.black20Noraml,
          ),
        ),
      ],
    );
  }
}
