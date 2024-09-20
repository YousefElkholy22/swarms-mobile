import 'package:evnto/core/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../bloc/onboarding_bloc.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<OnboardingCubit>();
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        if (bloc.currentIndex == 0) {
          return const SizedBox.shrink();
        } else {
          return InkWell(
            onTap: () {
              bloc.backButton();
            },
            child: Container(
              height: 46.h,
              width: 46.h,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.blue),
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child:  Icon(
                Icons.arrow_back_rounded,
                color: AppColors.blue,
                size: 22.sp,
              ),
            ),
          );
        }
      },
    );
  }
}
