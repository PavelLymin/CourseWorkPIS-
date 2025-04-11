import 'package:course_work/domain/models/employee/employee.dart';

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

  final String? id;
  final String? departmentId;
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
}
