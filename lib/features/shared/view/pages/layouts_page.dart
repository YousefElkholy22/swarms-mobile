import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iconsax/iconsax.dart';

import '../../../calendar/view/calendar_page.dart';
import '../../../favorites/view/pages/favorites_page.dart';
import '../../../organizers/view/pages/organizers_page.dart';
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
          scrollBehavior: ScrollConfiguration.of(context)
              .copyWith(physics: const NeverScrollableScrollPhysics()),
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
    return BottomNavigationBar(
      backgroundColor: AppColors.white,
      currentIndex: selectedIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,

      onTap: _onTap,
      elevation: 2,
      items: _navBarsItems(),
    );
  }

  List<BottomNavigationBarItem> _navBarsItems() {
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

  BottomNavigationBarItem _buildBarItem(
    int index,
    IconData icon,
    String title,
  ) {
    return BottomNavigationBarItem(
      icon: Container(
        decoration: BoxDecoration(
          color:
              selectedIndex == index ? AppColors.blue : AppColors.white,
          borderRadius: BorderRadius.circular(16.r),
        ),
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color:
                  selectedIndex == index ? AppColors.white : AppColors.darkGrey,
            ),
            8.pw,
            selectedIndex == index
                ? Flexible(
                  child: Text(
                      title,
                      maxLines: 1,
                      style: const TextStyle(color: AppColors.white),
                    ),
                )
                : const SizedBox.shrink(),
          ],
        ),
      ),
      label: title,
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
