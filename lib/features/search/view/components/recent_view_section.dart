import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_dummy.dart';
import '../../../../core/styles/app_fonts.dart';
import '../../../shared/view/components/event_list_tile/shared_event_list_tile.dart';

class RecentViewSection extends StatelessWidget {
  const RecentViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              'Recent View',
              style: AppFonts.black20Noraml,
            ),
          ),
          10.ph,
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
