import 'package:evnto/core/helpers/utils/media_query.dart';
import 'package:evnto/core/styles/app_colors.dart';
import 'package:evnto/core/styles/app_fonts.dart';
import 'package:evnto/features/authentcation/view/widgets/auth_background_design.dart';
import 'package:evnto/features/authentcation/view/widgets/input_form.dart';
import 'package:evnto/features/authentcation/view/widgets/main_button.dart';
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
        child: buildAuthBackground(
          context,
          title: 'Create Account!',
          fun: () {},
          widgets: [
            buildInputForm(context,
                controller: nameController,
                validate: (String value) {},
                hint: "Full Name",
                type: TextInputType.name,
                width: double.infinity),
            SizedBox(
              height: context.height * 0.035,
            ),
            buildInputForm(context,
                controller: emailController,
                validate: (String value) {},
                hint: "Email",
                type: TextInputType.emailAddress,
                width: double.infinity),
            SizedBox(
              height: context.height * 0.035,
            ),
            buildInputForm(context,
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
                      color: AppColors.grey,
                    ))),
            SizedBox(
              height: context.height * 0.035,
            ),
            buildInputForm(context,
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
                      color: AppColors.grey,
                    ))),
            SizedBox(
              height: context.height * 0.06,
            ),
            buildMainButton(context,
                onpressd: () {}, background: AppColors.purple, text: "Sign Up"),
            SizedBox(
              height: context.height * 0.02,
            ),
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
            ),
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
    );
  }
}
