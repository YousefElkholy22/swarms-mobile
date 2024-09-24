import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:evnto/core/styles/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/constants/app_assets.dart';

class NoSearchView extends StatelessWidget {
  const NoSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
           Assets.jsonsSearch
          ),
          20.ph,
          Text(
            'No search results',
            style: AppFonts.black20Bold,
          ),
          10.ph,
          Text(
            'Try searching for something else',
            style: AppFonts.grey16Normal,
          ),
        ],
      ),
    );
  }
}