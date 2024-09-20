import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/app_constants.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  int currentIndex = 0;
  late final PageController pageController;

  OnboardingCubit() : super(const ChangeCurrentIndexState(index: 0));

  void init() {
    pageController = PageController();
  }

  void dispose() {
    pageController.dispose();
  }

  void forwardButton(void Function() onFinish) {
    if (currentIndex == 1) {
      onFinish();
    } else {
      _increaseIndex();
    }
  }

  void backButton() {
    _decreaseIndex();
  }

  void changeIndex(int index) {
    currentIndex = index;
    emit(ChangeCurrentIndexState(index: index));
  }

  void _increaseIndex() {
    if (currentIndex < AppConstants.onboardingContents.length - 1) {
      currentIndex++;
      pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOut,
      );
      emit(
        ChangeCurrentIndexState(
          index: currentIndex,
        ),
      );
    }
  }

  void _decreaseIndex() {
    if (currentIndex > 0) {
      currentIndex--;
      pageController.previousPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOut,
      );
      emit(
        ChangeCurrentIndexState(
          index: currentIndex,
        ),
      );
    }
  }
}
