import 'package:evnto/core/constants/app_assets.dart';
import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:evnto/core/router/app_routes.dart';
import 'package:evnto/core/widgets/public_button.dart';
import 'package:evnto/core/widgets/public_outline_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/localization/generated/l10n.dart';
import '../../../../core/styles/app_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
            top: 140.h,
            bottom: 16.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                Assets.imagesWelcome,
                height: 316.h,
                width: double.infinity,
                fit: BoxFit.contain,
              ),
              60.ph,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Text(
                  S.of(context).welcomeTitle,
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  style: AppFonts.darkGrey32Bold.copyWith(
                    fontSize: 28.sp,
                  ),
                ),
              ),
              24.ph,
              PublicButton(
                title: S.of(context).login,
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.login);
                },
              ),
              16.ph,
              PublicOutlineButton(
                title: S.of(context).signUp,
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.register);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
