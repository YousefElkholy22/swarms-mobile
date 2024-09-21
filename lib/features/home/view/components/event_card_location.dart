import 'package:evnto/core/helpers/extensions/sizedbox_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/styles/app_colors.dart';
import '../../../../core/styles/app_fonts.dart';

class EventCardLocation extends StatelessWidget {
  final String location;
  const EventCardLocation({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Iconsax.location,
          color: AppColors.blue,
          size: 20.w,
        ),
        4.pw,
        Text(
          location,
          style: AppFonts.grey16SemiBold,
        ),
      ],
    );
  }
}