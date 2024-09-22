import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/styles/app_colors.dart';
import '../../../../../core/styles/app_fonts.dart';

class SharedEventCardLocation extends StatelessWidget {
  final String location;
  final double? size;
  const SharedEventCardLocation({super.key, required this.location, this.size});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Iconsax.location,
          color: AppColors.blue,
          size: (size ?? 24.sp- 4.sp),
        ),
        4.pw,
        Text(
          location,
          style: AppFonts.grey16SemiBold.copyWith(fontSize: size),
        ),
      ],
    );
  }
}