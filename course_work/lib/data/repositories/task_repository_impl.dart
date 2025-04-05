import 'package:course_work/core/errors/failure.dart';
import 'package:course_work/core/utils/table_names.dart';
import 'package:course_work/data/dtos/task_dto/task_dto.dart';
import 'package:course_work/domain/models/task.dart';
import 'package:course_work/domain/repositories/task_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:fpdart/src/unit.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class TaskRepositoryImpl implements ITaskRepository {
  final SupabaseClient dataBase;
  TaskRepositoryImpl({required this.dataBase});

  @override
  Future<Either<Failure, Unit>> addTask(
      {required Task task, required String departmentId}) async {
    try {
      final json = TaskDto.fromDomain(task).toJson();
      final insertedTask = await dataBase
          .from(TableNames.task)
          .insert(json)
          .select('id')
          .single();

      final taskId = insertedTask['id'];

      await dataBase.from(TableNames.departmentTask).insert({
        'department_id': departmentId,
        'id': taskId,
      });

      return right(unit);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteTask({required String id}) async {
    try {
      await dataBase.from(TableNames.task).delete().eq('id', id);

      await dataBase.from(TableNames.departmentTask).delete().eq('task_id', id);

      return right(unit);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Task>>> getAllTask() async {
    try {
      final jsonList = await dataBase.from(TableNames.task).select();

      final tasks =
          jsonList.map((json) => TaskDto.fromJson(json).toDomain()).toList();

      return right(tasks);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Task>>> getTaskByIdDepartment(
      {required String id}) async {
    try {
      final jsonList = await dataBase.from(TableNames.task).select().filter(
          'id',
          'in',
          dataBase
              .from(TableNames.departmentTask)
              .select('task_id')
              .eq('department_tas', id));

      final tasks =
          jsonList.map((json) => TaskDto.fromJson(json).toDomain()).toList();

      return right(tasks);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateTask({
    required Task task,
  }) async {
    try {
      final json = TaskDto.fromDomain(task).toJson();

      await dataBase.from(TableNames.task).update(json);

      return right(unit);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }
}
