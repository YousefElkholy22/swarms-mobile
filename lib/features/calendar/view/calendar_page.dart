import 'package:flutter/material.dart';

import '../../../core/styles/app_fonts.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Calendar Soon...',
          style: AppFonts.blue20Bold,
        ),
      ),
    );
  }
}
