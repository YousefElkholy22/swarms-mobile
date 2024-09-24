import 'package:evnto/core/styles/app_colors.dart';
import 'package:evnto/core/widgets/public_snack_bar.dart';
import 'package:evnto/features/chatpot/bloc/chatbot_cubit.dart';
import 'package:evnto/features/chatpot/bloc/chatbot_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/styles/app_fonts.dart';
import '../components/message_input.dart';
import '../components/message_view.dart';
import '../components/no_message_view.dart';

class ChatpotPage extends StatelessWidget {
  const ChatpotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chatpot', style: AppFonts.black24SemiBold),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 16.h),
        child: Column(
          children: [
            Expanded(
              child: BlocBuilder<ChatbotCubit, ChatbotState>(
                buildWhen: (_, current) {
                  return current is GetMessagesState;
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    getMessages: () {
                      return const MessagesView();
                    },
                    error: (message) {
                      MySnackBar.error(
                        message: message,
                        color: AppColors.red,
                        context: context,
                      );
                      return const MessagesView();
                    },
                    orElse: () {
                      return const MessagesView();
                    },
                  );
                },
              ),
            ),
            const MessageInput(),
          ],
        ),
      ),
    );
  }
}
