import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/helpers/extensions/sizedbox_extensions.dart';
import '../../bloc/onboarding_bloc.dart';
import '../components/onboarding_button.dart';
import '../components/onboarding_item.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late final OnboardingCubit _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = context.read<OnboardingCubit>();
    _bloc.init();
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
            top: 140.h,
            bottom: 80.h,
          ),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  itemCount: AppConstants.onboardingContents.length,
                  controller: _bloc.pageController,
                  onPageChanged: (index) {
                    _bloc.changeIndex(index);
                  },
                  itemBuilder: (_, index) {
                    return OnboardingItem(
                      onBoarding: AppConstants.onboardingContents[index],
                    );
                  },
                ),
              ),
              16.ph,
              const OnboardingButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
