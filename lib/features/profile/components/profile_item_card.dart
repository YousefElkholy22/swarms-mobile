import 'package:evnto/core/helpers/utils/media_query.dart';
import 'package:evnto/core/styles/app_colors.dart';
import 'package:evnto/core/styles/app_fonts.dart';
import 'package:flutter/material.dart';

class ProfileItemCard extends StatelessWidget {
  const ProfileItemCard(
      {super.key,
      required this.icon,
      required this.title,
      this.arrow = Icons.arrow_forward_ios_rounded,
      required this.isPage,
      required this.fun});

  final IconData icon;
  final IconData arrow;
  final String title;
  final bool isPage;
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
              color: Colors.purple.withOpacity(0.1),
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
              Container(
                width: context.width * 0.13,
                height: context.height * 0.05,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.opacityPurple),
                child: Icon(
                  icon,
                  color: isPage ? AppColors.purple : AppColors.red,
                ),
              ),
              SizedBox(
                width: context.width * 0.02,
              ),
              Text(
                title,
                style: AppFonts.black20Noraml,
              ),
              const Spacer(),
              isPage ? Icon(arrow) : const Text(""),
            ],
          ),
        ),
      ),
    );
  }
}
