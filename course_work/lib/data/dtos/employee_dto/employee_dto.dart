import 'package:course_work/domain/models/employee.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_dto.g.dart';

@JsonSerializable()
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
  @JsonKey(name: 'department_id')
  final String? departmentId;
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;
  final String position;
  final String role;
  final String login;

  Employee toDomain() => Employee(
        id: id,
        firstName: firstName,
        lastName: lastName,
        position: position,
        role: role,
        login: login,
      );

  factory EmployeeDto.fromDomain(Employee object) => EmployeeDto(
        id: object.id,
        firstName: object.firstName,
        lastName: object.lastName,
        position: object.position,
        role: object.role,
        login: object.login,
      );

  factory EmployeeDto.fromJson(Map<String, dynamic> json) =>
      _$EmployeeDtoFromJson(json);

  Map<String, dynamic> toJson() => _$EmployeeDtoToJson(this);
}
