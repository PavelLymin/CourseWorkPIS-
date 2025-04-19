import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/i18n/date_picker_i18n.dart';

class MyDatePicker extends StatelessWidget {
  const MyDatePicker({
    super.key,
    required this.selectedDate,
    required this.onTap,
  });
  final DateTime selectedDate;
  final Function(DateTime date) onTap;

  @override
  Widget build(BuildContext context) {
    DateTime? date;
    return GestureDetector(
      onTap: () async {
        DateTime now = DateTime.now();
        date = await DatePicker.showSimpleDatePicker(
          context,
          firstDate: DateTime(now.year - 30),
          lastDate: now,
          dateFormat: "dd-MMMM-yyyy",
          locale: DateTimePickerLocale.ru,
          looping: true,
        );

        if (date != null) {
          onTap(date!);
        }
      },
      child: Container(
        color: Colors.green,
        child: SizedBox(
          width: 250,
          child: Text(selectedDate.toString()),
        ),
      ),
    );
  }
}
