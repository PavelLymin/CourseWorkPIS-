import 'package:course_work/data/data_base/data_base.dart';
import 'package:course_work/data/dtos/set_changed.dart';
import 'package:course_work/domain/models/employee/employee.dart';
import 'package:drift/drift.dart';

import '../../../domain/enums/position.dart';
import '../../../domain/enums/role.dart';

class EmployeeDto {
  EmployeeDto({
    this.id,
    required this.departmentId,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.position,
    required this.role,
    required this.email,
  });

  final int? id;
  final int departmentId;
  final String password;
  final String firstName;
  final String lastName;
  final String position;
  final String role;
  final String email;

  EmployeeModel toDomain() => EmployeeModel(
        id: id,
        departmentId: departmentId,
        password: password,
        firstName: firstName,
        lastName: lastName,
        position: getPosition(position),
        role: getRole(role),
        email: email,
      );

  factory EmployeeDto.fromDomain(EmployeeModel object) => EmployeeDto(
        id: object.id,
        departmentId: object.departmentId,
        password: object.password,
        firstName: object.firstName,
        lastName: object.lastName,
        position: object.position.value,
        role: object.role.value,
        email: object.email,
      );

  EmployeesCompanion toDataBase() => EmployeesCompanion(
        departmentId: Value(departmentId),
        password: Value(password),
        firstName: Value(firstName),
        lastName: Value(lastName),
        position: Value(position),
        role: Value(role),
        email: Value(email),
      );

  Role getRole(String role) {
    return Role.values.firstWhere(
      (item) => item.value == role,
      orElse: () => Role.employee,
    );
  }

  Position getPosition(String position) {
    return Position.values.firstWhere(
      (item) => item.value == position,
      orElse: () => Position.teacher,
    );
  }

  factory EmployeeDto.fromDataBase(Employee object) => EmployeeDto(
        id: object.id,
        departmentId: object.departmentId,
        password: object.password,
        firstName: object.firstName,
        lastName: object.lastName,
        position: object.position,
        role: object.role,
        email: object.email,
      );

  EmployeesCompanion getChangesData(EmployeeDto employee) {
    return EmployeesCompanion(
      departmentId: setIfChanged(departmentId, employee.departmentId),
      firstName: setIfChanged(firstName, employee.firstName),
      lastName: setIfChanged(lastName, employee.lastName),
      position: setIfChanged(position, employee.position),
      role: setIfChanged(role, employee.role),
      email: setIfChanged(email, employee.email),
    );
  }
}
