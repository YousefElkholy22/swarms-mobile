

import 'package:freezed_annotation/freezed_annotation.dart';

part 'chatbot_state.freezed.dart';

@freezed
class ChatbotState with _$ChatbotState {
  const factory ChatbotState.initial() = _Initial;

  const factory ChatbotState.getMessages() = GetMessagesState;

  
  const factory ChatbotState.loading() = LoadingState;
  const factory ChatbotState.succes(String answer) = SuccesState;
  const factory ChatbotState.error(String message) = ErrorState;


}
