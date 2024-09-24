import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_dummy.dart';
import '../../../../core/styles/app_fonts.dart';

class RecentSearchSection extends StatelessWidget {
  const RecentSearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Recent Search',
              style: AppFonts.black20Noraml,
            ),
            TextButton(
              onPressed: () {
                // Handle clear button tap
              },
              child: Text('Clear All', style: AppFonts.black14Normal),
            ),
          ],
        ),
        20.ph,
        Container(
          constraints: const BoxConstraints(maxHeight: 150),
          child: ListView.separated(
            itemCount: AppDummy.recentSearch.length > 3
                ? 3
                : AppDummy.recentSearch.length,
            separatorBuilder: (_, __) => 8.ph,
            itemBuilder: (_, index) {
              return ListTile(
                title: Text(
                  AppDummy.recentSearch[index].query,
                  style: AppFonts.black16Normal,
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    // Handle delete button tap
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
