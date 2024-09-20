import 'package:evnto/features/questions/view/pages/questions_page.dart';
import 'package:evnto/features/welcome/view/pages/onboarding_page.dart';
import 'package:evnto/features/welcome/view/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/questions/bloc/question_cubit.dart';
import '../../features/welcome/bloc/onboarding_bloc.dart';
import 'app_routes.dart';

class RouteGenerate {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      /// onboarding
      case AppRoutes.onboarding:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => BlocProvider(
            create: (_) => OnboardingCubit(),
            child: const OnboardingPage(),
          ),
        );

      /// welcome
      case AppRoutes.welcome:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const WelcomePage(),
        );

      /// Questions
      case AppRoutes.questions:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => BlocProvider(
            create: (context) => QuestionCubit(),
            child: const QuestionsPage(),
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => _undfinedPage(route: routeSettings.name),
        );
    }
  }

  static Scaffold _undfinedPage({String? route}) {
    return Scaffold(
      appBar: AppBar(title: const Text("Undfined Page")),
      body: Center(child: Text("${route ?? "Undifined"} Page")),
    );
  }
}
