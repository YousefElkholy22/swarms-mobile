import 'package:evnto/core/helpers/utils/media_query.dart';
import 'package:evnto/core/styles/app_colors.dart';
import 'package:evnto/core/styles/app_fonts.dart';
import 'package:evnto/features/authentcation/view/components/auth_background_design.dart';
import 'package:evnto/features/authentcation/view/components/input_form.dart';
import 'package:evnto/features/authentcation/view/components/main_button.dart';
import 'package:flutter/material.dart';

import '../../../../core/router/app_routes.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  TextEditingController emailController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.purple,
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: AuthLayout(widgets: [
            Text(
              "Please enter your email to get a verification code.",
              style: AppFonts.black14Normal,
            ),
            SizedBox(
              height: context.height * 0.02,
            ),
            InputForm(
                controller: emailController,
                validate: (String value) {},
                hint: "Email",
                type: TextInputType.emailAddress,
                width: double.infinity,
                isPassword: false),
            SizedBox(
              height: context.height * 0.04,
            ),
            MainButton(
                onpressd: () {
                  Navigator.pushNamed(context, AppRoutes.verifyEmail);
                },
                background: AppColors.purple,
                text: "Get Code"),
            SizedBox(
              height: context.height * 0.45,
            ),
          ], title: "Forgot Password", fun: () {
            Navigator.pop(context);
          })),
      bottomSheet: Container(
        width: double.infinity,
        height: context.height * 0.05,
        color: AppColors.white,
      ),
    );
  }
}
