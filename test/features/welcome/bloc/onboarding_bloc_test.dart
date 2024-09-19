import 'package:bloc_test/bloc_test.dart';
import 'package:evnto/core/helpers/extensions/navigator_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:evnto/features/welcome/bloc/onboarding_bloc.dart';
import 'package:evnto/core/constants/app_constants.dart';
import 'package:evnto/core/helpers/cache/app_prefs.dart';
import 'package:evnto/core/router/app_routes.dart';
import 'package:evnto/core/service_locator/service_locator.dart';

class MockAppPrefs extends Mock implements AppPrefs {}

class MockBuildContext extends Mock implements BuildContext {}

void main() {
  late OnboardingCubit sut;
  late MockAppPrefs mockAppPrefs;

  setUp(() {
    mockAppPrefs = MockAppPrefs();
    getIt.registerSingleton<AppPrefs>(mockAppPrefs);
    sut = OnboardingCubit();
    sut.init();
  });

  tearDown(() {
    sut.dispose();
    getIt.reset();
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

  blocTest<OnboardingCubit, OnboardingState>(
    'emits [ChangeCurrentIndexState] when _increaseIndex is called',
    build: () => sut,
    act: (cubit) => cubit.forwardButton(MockBuildContext()),
    expect: () => [const ChangeCurrentIndexState(index: 1)],
  );

  blocTest<OnboardingCubit, OnboardingState>(
    'emits [ChangeCurrentIndexState] when _decreaseIndex is called',
    build: () => sut,
    act: (cubit) {
      cubit.changeIndex(1);
      cubit.backButton();
    },
    expect: () => [
      const ChangeCurrentIndexState(index: 1),
      const ChangeCurrentIndexState(index: 0),
    ],
  );

  test('forwardButton navigates to welcome route when currentIndex is 1', () {
    final mockContext = MockBuildContext();
    when(mockContext.mounted).thenReturn(true);

    sut.changeIndex(1);
    sut.forwardButton(mockContext);

    verify(mockAppPrefs.setBool(PrefsKeys.userOpenedAppFirstTime, true))
        .called(1);
    verify(mockContext.pushReplacementNamed(AppRoutes.welcome)).called(1);
  });
}
