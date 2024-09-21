import 'package:evnto/features/questions/bloc/question_cubit.dart';
import 'package:evnto/features/questions/bloc/question_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styles/app_colors.dart';
import '../../../../core/styles/app_fonts.dart';

class OptionCard extends StatelessWidget {
  final String option;
  final int index;
  final bool isCenterText ;

  const OptionCard({
    super.key,
    required this.option,
    required this.index,
    this.isCenterText = false,

  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<QuestionCubit>();
    return BlocBuilder<QuestionCubit, QuestionState>(
      buildWhen: (_, current) => current is OptionSelectedState,
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: InkWell(
            onTap: () {
              bloc.optionSelected(index);
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 22.h),
              decoration: BoxDecoration(
                color: _isSelected(context) ? AppColors.blue : AppColors.white,
                borderRadius: BorderRadius.circular(16.r),
                boxShadow: const [
                  BoxShadow(
                    color: AppColors.lightGrey,
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: _buildText(context, isCenterText),
            ),
          ),
        );
      },
    );
  }

  bool _isSelected(BuildContext context) {
    final bloc = context.read<QuestionCubit>();
    return bloc.questions[bloc.questionPage - 1].selectedOptions[index] == true;
  }

  Widget _buildText(BuildContext context, bool isCenter) {
    if (isCenter) {
      return Center(
        child: Text(
          option,
          textAlign: TextAlign.center,
          maxLines: 2,
          style: _isSelected(context)
              ? AppFonts.white20Normal
              : AppFonts.black20Noraml,
        ),
      );
    } else {
      return Text(
        option,
        textAlign: TextAlign.start,
        maxLines: 1,
        style: _isSelected(context)
            ? AppFonts.white20Normal
            : AppFonts.black20Noraml,
      );
    }
  }
}
