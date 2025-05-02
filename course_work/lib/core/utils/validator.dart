import 'package:course_work/core/utils/app_strings.dart';

class Validator {
  static String? titleDepartmentValidate(String value) =>
      value.isEmpty ? AppStrings.required : null;

  static String? titleTaskValidate(String value) =>
      value.isEmpty ? AppStrings.required : null;

  static String? descriptionValidate(String value) =>
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
}
