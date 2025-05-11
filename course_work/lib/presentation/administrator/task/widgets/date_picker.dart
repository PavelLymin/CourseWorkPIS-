import 'package:course_work/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/i18n/date_picker_i18n.dart';

import '../../../../core/utils/date_time_format.dart';

class MyDatePicker extends StatelessWidget {
  const MyDatePicker({
    super.key,
    required this.selectedDate,
    required this.readOnly,
    required this.onTap,
  });
  final DateTime selectedDate;
  final bool readOnly;
  final Function(DateTime date) onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (!readOnly) {
          DateTime now = DateTime.now();
          final DateTime? date = await DatePicker.showSimpleDatePicker(
            context,
            firstDate: DateTime(now.year - 30),
            lastDate: now,
            dateFormat: "dd-MMMM-yyyy",
            locale: DateTimePickerLocale.ru,
            looping: true,
          );
          if (date != null) {
            onTap(date);
          }
        }
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          border: Border.all(
            color: AppColors.primaryColor,
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppDateFormat.yMMMMd.format(selectedDate)),
                Icon(Icons.date_range),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
