import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee.freezed.dart';

@freezed
class EmployeeModel with _$EmployeeModel {
  const factory EmployeeModel({
    int? id,
    int? departmentId,
    required String firstName,
    required String lastName,
    required String position,
    required String role,
    required String login,
  }) = _EmployeeModel;
}
