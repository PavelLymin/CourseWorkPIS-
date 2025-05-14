import 'package:course_work/data/dtos/employee_dto.dart';
import 'package:course_work/domain/enums/position.dart';
import 'package:course_work/domain/enums/role.dart';
import 'package:course_work/domain/models/employee/employee.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final dto = EmployeeDto(
    id: 1,
    departmentId: 1,
    password: 'password',
    firstName: 'firstName',
    lastName: 'lastName',
    position: 'Преподаватель',
    role: 'Сотрудник',
    email: 'email@mail.ru',
  );

  final model = EmployeeModel(
    id: 1,
    departmentId: 1,
    password: 'password',
    firstName: 'firstName',
    lastName: 'lastName',
    position: Position.teacher,
    email: 'email@mail.ru',
    role: Role.employee,
  );

  test('EmployeeDto to domain', () {
    final result = dto.toDomain();
    expect(result, model);
  });
}
