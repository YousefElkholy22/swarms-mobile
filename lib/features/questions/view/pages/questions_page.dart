import 'package:evnto/core/constants/app_dummy.dart';
import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:evnto/features/questions/bloc/question_cubit.dart';
import 'package:evnto/features/questions/bloc/question_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/questions_bar.dart';
import '../components/questions_body.dart';

class QuestionsPage extends StatelessWidget {
  const QuestionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              const QuestionsBar(),
              32.ph,
              BlocBuilder<QuestionCubit, QuestionState>(
                buildWhen: (_, current) =>
                    current is QuestionAnsweredState ||
                    current is QuestionBackState,
                builder: (context, state) {
                  final bloc = context.read<QuestionCubit>();
                  return QuestionsBody(
                      question: bloc.questions[bloc.questionPage - 1]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
