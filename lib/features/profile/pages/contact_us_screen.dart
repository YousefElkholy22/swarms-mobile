import 'package:evnto/core/helpers/utils/media_query.dart';
import 'package:evnto/core/styles/app_colors.dart';
import 'package:evnto/core/styles/app_fonts.dart';
import 'package:evnto/features/profile/components/contact_us_cards.dart';
import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context);
            },
            icon: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.black,
                  )),
              child: const Icon(
                Icons.arrow_back,
                color: AppColors.black,
              ),
            )),
        title: Text(
          "Contact Us",
          style: AppFonts.black20Bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            ContactUsCards(
                fun: () {},
                image: "assets/icons/FacbookOld.png",
                text: "Facebook"),
            SizedBox(
              height: context.height * 0.03,
            ),
            ContactUsCards(fun: () {}, image: "assets/icons/X.png", text: "X"),
            SizedBox(
              height: context.height * 0.03,
            ),
            ContactUsCards(
                fun: () {},
                image: "assets/icons/linkedIn.png",
                text: "LinkedIn"),
            SizedBox(
              height: context.height * 0.03,
            ),
          ],
        ),
      ),
    );
  }
}
