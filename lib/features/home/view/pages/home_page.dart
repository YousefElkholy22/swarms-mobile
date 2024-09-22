import 'package:evnto/core/constants/app_assets.dart';
import 'package:evnto/core/constants/app_dummy.dart';
import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:evnto/core/styles/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../core/router/app_routes.dart';
import '../components/events_banner.dart';
import '../components/home_appbar.dart';
import '../components/upcoming_events.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(context),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const HomeAppBar(),
            32.svph,
            const EventsBanner(),
            20.svph,
            EventsList(
              title: 'Upcoming Events',
              seeAllOnTap: () {
                Navigator.pushNamed(context, AppRoutes.upcoming);
              },
              events: AppDummy.events,
            ),
            10.svph,
            EventsList(
              title: "For You",
              seeAllOnTap: () {
                Navigator.pushNamed(context, AppRoutes.forYou);
              },
              events: AppDummy.events,
            ),
            10.svph,
            EventsList(
              title: "All Events",
              seeAllOnTap: () {
                Navigator.pushNamed(context, AppRoutes.allEvents);
              },
              events: AppDummy.events,
            ),
            20.svph,
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.white,
        shape: const CircleBorder(),
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.chatpot);
        },
        child: Image.asset(Assets.iconsAi),
      ),
    );
  }

  AppBar _appbar(BuildContext context) {
    return AppBar(
      toolbarHeight: 0,
      systemOverlayStyle:
          Theme.of(context).appBarTheme.systemOverlayStyle!.copyWith(
                statusBarColor: AppColors.purple,
                statusBarIconBrightness: Brightness.light,
                systemNavigationBarIconBrightness: Brightness.light,
              ),
    );
  }
}
