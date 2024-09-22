import 'package:evnto/core/helpers/utils/media_query.dart';
import 'package:evnto/core/styles/app_colors.dart';
import 'package:evnto/core/styles/app_fonts.dart';
import 'package:flutter/material.dart';

class PasswordStrength extends StatelessWidget {
  const PasswordStrength(
      {super.key, required this.text, required this.checked});

  final String text;
  final bool checked;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: checked ? AppColors.darkGrey : AppColors.lightGrey,
          ),
          child: Padding(
            padding: const EdgeInsets.all(1.2),
            child: Icon(
              Icons.check,
              color: checked ? AppColors.white : AppColors.darkGrey,
              size: 18,
            ),
          ),
        ),
        SizedBox(
          width: context.width * 0.01,
        ),
        Text(
          text,
          style: AppFonts.grey16Normal,
        )
      ],
    );
  }
}
