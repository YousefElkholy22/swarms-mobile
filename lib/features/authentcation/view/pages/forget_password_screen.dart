import 'package:evnto/core/styles/app_colors.dart';
import 'package:evnto/features/authentcation/view/components/auth_background_design.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.purple,
      body: AuthLayout(widgets: const [], title: "Forgot Password", fun: () {}),
    );
  }
}
