import 'package:evnto/core/helpers/cache/app_prefs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/router/app_routes.dart';
import '../../../../core/service_locator/service_locator.dart';
import '../../../../core/styles/app_colors.dart';
import '../../bloc/onboarding_bloc.dart';

class CustomForwardButton extends StatelessWidget {
  const CustomForwardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final bloc = context.read<OnboardingCubit>();
        bloc.forwardButton(() {
          _onFinishOnboarding(context);
        });
      },
      child: Container(
        height: 46.h,
        width: 46.h,
        decoration: const BoxDecoration(
          color: AppColors.blue,
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.arrow_forward_rounded,
          color: AppColors.white,
          size: 22.sp,
        ),
      ),
    );
  }

  void _onFinishOnboarding(BuildContext context) {
    final appPrefs = getIt<AppPrefs>();
    appPrefs.setBool(PrefsKeys.userOpenedAppFirstTime, true);
    if (context.mounted) {
      Navigator.pushReplacementNamed(
        context,
        AppRoutes.welcome,
      );
    }
  }
}
