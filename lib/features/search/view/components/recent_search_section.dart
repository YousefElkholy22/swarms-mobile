import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_dummy.dart';
import '../../../../core/styles/app_fonts.dart';

class RecentSearchSection extends StatelessWidget {
  const RecentSearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
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
          10.ph,
          Container(
            constraints: BoxConstraints(maxHeight:_getMaxHeight()),
            child: ListView.builder(
              itemCount: AppDummy.recentSearch.length > 3
                  ? 3
                  : AppDummy.recentSearch.length,
              // separatorBuilder: (_, __) => 2.ph,
              itemBuilder: (_, index) {
                return ListTile(
                  contentPadding: EdgeInsets.zero,
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
      ),
    );
  }

  double _getMaxHeight() {
    int length = AppDummy.recentSearch.length;
    if (length > 3) {
      return 210.h;
    } else {
      return (length * 70).h;
    }
  }
}
