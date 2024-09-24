import 'package:evnto/core/helpers/cache/app_db.dart';
import 'package:evnto/features/chatpot/bloc/chatbot_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/models/message_entity.dart';
import '../data/repos/chatpot_repo.dart';

class ChatbotCubit extends Cubit<ChatbotState> {
  final ChatpotRepo chatpotRepo;
  final AppDB appDB;
  late List<MessageModel> messages;

  ChatbotCubit({
    required this.chatpotRepo,
    required this.appDB,
  }) : super(const ChatbotState.getMessages()) {
    messages = [];
    getMessages();
  }

  void getMessages() {
    // appDB.getAllMessage().then((value) {
    //   messages = value.map((e) => MessageModel.fromMap(e)).toList();
    //   if (messages.isEmpty) {
       
    //   }
    // });
       messages.add(
          MessageModel(
            message: "Hey, How can I help you?",
            date: DateTime.now(),
            isBot: true,
          ),
        );
      emit(const ChatbotState.getMessages());
  }

  void writeMeesage(String message) {
    final newMessage = MessageModel(
      message: message,
      date: DateTime.now(),
      isBot: false,
    );
    // appDB.insertMessage(newMessage.toMap());
    messages.add(newMessage);
    emit(ChatbotState.succes(message));
    emit(const ChatbotState.loading());
    chatpotRepo.messageChatbot(message: message).then((value) {
      value.when(
        success: (data) {
          final botMessage = MessageModel(
            message: data,
            date: DateTime.now(),
            isBot: true,
          );
          // appDB.insertMessage(botMessage.toMap());
          messages.add(botMessage);
          emit(ChatbotState.succes(data));
        },
        failure: (failure) {
          emit(ChatbotState.error(failure.message));
        },
      );
    });
  }
}
