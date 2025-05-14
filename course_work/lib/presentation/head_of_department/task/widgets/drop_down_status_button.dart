import 'package:course_work/domain/enums/status_task.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

class DropDownStatusButton extends StatefulWidget {
  const DropDownStatusButton({
    super.key,
    required this.status,
    required this.onSelected,
  });
  final String status;
  final Function(String status) onSelected;

  @override
  State<DropDownStatusButton> createState() => _DropDownStatusButtonState();
}

class _DropDownStatusButtonState extends State<DropDownStatusButton> {
  late List<String> items = [
    'Все',
    ...Status.values.map((value) => value.value)
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          isExpanded: true,
          hint: Text(
            'Select Item',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          items: items
              .map((String item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ))
              .toList(),
          value: widget.status,
          onChanged: (value) {
            widget.onSelected(value!);
          },
          buttonStyleData: ButtonStyleData(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(
                color: AppColors.backGroundColor,
                width: 2,
              ),
            ),
          ),
          menuItemStyleData: const MenuItemStyleData(
            height: 50,
          ),
        ),
      ),
    );
  }
}
