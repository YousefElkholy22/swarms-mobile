import 'package:evnto/core/styles/app_colors.dart';
import 'package:evnto/core/styles/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class OtpForm extends StatelessWidget {
  OtpForm(
      {super.key,
      required this.controller,
      required this.validate,
      required this.onChanged,
      this.height});
  final TextEditingController controller;
  final Function validate;
  double? height;
  final Function onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          shape: BoxShape.circle, border: Border.all(color: AppColors.purple)),
      child: Center(
        child: TextFormField(
          onChanged: (value) {
            onChanged(value);
          },
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
          keyboardType: TextInputType.number,
          controller: controller,
          validator: (String? s) {
            return validate(s);
          },
          cursorColor: AppColors.black,
          style: AppFonts.black14Normal,
          decoration: InputDecoration(
              hintStyle: AppFonts.black14Normal
                  .copyWith(color: AppColors.grey, fontSize: 17),
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
