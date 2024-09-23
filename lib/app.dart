import 'package:evnto/core/router/app_routes.dart';
import 'package:evnto/features/authentcation/view/pages/change_password_screen.dart';
import 'package:evnto/features/authentcation/view/pages/otp_screen.dart';
import 'package:evnto/features/favorites/view/pages/favorites_page.dart';
import 'package:evnto/features/shared/view/pages/layouts_page.dart';
import 'core/localization/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/styles/app_themes.dart';

import 'core/router/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Evnto',
        onGenerateRoute: RouteGenerate.getRoute,
        theme: AppThemes.light,
        locale: const Locale("en", "US"),
        supportedLocales: S.delegate.supportedLocales,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        scrollBehavior: ScrollConfiguration.of(context).copyWith(
          physics: const BouncingScrollPhysics(),
        ),
        initialRoute: AppRoutes.onboarding,
        

      ),
    );
  }
}
