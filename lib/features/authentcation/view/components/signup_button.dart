import 'package:evnto/core/helpers/utils/media_query.dart';
import 'package:evnto/core/styles/app_colors.dart';
import 'package:evnto/core/styles/app_fonts.dart';
import 'package:flutter/material.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 0.7,
              width: context.width * 0.2,
              color: AppColors.black,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(
                "Or sign up with",
                style: AppFonts.white20Normal
                    .copyWith(color: AppColors.black, fontSize: 15),
              ),
            ),
            Container(
              height: 0.7,
              width: context.width * 0.2,
              color: AppColors.black,
            ),
          ],
        ),
        SizedBox(
          height: context.height * 0.01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                  height: context.height * 0.1,
                  width: context.width * 0.14,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.black)),
                  child: Image.asset("assets/icons/Google_logo.png")),
            ),
            SizedBox(
              width: context.width * 0.04,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                  height: context.height * 0.1,
                  width: context.width * 0.14,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.black)),
                  child: Image.asset("assets/icons/facebook_logo.png")),
            ),
            SizedBox(
              width: context.width * 0.04,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                  height: context.height * 0.1,
                  width: context.width * 0.14,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.black)),
                  child: const Icon(
                    Icons.apple,
                    size: 35,
                  )),
            ),
          ],
        )
      ],
    );
  }
}
