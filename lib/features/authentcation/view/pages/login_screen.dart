import 'package:evnto/core/helpers/utils/media_query.dart';
import 'package:evnto/core/styles/app_colors.dart';
import 'package:evnto/core/styles/app_fonts.dart';
import 'package:evnto/features/authentcation/view/components/auth_background_design.dart';
import 'package:evnto/features/authentcation/view/components/input_form.dart';
import 'package:evnto/features/authentcation/view/components/main_button.dart';
import 'package:evnto/features/authentcation/view/components/signup_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPassword = true;
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.purple,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AuthLayout(
              title: "Welcome Back!",
              fun: () {},
              widgets: [
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
                  controller: passwordController,
                  validate: (String value) {},
                  hint: "Password",
                  type: TextInputType.text,
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
                      )),
                  isPassword: isPassword,
                ),
                SizedBox(
                  height: context.height * 0.01,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: AppFonts.black14Normal,
                      )),
                ),
                SizedBox(
                  height: context.height * 0.036,
                ),
                MainButton(
                    onpressd: () {},
                    background: AppColors.purple,
                    text: "Log In"),
                SizedBox(
                  height: context.height * 0.036,
                ),
                const SignupButton(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: AppFonts.black16Normal,
                    ),
                    InkWell(
                      child: Text(
                        "Sign Up",
                        style: AppFonts.black20Bold.copyWith(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: context.height * 0.1355,
                )
              ],
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        color: AppColors.white,
        width: double.infinity,
        height: context.height * 0.1,
      ),
    );
  }
}
