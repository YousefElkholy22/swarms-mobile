import 'package:evnto/core/helpers/utils/media_query.dart';
import 'package:evnto/core/styles/app_colors.dart';
import 'package:evnto/core/styles/app_fonts.dart';
import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

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
          "About Us",
          style: AppFonts.black20Bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "At our core, we aim to bridge the gap between students and the rich variety of activities that universities offer. Our platform is designed to enhance your university experience by making it easier to discover, book, and participate in events, workshops, and volunteer opportunities. Recognizing the vibrant energy of student life, we focus on providing a centralized space where you can access all the exciting academic and social events happening on campus.",
              style: AppFonts.black16Normal,
            ),
            SizedBox(
              height: context.height * 0.01,
            ),
            Text(
              "At Mansoura University, we understand the challenge students face in staying informed about these activities. Our mission is to simplify this process, helping you make the most of your time at university by fostering engagement and connection with the opportunities around you.",
              style: AppFonts.black16Normal,
            )
          ],
        ),
      ),
    );
  }
}
