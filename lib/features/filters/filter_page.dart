import 'package:flutter/material.dart';

import '../../../core/styles/app_fonts.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search',
          style: AppFonts.black24SemiBold,
        ),
      ),
      body: Center(
        child: Text(
          'Search Soon...',
          style: AppFonts.blue20Bold,
        ),
      ),
    );
  }
}
