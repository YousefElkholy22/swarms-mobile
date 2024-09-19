import 'package:evnto/features/welcome/view/pages/onboarding_page.dart';
import 'package:evnto/features/welcome/view/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/welcome/bloc/onboarding_bloc.dart';
import 'app_routes.dart';

class RouteGenerate {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      
      /// onboarding
      case AppRoutes.onboarding:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => OnboardingCubit(),
            child: const OnboardingPage(),
          ),
        );

      /// welcome
      case AppRoutes.welcome:
        return MaterialPageRoute(
          builder: (_) => const WelcomePage(),
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
