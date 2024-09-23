import 'package:flutter/material.dart';

import '../../../core/styles/app_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: AppFonts.black24SemiBold,
        ),
      ),
      body: Center(
        child: Text(
          'Profile Soon...',
          style: AppFonts.blue20Bold,
        ),
      ),
    );
  }
}
