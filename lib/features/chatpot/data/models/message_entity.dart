import 'package:evnto/core/helpers/extensions/datetime_extensions.dart';

class MessageModel {
  final String message;
  final DateTime date;
  final bool isBot;

  MessageModel({
    required this.message,
    required this.date,
    required this.isBot,
  });

  factory MessageModel.fromMap(Map<String, dynamic> map) {
    return MessageModel(
      message: map['message'] ?? '',
      date: (map['date'] as String? ?? "2023-04-19 12:00: AM").fullFormat,
      isBot: map['isBot'] == 1? true: false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'message': message,
      'date': date.fullFormat,
      'isBot': isBot ? "1" : "0",
    };
  }
}
