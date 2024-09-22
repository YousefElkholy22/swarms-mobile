import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iconsax/iconsax.dart';

import '../../../calendar/view/calendar_page.dart';
import '../../../favorites/view/pages/favorites_page.dart';
import '../../../organizers/view/organizers_page.dart';
import '../../../../../core/localization/generated/l10n.dart';
import '../../../../../core/styles/app_colors.dart';
import '../../../home/view/pages/home_page.dart';

class LayoutsPage extends StatefulWidget {
  const LayoutsPage({super.key});

  @override
  State<LayoutsPage> createState() => _LayoutsPageState();
}

class _LayoutsPageState extends State<LayoutsPage> {
  late final List<Widget> _containScreen;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    _setContainScreens();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: pageController,
          children: _containScreen,
        ),
      ),
      bottomNavigationBar: AppBottomNavBar(controller: pageController),
    );
  }

  void _setContainScreens() {
    _containScreen = [
      const HomePage(),
      const CalendarPage(),
      const FavoritesPage(),
      const OrganizersPage(),
    ];
  }
}

class AppBottomNavBar extends StatefulWidget {
  final PageController controller;
  const AppBottomNavBar({
    super.key,
    required this.controller,
  });

  @override
  State<AppBottomNavBar> createState() => _AppBottomNavBarState();
}

class _AppBottomNavBarState extends State<AppBottomNavBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
      selectedIndex: selectedIndex,
      showElevation: true,
      onItemSelected: _onTap,
      items: _navBarsItems(),
    );
  }

  List<BottomNavyBarItem> _navBarsItems() {
    return [
      _buildBarItem(
        0,
        Iconsax.home,
        S.current.home,
      ),
      _buildBarItem(
        1,
        HugeIcons.strokeRoundedCalendar02,
        S.current.calendar,
      ),
      _buildBarItem(
        2,
        Iconsax.heart,
        S.current.favorites,
      ),
      _buildBarItem(
        3,
        Iconsax.people,
        S.current.organizers,
      ),
    ];
  }

  BottomNavyBarItem _buildBarItem(
    int index,
    IconData icon,
    String title,
  ) {
    return BottomNavyBarItem(
      icon: Icon(icon),
      title: Text(title),
      activeColor: AppColors.blue,
      inactiveColor: AppColors.grey,
    );
  }

  void _onTap(int index) {
    setState(() {
      selectedIndex = index;
      widget.controller.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    });
  }
}
