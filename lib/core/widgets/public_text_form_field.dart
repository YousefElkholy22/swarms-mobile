import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../styles/app_colors.dart';

class PublicTextFormField extends StatefulWidget {
  final bool enabled;
  final double? width;
  final String hint;
  final String? label;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final TextInputType keyboardtype;
  final IconData prefixIcon;
  final IconData suffixIcon;
  final bool isPassword;
  final bool showprefixIcon;
  final bool showSuffixIcon;
  final int? maxlenght;
  final int? maxLines;
  final Function()? ontap;
  final Function()? ontapPrefixIcon;
  final Function()? ontapSuffixIcon;
  final double borderRadius;
  final EdgeInsetsGeometry? contentPadding;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;

  const PublicTextFormField({
    super.key,
    required this.hint,
    this.validator,
    this.label,
    this.controller,
    this.enabled = true,
    this.isPassword = false,
    this.showSuffixIcon = false,
    this.showprefixIcon = false,
    this.ontap,
    this.keyboardtype = TextInputType.text,
    this.maxlenght,
    this.maxLines,
    this.prefixIcon = Icons.person,
    this.suffixIcon = Icons.person,
    this.ontapPrefixIcon,
    this.ontapSuffixIcon,
    this.borderRadius = 12,
    this.contentPadding,
    this.onChanged,
    this.onSubmitted,
    this.width,
  });

  @override
  State<PublicTextFormField> createState() => _PublicTextFormFieldState();
}

class _PublicTextFormFieldState extends State<PublicTextFormField> {
  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ??
          1.sw, // TODO: Test - if it takes the rest of the width or make error
      child: TextFormField(
        enabled: widget.enabled,
        textCapitalization: TextCapitalization.none,
        maxLines: widget.maxLines ?? 1,
        maxLength: widget.maxlenght,
        obscureText: widget.isPassword ? showPassword : false,
        keyboardType: widget.keyboardtype,
        controller: widget.controller,
        autovalidateMode: AutovalidateMode.disabled,
        validator: widget.validator,
        decoration: _getInputDecoration(),
        onChanged: widget.onChanged,
        onFieldSubmitted: widget.onSubmitted,
      ),
    );
  }

  InputDecoration _getInputDecoration() {
    return InputDecoration(
      fillColor: AppColors.white,
      iconColor: AppColors.blue,
      filled: true,
      labelText: widget.label,
      labelStyle: TextStyle(color: AppColors.blue, fontSize: 18.sp),
      hintText: widget.hint,
      hintStyle: TextStyle(color: AppColors.darkGrey, fontSize: 14.sp),
      contentPadding: widget.contentPadding ??
          EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      enabledBorder: _getDefaultBorderDcoration(),
      disabledBorder: _getDefaultBorderDcoration(),
      focusedBorder: _getFocusedBorderDecoration(),
      errorBorder: _getErrorBorderDecoration(),
      focusedErrorBorder: _getErrorBorderDecoration(),
      prefixIcon: _getPrefixIcon(),
      suffixIcon: _getSuffixIcon(),
    );
  }

  Widget? _getPrefixIcon() {
    if (widget.showprefixIcon) {
      return InkWell(
        onTap: widget.ontapPrefixIcon,
        child: Icon(
          widget.prefixIcon,
          size: 22.w,
          color: AppColors.blue,
        ),
      );
    }
    return null;
  }

  Widget? _getSuffixIcon() {
    if (widget.showSuffixIcon) {
      if (!widget.isPassword) {
        return Icon(
          widget.suffixIcon,
          size: 22.w,
          color: AppColors.blue,
        );
      }
      return InkWell(
        onTap: (() {
          setState(() {
            showPassword = !showPassword;
          });
        }),
        child: !showPassword
            ? const Icon(
                Iconsax.eye,
                color: AppColors.darkGrey,
              )
            : const Icon(
                Iconsax.eye_slash,
                color: AppColors.darkGrey,
              ),
      );
    }
    return null;
  }

  OutlineInputBorder _getDefaultBorderDcoration() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(widget.borderRadius),
      borderSide: const BorderSide(color: AppColors.darkGrey, width: 0.5),
    );
  }

  OutlineInputBorder _getFocusedBorderDecoration() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(widget.borderRadius),
      borderSide: const BorderSide(color: AppColors.blue, width: 0.5),
    );
  }

  OutlineInputBorder _getErrorBorderDecoration() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(widget.borderRadius),
      borderSide: const BorderSide(color: AppColors.red, width: 0.5),
    );
  }
}
