import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppDateFormat {
  static final hm = DateFormat.Hm('Ru_ru');
  static final yMMMMd = DateFormat.yMMMMd('Ru_ru');
}

extension TimeOfDayConverter on TimeOfDay {
  String to24hours() {
    final hour = this.hour.toString().padLeft(2, "0");
    final min = this.minute.toString().padLeft(2, "0");
    return "$hour:$min";
  }
}

extension DateTimeExtension on TimeOfDay {
  DateTime toDateTime() {
    return DateTime(1, 1, 1, this.hour, this.minute);
  }
}
