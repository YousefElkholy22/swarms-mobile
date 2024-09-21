import 'package:evnto/core/styles/app_colors.dart';
import 'package:evnto/core/styles/app_fonts.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InputForm extends StatelessWidget {
  InputForm({
    super.key,
    required this.controller,
    required this.validate,
    required this.hint,
    required this.type,
    required this.width,
    this.suffix,
    this.height,
    required this.isPassword,
  });

  Color backgroundColor = AppColors.white;

  final TextEditingController controller;
  final Function validate;
  final String hint;
  final TextInputType type;
  final double width;
  bool isPassword = false;
  Widget? suffix;
  double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color(0x1E000000),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: TextFormField(
          obscureText: isPassword,
          keyboardType: type,
          controller: controller,
          validator: (String? s) {
            return validate(s);
          },
          cursorColor: AppColors.black,
          style: AppFonts.black16Normal
              .copyWith(color: AppColors.black, fontSize: 17),
          decoration: InputDecoration(
              hintStyle: AppFonts.black16Normal
                  .copyWith(color: AppColors.grey, fontSize: 17),
              hintText: hint,
              suffixIcon: suffix,
              filled: true,
              fillColor: backgroundColor,
              errorBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              border: const OutlineInputBorder()),
        ),
      ),
    );
  }
}
