import 'package:course_work/core/utils/app_strings.dart';

class Validator {
  static String? emptyValidate(String value) =>
      value.isEmpty ? AppStrings.required : null;

  static String? paymentValidate(String value) {
    if (value.isEmpty) return AppStrings.required;
    if (double.tryParse(value) == null) return AppStrings.correctAmount;
    return null;
  }

  static String? amountOfHoursValidate(String value) {
    if (value.isEmpty) return AppStrings.required;
    if (int.tryParse(value) == null) return AppStrings.correctAmount;
    return null;
  }

  static final _emailValidation =
      RegExp(r'[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

  static String? emailValidate(String value) {
    if (value.isEmpty) return AppStrings.required;
    if (!_emailValidation.hasMatch(value)) return AppStrings.correctEmail;
    return null;
  }
}
