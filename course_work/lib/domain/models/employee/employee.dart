import 'package:course_work/domain/enums/position.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enums/role.dart';

part 'employee.freezed.dart';

@freezed
class EmployeeModel with _$EmployeeModel {
  const factory EmployeeModel({
    int? id,
    required int departmentId,
    required String password,
    required String firstName,
    required String lastName,
    required Position position,
    required String email,
    required Role role,
  }) = _EmployeeModel;
}
