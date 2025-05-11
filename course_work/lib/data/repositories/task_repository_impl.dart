import 'package:course_work/core/errors/failure.dart';
import 'package:course_work/data/dtos/task_dto.dart';
import 'package:course_work/domain/models/task/task.dart';
import 'package:course_work/domain/repositories/task_repository.dart';
import 'package:drift/drift.dart';
import 'package:fpdart/src/either.dart';
import 'package:fpdart/src/unit.dart';

import '../data_base/data_base.dart';

class TaskRepositoryImpl implements ITaskRepository {
  TaskRepositoryImpl({required this.database});
  final AppDatabase database;

  @override
  Future<Either<Failure, Unit>> addTask({
    required TaskModel task,
    required int departmentId,
  }) async {
    try {
      final dbTask = TaskDto.fromDomain(task).toDataBase();

      await database.transaction(() async {
        final taskId = await database.into(database.tasks).insert(dbTask);

        await database
            .into(database.departmentTasks)
            .insert(DepartmentTasksCompanion(
              departmentId: Value(departmentId),
              taskId: Value(taskId),
            ));
      });

      return right(unit);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteTask({
    required int taskId,
  }) async {
    try {
      await database.transaction(() async {
        await (database.delete(database.departmentTasks)
              ..where((row) => row.taskId.equals(taskId)))
            .go();
        await (database.delete(database.tasks)
              ..where((row) => row.id.equals(taskId)))
            .go();
      });

      return right(unit);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<TaskModel>>> getAllTask() async {
    try {
      final tasksDb = await database.select(database.tasks).get();

      final tasks = tasksDb
          .map((element) => TaskDto.fromDataBase(element).toDomain())
          .toList();

      return right(tasks);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<TaskModel>>> getTaskByDepartmentId({
    required int departmentId,
  }) async {
    try {
      final query = database.select(database.tasks).join([
        innerJoin(database.departmentTasks,
            database.departmentTasks.taskId.equalsExp(database.tasks.id))
      ])
        ..where(database.departmentTasks.departmentId.equals(departmentId));

      final tasksDb =
          await query.map((row) => row.readTable(database.tasks)).get();

      final tasks = tasksDb
          .map((element) => TaskDto.fromDataBase(element).toDomain())
          .toList();

      return right(tasks);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateTask({
    required TaskModel originalTask,
    required TaskModel changedTask,
  }) async {
    try {
      final id = changedTask.id;
      final oldTask = TaskDto.fromDomain(originalTask);
      final newTask = TaskDto.fromDomain(changedTask);
      final changes = oldTask.getChangesData(newTask);

      await (database.update(database.tasks)
            ..where((task) => task.id.equals(id!)))
          .write(changes);

      return right(unit);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }
}
