import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_state.freezed.dart';

@freezed
class QuestionState with _$QuestionState {
  const factory QuestionState.initial() = _Initial;

  const factory QuestionState.nextButtonEnable(bool isEnabled) = NextButtonEnableState;
  const factory QuestionState.optionSelected(int index) = OptionSelectedState;
  const factory QuestionState.questionAnswered(int index) = QuestionAnsweredState;
  const factory QuestionState.questionBack(int index) = QuestionBackState;
}
