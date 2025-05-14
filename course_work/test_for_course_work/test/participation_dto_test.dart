import 'package:course_work/data/dtos/employee_dto.dart';
import 'package:course_work/data/dtos/participation_dto.dart';
import 'package:course_work/data/dtos/task_dto.dart';
import 'package:course_work/domain/enums/position.dart';
import 'package:course_work/domain/enums/role.dart';
import 'package:course_work/domain/enums/status_task.dart';
import 'package:course_work/domain/models/employee/employee.dart';
import 'package:course_work/domain/models/participation/participation.dart';
import 'package:course_work/domain/models/task/task.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final dto = ParticipationDto(
      task: TaskDto(
          id: 1,
          title: 'title',
          description: 'description',
          amountOfHours: 1,
          payment: 5000,
          date: DateTime(2005, 1, 1),
          startTime: DateTime(1, 1, 1, 15, 25),
          finishTime: DateTime(1, 1, 1, 16, 25),
          status: 'Начата'),
      employees: [
        EmployeeDto(
          id: 1,
          departmentId: 1,
          password: 'admin',
          firstName: 'Admin',
          lastName: 'Admin',
          position: 'Преподаватель',
          email: 'admin@mail.ru',
          role: 'Администратор',
        ),
        EmployeeDto(
          id: 2,
          departmentId: 1,
          password: 'test',
          firstName: 'Test',
          lastName: 'Test',
          position: 'Персонал',
          email: 'est@mail.ru',
          role: 'Сотрудник',
        ),
      ]);

  final model = ParticipationModel(
      task: TaskModel(
          id: 1,
          title: 'title',
          description: 'description',
          amountOfHours: 1,
          payment: 5000,
          date: DateTime(2005, 1, 1),
          startTime: DateTime(1, 1, 1, 15, 25),
          finishTime: DateTime(1, 1, 1, 16, 25),
          status: Status.started),
      employees: [
        EmployeeModel(
          id: 1,
          departmentId: 1,
          password: 'admin',
          firstName: 'Admin',
          lastName: 'Admin',
          position: Position.teacher,
          email: 'admin@mail.ru',
          role: Role.administrator,
        ),
        EmployeeModel(
          id: 2,
          departmentId: 1,
          password: 'test',
          firstName: 'Test',
          lastName: 'Test',
          position: Position.staff,
          email: 'est@mail.ru',
          role: Role.employee,
        )
      ]);

  test('Participation to domain', () {
    final result = dto.toDomain();
    expect(result, model);
  });
}
