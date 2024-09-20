import 'package:evnto/features/shared/view/components/shared_back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          return SharedBackButton(
            onPressed: () {
              bloc.backButton();
            },
          );
        }
      },
    );
  }
}
