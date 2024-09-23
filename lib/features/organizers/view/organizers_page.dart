import 'package:flutter/material.dart';

import '../../../core/styles/app_fonts.dart';

class OrganizersPage extends StatelessWidget {
  const OrganizersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Organizers Soon...',
          style: AppFonts.blue20Bold,
        ),
      ),
    );
  }
}
