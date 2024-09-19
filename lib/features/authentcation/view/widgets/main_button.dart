import 'package:evnto/core/helpers/utils/media_query.dart';
import 'package:evnto/core/styles/app_colors.dart';
import 'package:evnto/core/styles/app_fonts.dart';
import 'package:flutter/material.dart';

Widget buildMainButton(
  BuildContext context, {
  required VoidCallback onpressd,
  required Color background,
  required String text,
}) =>
    Container(
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
