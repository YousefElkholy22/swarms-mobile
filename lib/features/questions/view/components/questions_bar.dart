import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:evnto/features/shared/view/components/shared_back_button.dart';
import 'package:flutter/material.dart';

import 'linear_precent_progress.dart';

class QuestionsBar extends StatelessWidget {
  const QuestionsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SharedBackButton(
          onPressed: () {},
        ),
        60.pw,
        const LinearPrecentProgress(
          progress: 0.33,
        ),
      ],
    );
  }
}
