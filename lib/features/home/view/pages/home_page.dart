import 'package:evnto/core/constants/app_dummy.dart';
import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:evnto/core/styles/app_colors.dart';
import 'package:flutter/material.dart';

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
              seeAllOnTap: () {},
              events: AppDummy.events,
            ),
            10.svph,
            EventsList(
              title: "For You",
              seeAllOnTap: () {},
              events: AppDummy.events,
            ),
            20.svph,
          ],
        ),
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
