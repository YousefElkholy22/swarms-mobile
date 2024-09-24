import 'package:evnto/core/helpers/utils/media_query.dart';
import 'package:evnto/core/styles/app_colors.dart';
import 'package:evnto/core/styles/app_fonts.dart';
import 'package:flutter/material.dart';

class EditProfileCards extends StatelessWidget {
  const EditProfileCards(
      {super.key,
      required this.title,
      this.arrow = Icons.keyboard_arrow_down_rounded,
      required this.fun});

  final IconData arrow;
  final String title;
  final VoidCallback fun;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: fun,
      child: Container(
        width: double.infinity,
        height: context.height * 0.07,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(20),
          color: AppColors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                title,
                style: AppFonts.black20Noraml,
              ),
              const Spacer(),
              Icon(arrow),
            ],
          ),
        ),
      ),
    );
  }
}
