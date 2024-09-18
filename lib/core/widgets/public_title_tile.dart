import 'package:flutter/material.dart';

import '../styles/app_colors.dart';
import '../styles/app_fonts.dart';

class PublicTitleTile extends StatelessWidget {
  final String title;
  final VoidCallback? seeAllOnTap;
  const PublicTitleTile({
    super.key,
    required this.title,
    this.seeAllOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
      leading: Text(
        title,
        style: AppFonts.black24SemiBold,
      ),
      trailing: InkWell(
        onTap: seeAllOnTap,
        child: Text(
          "See More",
          style: AppFonts.black14Normal.copyWith(
            color: AppColors.blue,
          ),
        ),
      ),
    );
  }
}