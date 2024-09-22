import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/app_dummy.dart';
import '../../../../../core/styles/app_fonts.dart';
import '../../../shared/view/components/event_list_tile/shared_event_list_tile.dart';
import '../components/favorites_filter.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorites',
          style: AppFonts.black20Bold,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            20.ph,

            const FavoritesFilter(),
            20.ph,
            Expanded(
              child: ListView.builder(
                itemCount: AppDummy.events.length,
                itemBuilder: (_, index) {
                  return SharedEventListTile(event: AppDummy.events[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
