import 'package:course_work/data/data_base/data_base.dart';
import 'package:course_work/data/dtos/set_changed.dart';
import 'package:course_work/domain/models/employee/employee.dart';
import 'package:drift/drift.dart';

class EmployeeDto {
  EmployeeDto({
    this.id,
    this.departmentId,
    required this.firstName,
    required this.lastName,
    required this.position,
    required this.role,
    required this.login,
  });

  final int? id;
  final int? departmentId;
  final String firstName;
  final String lastName;
  final String position;
  final String role;
  final String login;

  EmployeeModel toDomain() => EmployeeModel(
        id: id,
        firstName: firstName,
        lastName: lastName,
        position: position,
        role: role,
        login: login,
      );

  factory EmployeeDto.fromDomain(EmployeeModel object) => EmployeeDto(
        id: object.id,
        firstName: object.firstName,
        lastName: object.lastName,
        position: object.position,
        role: object.role,
        login: object.login,
      );

  EmployeesCompanion toDataBase() => EmployeesCompanion(
        departmentId:
            departmentId != null ? Value(departmentId!) : Value.absent(),
        firstName: Value(firstName),
        lastName: Value(lastName),
        position: Value(position),
        role: Value(role),
        login: Value(login),
      );

  factory EmployeeDto.fromDataBase(Employee object) => EmployeeDto(
        id: object.id,
        firstName: object.firstName,
        lastName: object.lastName,
        position: object.position,
        role: object.role,
        login: object.login,
      );

  EmployeesCompanion getChangesData(EmployeeDto employee) {
    return EmployeesCompanion(
      firstName: setIfChanged(firstName, employee.firstName),
      lastName: setIfChanged(lastName, employee.lastName),
      position: setIfChanged(position, employee.position),
      role: setIfChanged(role, employee.role),
      login: setIfChanged(login, employee.login),
    );
  }
}
