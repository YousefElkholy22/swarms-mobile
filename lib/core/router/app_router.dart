import 'package:evnto/features/authentcation/view/pages/change_password_screen.dart';
import 'package:evnto/features/authentcation/view/pages/forget_password_screen.dart';
import 'package:evnto/features/authentcation/view/pages/login_screen.dart';
import 'package:evnto/features/authentcation/view/pages/otp_screen.dart';
import 'package:evnto/features/authentcation/view/pages/register_screen.dart';
import 'package:evnto/features/chatpot/view/pages/chatpot_page.dart';
import 'package:evnto/features/event_details/view/pages/event_details_page.dart';
import 'package:evnto/features/home/view/pages/all_events_page.dart';
import 'package:evnto/features/home/view/pages/home_page.dart';
import 'package:evnto/features/home/view/pages/upcoming_page.dart';
import 'package:evnto/features/organizers/data/organizer_entity.dart';
import 'package:evnto/features/organizers/view/pages/orgainzer_events_page.dart';
import 'package:evnto/features/organizers/view/pages/orgainzers_list_page.dart';
import 'package:evnto/features/profile/view/profile_page.dart';
import 'package:evnto/features/questions/view/pages/questions_page.dart';
import 'package:evnto/features/shared/view/pages/layouts_page.dart';
import 'package:evnto/features/welcome/view/pages/onboarding_page.dart';
import 'package:evnto/features/welcome/view/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/filters/filter_page.dart';
import '../../features/home/view/pages/for_you_page.dart';
import '../../features/notifications/notifications_page.dart';
import '../../features/organizers/data/orgainzers_list_state.dart';
import '../../features/questions/bloc/question_cubit.dart';
import '../../features/shared/data/shared_event_entity.dart';
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

      /// Auth
      case AppRoutes.login:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const LoginScreen(),
        );
      case AppRoutes.register:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const RegisterScreen(),
        );
      case AppRoutes.forgotPassword:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const ForgetPasswordScreen(),
        );
      case AppRoutes.verifyEmail:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const OtpScreen(),
        );
      case AppRoutes.resetPassword:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const ChangePasswordScreen(),
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

      /// Home
      case AppRoutes.layouts:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const LayoutsPage(),
        );
      case AppRoutes.home:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const HomePage(),
        );
      case AppRoutes.upcoming:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const UpcomingPage(),
        );
      case AppRoutes.forYou:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const ForYouPage(),
        );
      case AppRoutes.allEvents:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const AllEventsPage(),
        );
      case AppRoutes.notifications:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const NotificationsPage(),
        );
      case AppRoutes.profile:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const ProfilePage(),
        );

      /// event details
      case AppRoutes.eventDetails:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => EventDetailsPage(
            event: routeSettings.arguments as EventEntity,
          ),
        );

      /// chatpot
      case AppRoutes.chatpot:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const ChatpotPage(),
        );

      /// search
      case AppRoutes.search:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const SearchPage(),
        );

      // Organizers
      case AppRoutes.organizersList:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => OrgainzersListPage(
            state: routeSettings.arguments as OrgainzersListState,
          ),
        );
      // Organizers
      case AppRoutes.organizerEvents:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => OrgainzerEventsPage(
            organizer: routeSettings.arguments as OrganizerEntity,
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
