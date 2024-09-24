import 'package:evnto/core/helpers/utils/media_query.dart';
import 'package:evnto/core/styles/app_colors.dart';
import 'package:evnto/core/styles/app_fonts.dart';
import 'package:flutter/material.dart';

class ContactUsCards extends StatelessWidget {
  const ContactUsCards(
      {super.key, required this.fun, required this.image, required this.text});

  final VoidCallback fun;
  final String image;
  final String text;

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(image),
              SizedBox(
                width: context.width * 0.02,
              ),
              Text(
                text,
                style: AppFonts.black20Noraml,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
