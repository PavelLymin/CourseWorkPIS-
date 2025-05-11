import 'package:course_work/core/errors/failure.dart';
import 'package:course_work/data/data_base/data_base.dart';
import 'package:course_work/data/dtos/employee_dto.dart';
import 'package:course_work/domain/models/employee/employee.dart';
import 'package:course_work/domain/repositories/employee_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:fpdart/src/unit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/utils/app_strings.dart';

class EmployeeRepositoryImpl implements IEmployeeRepository {
  EmployeeRepositoryImpl({required this.database, required this.preferences});
  final AppDatabase database;
  final SharedPreferences preferences;

  @override
  Future<Either<Failure, Unit>> addEmployee({
    required EmployeeModel employee,
  }) async {
    try {
      final employeeDb = EmployeeDto.fromDomain(employee).toDataBase();

      await database.into(database.employees).insert(employeeDb);

      return right(unit);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteEmployee({
    required int employeeId,
  }) async {
    try {
      await (database.delete(database.employees)
            ..where((row) => row.id.equals(employeeId)))
          .go();

      return right(unit);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, EmployeeModel>> getEmployee() async {
    try {
      final employeeId = preferences.getInt('id');

      if (employeeId == null) {
        return left(Failure(message: AppStrings.notFoundEmployee));
      }

      final employeesDb = await (database.select(database.employees)
            ..where((row) => row.id.equals(employeeId)))
          .getSingle();

      final employee = EmployeeDto.fromDataBase(employeesDb).toDomain();

      return right(employee);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<EmployeeModel>>> getAllEmployees() async {
    try {
      final employeesDb = await database.select(database.employees).get();

      final employees = employeesDb
          .map((element) => EmployeeDto.fromDataBase(element).toDomain())
          .toList();

      return right(employees);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<EmployeeModel>>> getEmployeesByDepartmentId({
    required int departmentId,
  }) async {
    try {
      final employeesDb = await (database.select(database.employees)
            ..where((row) => row.departmentId.equals(departmentId)))
          .get();

      final employees = employeesDb
          .map((element) => EmployeeDto.fromDataBase(element).toDomain())
          .toList();

      return right(employees);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateEmployee({
    required EmployeeModel originalEmployee,
    required EmployeeModel changedEmployee,
  }) async {
    try {
      final id = changedEmployee.id;
      final originalDto = EmployeeDto.fromDomain(originalEmployee);
      final changedDto = EmployeeDto.fromDomain(changedEmployee);
      final changes = originalDto.getChangesData(changedDto);

      await (database.update(database.employees)
            ..where((task) => task.id.equals(id!)))
          .write(changes);

      return right(unit);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }
}
