import 'package:bloc_test/bloc_test.dart';
import 'package:evnto/features/questions/bloc/question_cubit.dart';
import 'package:evnto/features/questions/bloc/question_state.dart';
import 'package:evnto/features/questions/data/models/question_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('QuestionCubit', () {
    late QuestionCubit sut;
    late QuestionEntity questionEntity;

    setUp(() {
      sut = QuestionCubit();
      questionEntity = QuestionEntity(
        question: "What is your name?",
        options: ["John", "Doe"],
      );

      sut.questions = [questionEntity, questionEntity];
    });

    tearDown(() {
      sut.close();
    });

    test('initial state is QuestionState.initial', () {
      expect(sut.state, const QuestionState.initial());
    });

    blocTest<QuestionCubit, QuestionState>(
      'emits [QuestionState.questionBack] when backButton is called',
      build: () => sut,
      act: (cubit) {
        cubit.questionPage = 2; // Set initial state
        cubit.backButton();
      },
      expect: () => [const QuestionState.questionBack(1)],
    );

    blocTest<QuestionCubit, QuestionState>(
        "go to next question when clicked 'Next' button",
        build: () => sut,
        act: (cubit) {
          cubit.questionPage = 1;
          cubit.questionAnswered(() {});
        },
        expect: () => [const QuestionState.questionAnswered(2) , const QuestionState.nextButtonEnable(false)]);

    blocTest<QuestionCubit, QuestionState>(
      "go to next page when clicked 'Next' button",
      build: () => sut,
      act: (cubit) {
        cubit.questionPage = 2;
        cubit.questionAnswered(() {});
      },
      expect: () => [],
    );

    blocTest<QuestionCubit, QuestionState>(
      "check if next button is enabled when option is selected",
      build: () => sut,
      act: (cubit) {
        cubit.questionPage = 1;
        cubit.questions[0].selectedOptions = [false, false];
        cubit.questions[1].selectedOptions = [false, false];
        cubit.optionSelected(0);
      },
      expect: () => [const QuestionState.nextButtonEnable(true), const QuestionState.optionSelected(0)],
    );
  });
}
