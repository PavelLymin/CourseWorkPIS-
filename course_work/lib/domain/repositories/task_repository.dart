import 'package:course_work/core/errors/failure.dart';
import 'package:fpdart/fpdart.dart' show Either, Unit;

import '../models/task.dart';

abstract interface class ITaskRepository {
  Future<Either<Failure, List<Task>>> getAllTask();

  Future<Either<Failure, List<Task>>> getTaskByIdDepartment({
    required String id,
  });

  Future<Either<Failure, Unit>> deleteTask({
    required String id,
  });

  Future<Either<Failure, Unit>> updateTask({
    required Task task,
  });

  Future<Either<Failure, Unit>> addTask({
    required Task task,
    required String departmentId,
  });
}
