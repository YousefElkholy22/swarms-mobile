import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:evnto/core/router/app_routes.dart';
import 'package:evnto/core/styles/app_fonts.dart';
import 'package:evnto/core/widgets/public_button.dart';
import 'package:evnto/features/questions/bloc/question_cubit.dart';
import 'package:evnto/features/questions/bloc/question_state.dart';
import 'package:evnto/features/questions/view/components/options_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/localization/generated/l10n.dart';
import '../../data/models/question_entity.dart';

class QuestionsBody extends StatelessWidget {
  final QuestionEntity question;
  const QuestionsBody({
    super.key,
    required this.question,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<QuestionCubit>();
    return Column(
      children: [
        Text(
          question.question,
          style: AppFonts.darkGrey32Bold,
        ),
        32.ph,
        SizedBox(
          height: 510.h,
          child: OptionsList(
            isMultiple: question.isMultiple,
            options: question.options,
          ),
        ),
        48.ph,
        BlocBuilder<QuestionCubit, QuestionState>(
          buildWhen: (_, current) => current is NextButtonEnableState,
          builder: (context, state) {
            return Align(
              alignment: Alignment.centerRight,
              child: PublicButton(
                width: 100.w,
                onPressed: bloc.isNextButtonEnabled
                    ? () {
                        bloc.questionAnswered(() {
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            AppRoutes.home,
                            (route) => false,
                          );
                        });
                      }
                    : null,
                title: S.of(context).next,
              ),
            );
          },
        )
      ],
    );
  }
}
