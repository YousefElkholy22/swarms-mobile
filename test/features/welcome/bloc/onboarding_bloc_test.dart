import 'dart:ui';

import 'package:bloc_test/bloc_test.dart';
import 'package:evnto/core/localization/generated/l10n.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:evnto/features/welcome/bloc/onboarding_bloc.dart';

void main() {
  late OnboardingCubit sut;

  setUp(() {
    sut = OnboardingCubit();
    sut.init();
    S.load(const Locale('en'));
  });

  tearDown(() {
    sut.dispose();
  });

  test('initial state is ChangeCurrentIndexState with index 0', () {
    expect(sut.state, const ChangeCurrentIndexState(index: 0));
  });

  blocTest<OnboardingCubit, OnboardingState>(
    'emits [ChangeCurrentIndexState] when changeIndex is called',
    build: () => sut,
    act: (cubit) => cubit.changeIndex(1),
    expect: () => [const ChangeCurrentIndexState(index: 1)],
  );
}
