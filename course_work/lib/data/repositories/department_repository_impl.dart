import 'package:course_work/core/errors/failure.dart';
import 'package:course_work/data/data_base/data_base.dart';
import 'package:course_work/data/dtos/department_dto/department_dto.dart';
import 'package:course_work/domain/repositories/department_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:fpdart/src/unit.dart';

import '../../domain/models/department/department.dart';

class DepartmentRepositoryImpl implements IDepartmentRepository {
  DepartmentRepositoryImpl({required this.database});
  final AppDatabase database;
  final List<DepartmentModel> cache = [];

  @override
  Future<Either<Failure, Unit>> addDepartment(
      {required DepartmentModel department}) async {
    try {
      _clearCache();
      final dbDepartment = DepartmentDto.fromDomain(department).toDataBase();

      await database.into(database.departments).insert(dbDepartment);

      return right(unit);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteDepartment(
      {required int departmentId}) async {
    try {
      _clearCache();

      await (database.delete(database.departments)
            ..where((row) => row.id.equals(departmentId)))
          .go();
      return right(unit);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<DepartmentModel>>> getAllDepartment() async {
    try {
      if (cache.isNotEmpty) {
        return right(cache);
      }
      final dbDepartments = await database.select(database.departments).get();

      final departments = dbDepartments
          .map((element) => DepartmentDto.fromDataBase(element).toDomain())
          .toList();

      _updateCache(departments);
      return right(departments);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateDepartment(
      {required DepartmentModel department}) async {
    try {
      _clearCache();

      final id = department.id;
      final dbDepartment = DepartmentDto.fromDomain(department).toDataBase();

      database.update(database.departments)
        ..where((department) => department.id.equals(id!))
        ..write(dbDepartment);

      return right(unit);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  void _clearCache() {
    cache.clear();
  }

  void _updateCache(List<DepartmentModel> data) {
    cache.addAll(data);
  }
}
