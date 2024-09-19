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
}

class PrefsKeys {
  PrefsKeys._();

  static const userOpenedAppFirstTime = "user_opened_app_first_time";
  static const userLoggedIn = "user_logged_in";
  static const token = "token";
  static const accessToken = "access_token";
  static const refreshToken = "refresh_token";
}
