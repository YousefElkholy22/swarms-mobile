import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/styles/app_colors.dart';

class FavoriteIcon extends StatefulWidget {
  const FavoriteIcon({
    super.key,
  });

  @override
  State<FavoriteIcon> createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIcon> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _isFavorite = !_isFavorite;
        });
      },
      child: Container(
        height: 40.w,
        width: 40.w,
        decoration: const BoxDecoration(
          color: AppColors.lightBlue,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: HugeIcon(
           icon: _isFavorite
                ? Icons.favorite_rounded
                : HugeIcons.strokeRoundedFavourite,
            size: 24.r,
            color: AppColors.blue,
          ),
        ),
      ),
    );
  }
}
