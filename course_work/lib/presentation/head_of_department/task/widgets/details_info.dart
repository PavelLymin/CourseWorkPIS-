import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

class DetailsInfo extends StatelessWidget {
  const DetailsInfo({
    super.key,
    required this.firstDetail,
    required this.secondDetail,
    required this.firstDetailsIcon,
    required this.secondDetailsIcon,
  });
  final String firstDetail;
  final String secondDetail;
  final IconData firstDetailsIcon;
  final IconData secondDetailsIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.primaryColor,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  firstDetail,
                ),
                Icon(firstDetailsIcon),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.primaryColor,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  secondDetail,
                ),
                Icon(secondDetailsIcon),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
