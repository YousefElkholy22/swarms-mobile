import 'package:evnto/core/helpers/utils/media_query.dart';
import 'package:evnto/core/styles/app_colors.dart';
import 'package:evnto/core/styles/app_fonts.dart';
import 'package:evnto/features/authentcation/view/components/auth_background_design.dart';
import 'package:evnto/features/authentcation/view/components/main_button.dart';
import 'package:evnto/features/authentcation/view/components/otp_form.dart';
import 'package:flutter/material.dart';

import '../../../../core/router/app_routes.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController index0Controller = TextEditingController();
  final TextEditingController index1Controller = TextEditingController();
  final TextEditingController index2Controller = TextEditingController();
  final TextEditingController index3Controller = TextEditingController();
  final TextEditingController index4Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.purple,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: AuthLayout(
            fun: () {
              Navigator.pop(context);
            },
            title: "Enter Code",
            widgets: [
              Row(
                children: [
                  Text(
                    "Send code on ",
                    style: AppFonts.black16Normal,
                  ),
                  Text(
                    "reem11gmail.com",
                    style: AppFonts.black16Normal.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: context.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: OtpForm(
                      controller: index0Controller,
                      validate: (String value) {},
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: OtpForm(
                      controller: index1Controller,
                      validate: (String value) {},
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: OtpForm(
                      controller: index2Controller,
                      validate: (String value) {},
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: OtpForm(
                      controller: index3Controller,
                      validate: (String value) {},
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: OtpForm(
                      controller: index4Controller,
                      validate: (String value) {},
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                    ),
                  )
                ],
              ),
              SizedBox(
                height: context.height * 0.03,
              ),
              MainButton(
                onpressd: () {
                  Navigator.pushNamed(context, AppRoutes.resetPassword);
                },
                background: AppColors.purple,
                text: 'Verify',
              ),
              SizedBox(
                height: context.height * 0.02,
              ),
              Text(
                "Resend Code in 12s",
                style: AppFonts.grey14Normal,
              ),
              SizedBox(
                height: context.height * 0.02,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Resend Code",
                    style: AppFonts.black20Bold
                        .copyWith(color: AppColors.purple, fontSize: 12),
                  )),
              SizedBox(
                height: context.height * 0.3,
              ),
            ]),
      ),
      bottomSheet: Container(
        color: AppColors.white,
        width: double.infinity,
        height: context.height * 0.05,
      ),
    );
  }
}
