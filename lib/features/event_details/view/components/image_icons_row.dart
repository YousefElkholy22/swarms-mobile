import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/helpers/extensions/sizedbox_extensions.dart';
import '../../../../core/styles/app_colors.dart';
import '../../../home/view/components/favoirte_icon.dart';

class ImageIconsRow extends StatelessWidget {
  const ImageIconsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: 48.h,
            width: 48.h,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.arrow_back, size: 28.h),
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: 48.h,
            width: 48.h,
            decoration: const BoxDecoration(
              color: AppColors.lightBlue,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Iconsax.share,
              size: 28.h,
              color: AppColors.blue,
            ),
          ),
        ),
        20.pw,
         FavoriteIcon(
          iconSize: 28.h,
        ),
      ],
    );
  }
}