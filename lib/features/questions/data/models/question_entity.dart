class QuestionEntity {
  final String question;
  final List<String> options;
  final bool isMultiple;
  List<bool> selectedOptions;

  QuestionEntity({
    required this.question,
    required this.options,
    this.isMultiple = false,
  }) : selectedOptions = List.filled(options.length, false);

  void selectOption(int index) {
    if (isMultiple) {
      selectedOptions[index] = !selectedOptions[index];
    } else {
      selectedOptions = List.filled(options.length, false);
      selectedOptions[index] = true;
    }
  }
}
