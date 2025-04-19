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
  final List<DepartmentModel> _cache = [];

  @override
  Future<Either<Failure, Unit>> addDepartment(
      {required DepartmentModel department}) async {
    try {
      _clearCache();

      final departmentDb = DepartmentDto.fromDomain(department).toDataBase();

      await database.into(database.departments).insert(departmentDb);

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
      await database.transaction(() async {
        await (database.delete(database.departmentTasks)
              ..where((row) => row.departmentId.equals(departmentId)))
            .go();

        await (database.delete(database.departments)
              ..where((row) => row.id.equals(departmentId)))
            .go();
      });

      return right(unit);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<DepartmentModel>>> getAllDepartment() async {
    try {
      if (_cache.isNotEmpty) {
        return right(_cache);
      }

      final departmentsDb = await database.select(database.departments).get();

      final departments = departmentsDb
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
      final departmentDb = DepartmentDto.fromDomain(department).toDataBase();

      await (database.update(database.departments)
            ..where((department) => department.id.equals(id!)))
          .write(departmentDb);

      return right(unit);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  void _clearCache() {
    _cache.clear();
  }

  void _updateCache(List<DepartmentModel> data) {
    _cache.addAll(data);
  }
}
