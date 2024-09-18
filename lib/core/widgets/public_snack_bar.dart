import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

import '../styles/app_fonts.dart';



// ignore: must_be_immutable
class MySnackBar extends Flushbar {
  MySnackBar({super.key});

  static Flushbar error({
    required String message,
    required Color color,
    required BuildContext context,
  }) {
    return Flushbar(
      animationDuration: const Duration(milliseconds: 1000),
      backgroundColor: color,
      duration: const Duration(milliseconds: 3000),
      flushbarPosition: FlushbarPosition.TOP,
      flushbarStyle: FlushbarStyle.FLOATING,
      messageText: Center(
        child: Text(
           message,
           style: AppFonts.white12Normal,
          
        ),
      ),
      margin: const EdgeInsets.symmetric(
        vertical: 20,
      ),
    )..show(context);
  }
}