import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:flutter/material.dart';

import 'recent_search_section.dart';
import 'recent_view_section.dart';

class EmptySearchView extends StatelessWidget {
  const EmptySearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const RecentSearchSection(),
        24.ph,
        const RecentViewSection(),
      ]
    );
  }
}
