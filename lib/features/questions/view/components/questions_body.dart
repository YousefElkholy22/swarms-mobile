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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Text(
            question.question,
            style: AppFonts.darkGrey32Bold,
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
        ),
        22.ph,
        SizedBox(
          height: 488.h,
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
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: PublicButton(
                  width: 110.w,
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
              ),
            );
          },
        )
      ],
    );
  }
}
