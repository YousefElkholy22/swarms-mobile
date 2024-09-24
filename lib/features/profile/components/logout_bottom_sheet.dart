import 'package:evnto/core/helpers/utils/media_query.dart';
import 'package:evnto/core/styles/app_colors.dart';
import 'package:evnto/core/styles/app_fonts.dart';
import 'package:flutter/material.dart';

class LogoutBottomSheet extends StatefulWidget {
  const LogoutBottomSheet({super.key});

  @override
  State<LogoutBottomSheet> createState() => _LogoutBottomSheetState();
}

class _LogoutBottomSheetState extends State<LogoutBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.35,
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Icon(
                Icons.logout_rounded,
                color: AppColors.red,
                size: context.height * 0.1,
              ),
              Text(
                "Log Out?",
                style: AppFonts.black20Bold,
              ),
              Text(
                "Are you sure you want to log out ?",
                style: AppFonts.black16Normal,
              ),
              SizedBox(
                height: context.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: context.width * 0.3,
                      height: context.height * 0.05,
                      decoration: BoxDecoration(
                        color: AppColors.red,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          "Log Out",
                          style: AppFonts.white20Bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: context.width * 0.07),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: context.width * 0.3,
                      height: context.height * 0.05,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        border: Border.all(color: AppColors.black),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          "Cancel",
                          style: AppFonts.black20Bold,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
