import 'package:evnto/features/questions/data/models/question_entity.dart';

import '../../features/organizers/data/organizer_entity.dart';
import '../../features/welcome/data/models/onboarding_entity.dart';
import '../localization/generated/l10n.dart';

import 'app_assets.dart';

class AppConstants {
  AppConstants._();

  static final onboardingContents = [
    OnBoardingEntity(
      title: S.current.onboardingTitle1,
      description: S.current.onboardingSubtitle1,
      image: Assets.imagesOnboarding1,
    ),
    OnBoardingEntity(
      title: S.current.onboardingTitle2,
      description: S.current.onboardingSubtitle2,
      image: Assets.imagesOnboarding2,
    ),
  ];

  static final orgainzers = [
    OrganizerEntity(
      id: "1",
      name: "Teams",
      image: Assets.imagesTeam,
      events: [],
    ),
    OrganizerEntity(
      id: "2",
      name: "Menters",
      image: Assets.imagesMentor,
      events: [],
    ),
  ];
}

class PrefsKeys {
  PrefsKeys._();

  static const userOpenedAppFirstTime = "user_opened_app_first_time";
  static const userLoggedIn = "user_logged_in";
  static const token = "token";
  static const accessToken = "access_token";
  static const refreshToken = "refresh_token";
}


class DBKeys {
  DBKeys._();

  static const chatbotTable = "chatbot";
  static const message = "mesage";
  static const isBot = "is_Bot";
  static const date = "date";
}
