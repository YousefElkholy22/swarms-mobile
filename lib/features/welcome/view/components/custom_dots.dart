import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/styles/app_colors.dart';
import '../../bloc/onboarding_bloc.dart';

class CustomDots extends StatelessWidget {
  const CustomDots({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<OnboardingCubit>();
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return Row(
          children: [
            CircleAvatar(
              radius: bloc.currentIndex == 0 ? 5 : 3,
              backgroundColor:
                  bloc.currentIndex == 0 ? AppColors.blue : AppColors.lightGrey,
            ),
            6.pw,
            CircleAvatar(
              radius: bloc.currentIndex == 1 ? 5 : 3,
              backgroundColor:
                  bloc.currentIndex == 1 ? AppColors.blue : AppColors.lightGrey,
            ),
          ],
        );
      },
    );
  }
}
