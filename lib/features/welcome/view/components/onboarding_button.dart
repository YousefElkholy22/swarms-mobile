import 'package:flutter/material.dart';

import '../../../../core/helpers/extensions/sizedbox_extensions.dart';
import 'custom_back_button.dart';
import 'custom_dots.dart';
import 'custom_forward_button.dart';

class OnboardingButtons extends StatelessWidget {
  const OnboardingButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomBackButton(),
        const Spacer(),
        const CustomDots(),
        140.pw,
        const CustomForwardButton(),
      ],
    );
  }
}
