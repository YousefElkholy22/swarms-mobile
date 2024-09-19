import 'package:evnto/core/helpers/utils/media_query.dart';
import 'package:evnto/core/styles/app_colors.dart';
import 'package:evnto/core/styles/app_fonts.dart';
import 'package:flutter/material.dart';

Widget buildAuthBackground(
  BuildContext context, {
  required List<Widget> widgets,
  required String title,
  required VoidCallback fun,
}) =>
    Column(
      children: [
        Stack(
          children: [
            SizedBox(
              height: context.height * 0.3,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 20, top: context.height * 0.07),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: fun,
                          icon: Container(
                            height: context.height * 0.07,
                            width: context.width * 0.08,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.purple,
                                border: Border.all(color: AppColors.white)),
                            child: const Icon(
                              Icons.arrow_back,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: context.height * 0.02,
                        ),
                        Text(
                          title,
                          style: AppFonts.black22Bold
                              .copyWith(color: AppColors.white, fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                right: 0,
                child: Image.asset("assets/designs/backGroundCircles.png")),
          ],
        ),
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: AppColors.white),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(children: widgets),
          ),
        )
      ],
    );
