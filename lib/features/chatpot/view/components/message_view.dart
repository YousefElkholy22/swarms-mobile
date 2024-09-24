import 'package:evnto/features/chatpot/bloc/chatbot_cubit.dart';
import 'package:evnto/features/chatpot/bloc/chatbot_state.dart';
import 'package:evnto/features/chatpot/view/components/message_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_dummy.dart';
import 'loading_message.dart';

class MessagesView extends StatelessWidget {
  const MessagesView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ChatbotCubit>();
    return BlocBuilder<ChatbotCubit, ChatbotState>(
      buildWhen: (_, current) {
        return current is SuccesState;
      },
      builder: (context, state) {
    
        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: bloc.messages.length,
                itemBuilder: (_, index) {
                  return MessageLine(message: bloc.messages[index]);
                },
              ),
            ),
            const LoadingMessage(),
    
          ],
        );
      },
    );
  }
}


