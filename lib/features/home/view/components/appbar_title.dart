import '../../../../core/helpers/extensions/sizedbox_extensions.dart';
import '../../../../core/router/app_routes.dart';
import '../../../../core/styles/app_colors.dart';
import '../../../../core/widgets/public_circular_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/styles/app_fonts.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'appbar_title',
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PublicCircularImage(
              radius: 30.r,
            ),
            16.pw,
            Text(
              'Hi, Reem!',
              style: AppFonts.white20Bold,
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.notifications);
              },
              child: Container(
                height: 52.r,
                width: 52.r,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Icon(
                    Iconsax.notification,
                    size: 24.r,
                    color: AppColors.darkGrey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
