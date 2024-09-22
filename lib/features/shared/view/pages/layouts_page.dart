import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iconsax/iconsax.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

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
  late final PersistentTabController _controller;
  late final List<Widget> _containScreen;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _setContainScreens();
    _controller = PersistentTabController(initialIndex: selectedIndex);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _containScreen[selectedIndex],
      bottomNavigationBar: PersistentTabView(
        context,
        controller: _controller,
        screens: _containScreen,
        items: _navBarsItems(),
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset: false,
        stateManagement: true, // Default is true.
        popBehaviorOnSelectedNavBarItemPress: PopBehavior.all,
        padding: EdgeInsets.only(top: 8.h),
        backgroundColor: AppColors.white,
        isVisible: true,
        animationSettings: _getAnimationSettings(),
        confineToSafeArea: true,
        navBarHeight: kBottomNavigationBarHeight,
        navBarStyle: NavBarStyle.style10,
      ),
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

  List<PersistentBottomNavBarItem> _navBarsItems() {
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

  PersistentBottomNavBarItem _buildBarItem(
    int index,
    IconData icon,
    String title,
  ) {
    return PersistentBottomNavBarItem(
      icon: Icon(icon),
      title: title,
      activeColorPrimary: AppColors.blue,
      inactiveColorPrimary: AppColors.grey,
      activeColorSecondary: AppColors.white,
      onPressed: (_) => _onTap(index),
    );
  }

  void _onTap(int index) {
    _controller.jumpToTab(index);
  }

  NavBarAnimationSettings _getAnimationSettings() {
    return const NavBarAnimationSettings(
      navBarItemAnimation: ItemAnimationSettings(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 400),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimationSettings(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        duration: Duration(milliseconds: 400),
        screenTransitionAnimationType: ScreenTransitionAnimationType.slide,
      ),
    );
  }
}
