import 'package:course_work/core/errors/failure.dart';
import 'package:course_work/domain/models/task/task.dart';
import 'package:fpdart/fpdart.dart' show Either, Unit;

abstract interface class ITaskRepository {
  Future<Either<Failure, List<TaskModel>>> getAllTask();

  Future<Either<Failure, List<TaskModel>>> getTaskByDepartmentId({
    required int departmentId,
  });

  Future<Either<Failure, TaskModel>> getTaskById({
    required int taskId,
  });

  Future<Either<Failure, Unit>> deleteTask({
    required int taskId,
  });

  Future<Either<Failure, Unit>> updateTask({
    required TaskModel originalTask,
    required TaskModel changedTask,
  });

  Future<Either<Failure, Unit>> addTask({
    required TaskModel task,
    required int departmentId,
  });
}
