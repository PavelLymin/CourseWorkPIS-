import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomChoiceChip extends StatefulWidget {
  const CustomChoiceChip({
    super.key,
    required this.title,
    required this.isSelected,
    this.onSelected,
  });
  final String title;
  final bool isSelected;
  final Function(bool)? onSelected;

  @override
  State<CustomChoiceChip> createState() => _CustomChoiceChipState();
}

class _CustomChoiceChipState extends State<CustomChoiceChip> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ChoiceChip(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        label: SizedBox(
          width: double.infinity,
          child: Center(
            child: Text(
              widget.title,
              softWrap: true,
            ),
          ),
        ),
        showCheckmark: false,
        selectedColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
          side: const BorderSide(color: AppColors.primaryColor),
        ),
        selected: widget.isSelected,
        onSelected: widget.onSelected,
      ),
    );
  }
}
