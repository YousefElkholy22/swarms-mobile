class QuestionEntity {
  final String question;
  final List<String> options;
  final bool isMultiple;

  const QuestionEntity({
    required this.question,
    required this.options,
    this.isMultiple = false,
  });
}