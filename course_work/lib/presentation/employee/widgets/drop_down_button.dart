import 'package:course_work/domain/enums/position.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton({
    super.key,
    required this.position,
    required this.onSelected,
  });
  final Position position;
  final Function(Position position) onSelected;

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  final List<String> items =
      Position.values.map((value) => value.value).toList();

  Position getPosition(String position) =>
      Position.values.firstWhere((value) => value.value == position,
          orElse: () => Position.teacher);

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
          value: widget.position.value,
          onChanged: (value) {
            widget.onSelected(getPosition(value!));
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
