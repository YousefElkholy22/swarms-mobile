part of 'onboarding_bloc.dart';

abstract class OnboardingState extends Equatable {
  const OnboardingState();

  @override
  List<Object> get props => [];
}

class ChangeCurrentIndexState extends OnboardingState {
  final int index;
  const ChangeCurrentIndexState({required this.index});

  @override
  List<Object> get props => [index];
}