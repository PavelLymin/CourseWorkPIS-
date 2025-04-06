import 'package:course_work/core/errors/failure.dart';
import 'package:course_work/core/utils/table_names.dart';
import 'package:course_work/data/dtos/department_dto/department_dto.dart';
import 'package:course_work/domain/models/department.dart';
import 'package:course_work/domain/repositories/department_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:fpdart/src/unit.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class DepartmentRepositoryImpl implements IDepartmentRepository {
  DepartmentRepositoryImpl({required this.dataBase});
  final SupabaseClient dataBase;

  @override
  Future<Either<Failure, Unit>> addDepartment(
      {required Department department}) async {
    try {
      final json = DepartmentDto.fromDomain(department).toJson();
      json.remove('id');

      await dataBase.from(TableNames.department).insert(json);

      return right(unit);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Department>>> getAllDepartment() async {
    try {
      final jsonList = await dataBase.from(TableNames.department).select();

      final departments = jsonList
          .map((json) => DepartmentDto.fromJson(json).toDomain())
          .toList();

      return right(departments);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateDepartment({
    required Department department,
  }) async {
    try {
      final id = department.id;
      final json = DepartmentDto.fromDomain(department).toJson();
      json.remove('id');

      await dataBase.from(TableNames.department).update(json).eq('id', id!);

      return right(unit);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteDepartment({
    required String id,
  }) async {
    try {
      await dataBase.from(TableNames.department).delete().eq('id', id);

      return right(unit);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }
}
