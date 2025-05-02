import 'package:course_work/core/utils/date_time_format.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';

class TimePicker extends StatelessWidget {
  const TimePicker({
    super.key,
    required this.selectedTime,
    required this.readOnly,
    required this.onTap,
  });
  final TimeOfDay selectedTime;
  final bool readOnly;
  final Function(TimeOfDay time) onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (!readOnly) {
          final TimeOfDay? time = await showTimePicker(
              context: context,
              initialEntryMode: TimePickerEntryMode.input,
              initialTime: selectedTime,
              builder: (context, child) {
                return Theme(
                  data: Theme.of(context).copyWith(
                    colorScheme: const ColorScheme.light(
                      primary: AppColors.primaryColor,
                    ),
                  ),
                  child: MediaQuery(
                    data: MediaQuery.of(context)
                        .copyWith(alwaysUse24HourFormat: true),
                    child: child!,
                  ),
                );
              });
          if (time != null) {
            onTap(time);
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
                Text(selectedTime.to24hours()),
                const Icon(Icons.access_time),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
