import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:evnto/features/home/view/components/appbar_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styles/app_colors.dart';
import 'search_appbar.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 0.25.sh,
      floating: false,
      pinned: true,
      backgroundColor: AppColors.purple,
      // title: const AppBarTitle(),
      automaticallyImplyLeading: false,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h),
          child: const SearchAppbar(),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(32.r),
          bottomRight: Radius.circular(32.r),
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: BoxDecoration(
            color: AppColors.purple,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(32.r),
              bottomRight: Radius.circular(32.r),
            ),
          ),
          child: Column(
            children: [
              40.ph,
              const AppBarTitle(),
            ],
          ),
        ),
      ),
    );
  }
}
