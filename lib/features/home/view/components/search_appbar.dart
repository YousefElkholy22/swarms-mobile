import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:evnto/core/widgets/public_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/localization/generated/l10n.dart';
import '../../../../core/router/app_routes.dart';
import '../../../../core/styles/app_colors.dart';

class SearchAppbar extends StatelessWidget {
  const SearchAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, AppRoutes.search);
              },
              child: PublicTextFormField(
                hint: S.current.search,
                enabled: false,
                showprefixIcon: true,
                prefixIcon: Iconsax.search_normal,
                borderRadius: 16.r,
              ),
            ),
          ),
         16.pw,
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.search);
            },
            child: Container(
              height: 60.r,
              width: 60.r,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.all(Radius.circular(16.r)),
              ),
              child: Center(
                child: Icon(
                  HugeIcons.strokeRoundedFilterHorizontal,
                  size: 24.r,
                  color: AppColors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
