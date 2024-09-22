import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../../core/styles/app_colors.dart';

class FavoriteIcon extends StatefulWidget {
  final double? iconSize;

  const FavoriteIcon({
    super.key,
    this.iconSize,
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
        padding: EdgeInsets.all(10.h),
        decoration: const BoxDecoration(
          color: AppColors.lightBlue,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: HugeIcon(
           icon: _isFavorite
                ? Icons.favorite_rounded
                : HugeIcons.strokeRoundedFavourite,
            size: widget.iconSize ?? 24.h,
            color: AppColors.blue,
          ),
        ),
      ),
    );
  }
}
