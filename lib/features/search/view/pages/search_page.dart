import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:evnto/features/organizers/view/pages/organizers_page.dart';
import 'package:evnto/features/search/view/components/search_filter_row.dart';
import 'package:flutter/material.dart';

import '../../../../../core/styles/app_fonts.dart';

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
      body: SafeArea(
        child: Column(
          children: [
            const SearchFilterRow(),
            20.ph,
            Expanded(
              child: _getView(),
            ),


          ],
        ),
      ),
    );
  }

  Widget _getView() {
    return const OrganizersPage();
  } 
}
