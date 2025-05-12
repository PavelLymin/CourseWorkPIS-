import 'package:course_work/data/data_base/data_base.dart';
import 'package:course_work/data/dtos/employee_dto.dart';
import 'package:course_work/data/dtos/task_dto.dart';
import 'package:course_work/domain/models/participation/participation.dart';

class ParticipationDto {
  ParticipationDto({
    required this.task,
    required this.employees,
  });
  final TaskDto task;
  final List<EmployeeDto> employees;

  ParticipationModel toDomain() => ParticipationModel(
        task: task.toDomain(),
        employees: employees.map((employee) => employee.toDomain()).toList(),
      );

  factory ParticipationDto.fromDomain(ParticipationModel object) =>
      ParticipationDto(
        task: TaskDto.fromDomain(object.task),
        employees: object.employees
            .map((employee) => EmployeeDto.fromDomain(employee))
            .toList(),
      );

  factory ParticipationDto.fromDataBase(Task task, List<Employee> employees) =>
      ParticipationDto(
        task: TaskDto.fromDataBase(task),
        employees: employees
            .map((employee) => EmployeeDto.fromDataBase(employee))
            .toList(),
      );
}
