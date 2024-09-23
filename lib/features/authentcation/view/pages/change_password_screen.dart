import 'package:evnto/core/helpers/extensions/string_extensions.dart';
import 'package:evnto/core/helpers/utils/media_query.dart';
import 'package:evnto/core/styles/app_colors.dart';
import 'package:evnto/core/styles/app_fonts.dart';
import 'package:evnto/features/authentcation/view/components/auth_background_design.dart';
import 'package:evnto/features/authentcation/view/components/input_form.dart';
import 'package:evnto/features/authentcation/view/components/main_button.dart';
import 'package:evnto/features/authentcation/view/components/password_strength.dart';
import 'package:flutter/material.dart';

import '../../../../core/router/app_routes.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  bool isPassword = true;
  bool passwordLength = false;
  bool passwordUpperCase = false;
  bool passwordContainNum = false;
  bool passwordSpecialChar = false;

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
            title: "Reset Password",
            widgets: [
              Text(
                "In order to keep your account safe you need to create a strong password.",
                style: AppFonts.black16Normal.copyWith(fontSize: 16.3),
              ),
              SizedBox(
                height: context.height * 0.02,
              ),
              InputForm(
                controller: passwordController,
                onChanged: (value) {
                  if (value.toString().length > 8 &&
                      value.toString().length < 20) {
                    setState(() {
                      passwordLength = true;
                    });
                  } else if (value.toString().hasUpperCase()) {
                    setState(() {
                      passwordUpperCase = true;
                    });
                  } else if (value.toString().hasNumber()) {
                    setState(() {
                      passwordContainNum = true;
                    });
                  } else if (value.toString().hasSpecialCharacter()) {
                    setState(() {
                      passwordSpecialChar = true;
                    });
                  } else {
                    setState(() {
                      passwordLength = false;
                      passwordUpperCase = false;
                      passwordContainNum = false;
                      passwordSpecialChar = false;
                    });
                  }
                },
                validate: (String value) {},
                hint: "Password",
                type: TextInputType.text,
                width: double.infinity,
                isPassword: isPassword,
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
              ),
              SizedBox(
                height: context.height * 0.035,
              ),
              InputForm(
                controller: confirmPasswordController,
                validate: (String value) {},
                hint: "Password",
                type: TextInputType.text,
                width: double.infinity,
                isPassword: isPassword,
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
              ),
              SizedBox(
                height: context.height * 0.01,
              ),
              Text(
                "your password must contain",
                style: AppFonts.grey16SemiBold.copyWith(
                    fontWeight: FontWeight.bold, color: AppColors.darkGrey),
              ),
              SizedBox(
                height: context.height * 0.01,
              ),
              PasswordStrength(
                text: "between 8 and 20 characters",
                checked: passwordLength,
              ),
              SizedBox(
                height: context.height * 0.01,
              ),
              PasswordStrength(
                text: "1 upper case character",
                checked: passwordUpperCase,
              ),
              SizedBox(
                height: context.height * 0.01,
              ),
              PasswordStrength(
                text: "1 or more numbers",
                checked: passwordContainNum,
              ),
              SizedBox(
                height: context.height * 0.01,
              ),
              PasswordStrength(
                text: "1 or more special character",
                checked: passwordSpecialChar,
              ),
              SizedBox(
                height: context.height * 0.03,
              ),
              MainButton(
                onpressd: () {
                  Navigator.popUntil(context,
                      (route) => route.settings.name == AppRoutes.login);
                },
                background: AppColors.purple,
                text: "Change Password",
              )
            ]),
      ),
       bottomSheet: Container(
        width: double.infinity,
        height: context.height * 0.15,
        color: AppColors.white,
      ),
    );
  }
}
