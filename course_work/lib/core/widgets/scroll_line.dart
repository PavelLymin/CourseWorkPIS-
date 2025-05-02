import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class ScrollLine extends StatelessWidget {
  const ScrollLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 6,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
