import 'package:evnto/core/constants/app_dummy.dart';
import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:evnto/features/questions/bloc/question_cubit.dart';
import 'package:evnto/features/questions/bloc/question_state.dart';
import 'package:evnto/features/shared/view/components/shared_back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'linear_precent_progress.dart';

class QuestionsBar extends StatelessWidget {
  const QuestionsBar({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<QuestionCubit>();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        children: [
          SharedBackButton(
            onPressed: () {
              bloc.backButton();
            },
          ),
          60.pw,
          BlocBuilder<QuestionCubit, QuestionState>(
            buildWhen: (_, current) =>
                current is QuestionAnsweredState ||
                current is QuestionBackState,
            builder: (context, state) {
              return LinearPrecentProgress(
                progress: bloc.questionPage / AppDummy.questions.length,
                width: 190.w,
              );
            },
          ),
        ],
      ),
    );
  }
}
