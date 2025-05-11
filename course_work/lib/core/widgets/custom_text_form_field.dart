import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    this.validator,
    this.suffixIcon,
    this.textColor,
    this.borderColor = AppColors.primaryColor,
    this.onChanged,
    this.keyboardType,
    this.obscureText = false,
    this.maxLines = 1,
    this.readOnly = false,
  });
  final TextEditingController controller;
  final String? Function(String? val)? validator;
  final TextInputType? keyboardType;
  final String hintText;
  final Widget? suffixIcon;
  final Color? textColor;
  final Color borderColor;
  final bool obscureText;
  final int maxLines;
  final bool readOnly;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      keyboardType: keyboardType,
      validator: validator,
      maxLines: maxLines,
      readOnly: readOnly,
      onChanged: onChanged,
      style: TextStyle(
        color: textColor,
      ),
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: TextStyle(color: textColor),
        errorStyle: TextStyle(
          fontSize: 11,
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(25.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(25.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(25.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.errorColor,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
    );
  }
}
