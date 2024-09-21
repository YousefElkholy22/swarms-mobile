import 'package:evnto/core/helpers/utils/media_query.dart';
import 'package:evnto/core/styles/app_colors.dart';
import 'package:evnto/core/styles/app_fonts.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton(
      {super.key,
      required this.onpressd,
      required this.background,
      required this.text});

  final VoidCallback onpressd;
  final Color background;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(14)),
      child: MaterialButton(
        minWidth: double.infinity,
        height: context.height * 0.07,
        onPressed: onpressd,
        color: background,
        child: Text(
          text,
          style: AppFonts.black20Bold
              .copyWith(color: AppColors.white, fontSize: 20),
        ),
      ),
    );
  }
}
