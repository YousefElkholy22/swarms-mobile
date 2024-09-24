import 'package:flutter/material.dart';

import '../../../../core/constants/app_dummy.dart';
import '../../../shared/view/components/event_list_tile/shared_event_list_tile.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (_, index) {
          return SharedEventListTile(event: AppDummy.events[index]);
        },
      ),
    );
  }
}
