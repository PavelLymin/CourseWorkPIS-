import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.validator,
      this.suffixIcon,
      this.color,
      this.onChanged,
      this.keyboardType,
      this.obscureText = false,
      this.maxLines = 1});
  final TextEditingController controller;
  final String? Function(String? val)? validator;
  final TextInputType? keyboardType;
  final String hintText;
  final Widget? suffixIcon;
  final Color? color;
  final bool obscureText;
  final int? maxLines;
  final ValueChanged<String>? onChanged;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obscureText,
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      validator: widget.validator,
      maxLines: widget.maxLines,
      onChanged: (text) {
        setState(() {});
      },
      style: TextStyle(
        color: widget.color,
      ),
      decoration: InputDecoration(
        suffixIcon: widget.controller.text.isNotEmpty
            ? IconButton(
                onPressed: () {
                  setState(() {
                    widget.controller.clear();
                  });
                },
                icon: const Icon(Icons.clear),
              )
            : null,
        hintText: widget.hintText,
        hintStyle: TextStyle(color: widget.color),
        errorStyle: TextStyle(
          fontSize: 11,
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.primaryColor,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(25.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.primaryColor,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(25.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.primaryColor,
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
