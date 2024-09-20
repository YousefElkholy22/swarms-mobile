import 'package:evnto/core/constants/app_dummy.dart';
import 'package:evnto/features/questions/bloc/question_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/models/question_entity.dart';

class QuestionCubit extends Cubit<QuestionState> {
  late double questionsProgress;
  late int questionPage;
  late bool isNextButtonEnabled;
  late List<QuestionEntity> questions;

  QuestionCubit() : super(const QuestionState.initial()) {
    _init();
  }

  void backButton() {
    if (questionPage == 1) return;
    questionPage--;
    isNextButtonEnabled = true;
    emit(QuestionState.questionBack(questionPage));
  }

  void questionAnswered(void Function() onFinished) {
    if (questionPage == questions.length) {
      onFinished();
    } else {
      questionPage++;
      emit(QuestionState.questionAnswered(questionPage));
    _nextButtonEnable();
    }
  }

  void optionSelected(int index) {
    questions[questionPage - 1].selectOption(index);
    _nextButtonEnable();

    emit(QuestionState.optionSelected(index));
  }

  void _init() {
    questionPage = 1;
    questions = AppDummy.questions;
    questionsProgress = questionPage / questions.length;
    isNextButtonEnabled = false;
  }

  void _nextButtonEnable() {
    if (questions[questionPage - 1].selectedOptions.contains(true)) {
      isNextButtonEnabled = true;
    } else {
      isNextButtonEnabled = false;
    }
    emit(QuestionState.nextButtonEnable(isNextButtonEnabled));
  }
}
