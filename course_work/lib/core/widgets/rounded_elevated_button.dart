import 'package:course_work/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class RoundedElevatedButton extends StatelessWidget {
  const RoundedElevatedButton({
    super.key,
    this.onPressed,
    this.color = AppColors.primaryColor,
    required this.text,
  });
  final Function()? onPressed;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(color),
        elevation: const WidgetStatePropertyAll(0),
        shape: const WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25.0),
            ),
          ),
        ),
        fixedSize: WidgetStatePropertyAll(
          Size(
            MediaQuery.sizeOf(context).width,
            45,
          ),
        ),
      ),
      child: Text(text),
    );
  }
}
