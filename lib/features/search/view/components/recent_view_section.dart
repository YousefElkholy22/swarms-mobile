import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_dummy.dart';
import '../../../../core/styles/app_fonts.dart';
import '../../../shared/view/components/event_list_tile/shared_event_list_tile.dart';

class RecentViewSection extends StatelessWidget {
  const RecentViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            'Recent View',
            style: AppFonts.black20Noraml,
          ),
          20.ph,
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (_, index) {
                return SharedEventListTile(event: AppDummy.events[index]);
              },
            ),
          )
        ],
      ),
    );
  }
}
