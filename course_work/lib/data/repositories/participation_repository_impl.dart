import 'package:course_work/core/errors/failure.dart';
import 'package:course_work/domain/enums/status_task.dart';
import 'package:course_work/domain/models/participation/participation.dart';
import 'package:course_work/domain/repositories/participation_repository.dart';
import 'package:drift/drift.dart';
import 'package:fpdart/fpdart.dart';

import '../../domain/models/employee/employee.dart';
import '../data_base/data_base.dart';
import '../dtos/employee_dto.dart';
import '../dtos/task_dto.dart';

class ParticipationRepositoryImpl implements IParticipationRepository {
  ParticipationRepositoryImpl({
    required AppDatabase database,
  }) : _database = database;
  final AppDatabase _database;

  @override
  Future<Either<Failure, List<ParticipationModel>>> getParticipation({
    required int departmentId,
  }) async {
    try {
      final query = _database.select(_database.tasks).join([
        leftOuterJoin(_database.participation,
            _database.participation.taskId.equalsExp(_database.tasks.id)),
        leftOuterJoin(_database.departmentTasks,
            _database.departmentTasks.taskId.equalsExp(_database.tasks.id)),
        leftOuterJoin(
            _database.employees,
            _database.employees.id
                .equalsExp(_database.participation.employeeId)),
      ])
        ..where(_database.departmentTasks.departmentId.equals(departmentId));

      final results = await query.get();
      final tasksMap = <int, ParticipationModel>{};
      results.map((row) {
        final task = row.readTable(_database.tasks);
        final employee = row.readTableOrNull(_database.employees);
        _createParticipationMap(task, tasksMap, employee);
      }).toList();

      return right(tasksMap.values.toList());
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  void _createParticipationMap(
      task, Map<int, ParticipationModel> tasksMap, Employee? employee) {
    final taskId = task.id;
    final current = tasksMap[taskId];

    if (employee != null) {
      final newEmployee = EmployeeDto.fromDataBase(employee).toDomain();
      if (current == null) {
        tasksMap[taskId] = ParticipationModel(
            task: TaskDto.fromDataBase(task).toDomain(),
            employees: [newEmployee]);
      } else {
        tasksMap[taskId] =
            current.copyWith(employees: [...current.employees, newEmployee]);
      }
    } else if (current == null) {
      tasksMap[taskId] = ParticipationModel(
          task: TaskDto.fromDataBase(task).toDomain(), employees: []);
    }
  }

  @override
  Future<Either<Failure, Unit>> addParticipation({
    required List<EmployeeModel> employees,
    required int taskId,
  }) async {
    try {
      final employeesDb = employees
          .map((employee) => ParticipationCompanion(
              taskId: Value(taskId), employeeId: Value(employee.id!)))
          .toList();

      _database.transaction(() async {
        await _database.batch((batch) {
          batch.insertAll(_database.participation, employeesDb);
        });
        await (_database.update(_database.tasks)
              ..where((row) => row.id.equals(taskId)))
            .write(TasksCompanion(status: Value(Status.issued.value)));
      });

      return right(unit);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }
}
