class MessageEntity {
  final String id;
  final String text;
  final DateTime time;
  final bool isBot;

  MessageEntity({
    required this.id,
    required this.text,
    required this.time,
    required this.isBot,
  });
}
