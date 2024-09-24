import 'package:evnto/core/constants/app_assets.dart';
import 'package:evnto/core/styles/app_colors.dart';
import 'package:evnto/features/chatpot/bloc/chatbot_cubit.dart';
import 'package:evnto/features/chatpot/bloc/chatbot_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class LoadingMessage extends StatelessWidget {
  const LoadingMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatbotCubit, ChatbotState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Lottie.asset(
                    Assets.jsonsLoading,
                    width: 100.w,
                    height: 100.h,
                  ),
                ],
              ),
            );
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
