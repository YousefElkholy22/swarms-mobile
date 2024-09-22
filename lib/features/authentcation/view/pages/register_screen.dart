import 'package:evnto/core/helpers/utils/media_query.dart';
import 'package:evnto/core/styles/app_colors.dart';
import 'package:evnto/core/styles/app_fonts.dart';
import 'package:evnto/features/authentcation/view/components/auth_background_design.dart';
import 'package:evnto/features/authentcation/view/components/input_form.dart';
import 'package:evnto/features/authentcation/view/components/main_button.dart';
import 'package:evnto/features/authentcation/view/components/signup_button.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool isPassword = true;

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.purple,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        // back ground layout
        child: AuthLayout(
          title: 'Create Account!',
          fun: () {},
          widgets: [
            InputForm(
              controller: nameController,
              validate: (String value) {},
              hint: "Full Name",
              type: TextInputType.name,
              width: double.infinity,
              isPassword: false,
            ),
            SizedBox(
              height: context.height * 0.035,
            ),
            InputForm(
              controller: emailController,
              validate: (String value) {},
              hint: "Email",
              type: TextInputType.emailAddress,
              width: double.infinity,
              isPassword: false,
            ),
            SizedBox(
              height: context.height * 0.035,
            ),
            InputForm(
                isPassword: isPassword,
                controller: passwordController,
                validate: (String value) {},
                hint: "Password",
                type: TextInputType.emailAddress,
                width: double.infinity,
                suffix: IconButton(
                    onPressed: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                    icon: Icon(
                      isPassword
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: AppColors.darkGrey,
                    ))),
            SizedBox(
              height: context.height * 0.035,
            ),
            InputForm(
                isPassword: isPassword,
                controller: confirmPasswordController,
                validate: (String value) {},
                hint: "Confirm Password",
                type: TextInputType.emailAddress,
                width: double.infinity,
                suffix: IconButton(
                    onPressed: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                    icon: Icon(
                      isPassword
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: AppColors.darkGrey,
                    ))),
            SizedBox(
              height: context.height * 0.06,
            ),
            MainButton(
                onpressd: () {}, background: AppColors.purple, text: "Sign Up"),
            SizedBox(
              height: context.height * 0.02,
            ),
            const SignupButton(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "already have an account? ",
                  style: AppFonts.black16Normal,
                ),
                InkWell(
                  child: Text(
                    "Log in",
                    style: AppFonts.black20Bold.copyWith(fontSize: 16),
                  ),
                ),
              ],
            ),
            // to expand container
            SizedBox(
              height: context.height * 0.01,
            )
          ],
        ),
      ),
      bottomSheet: Container(
        color: AppColors.white,
        width: double.infinity,
        height: context.height * 0.05,
      ),
    );
  }
}
