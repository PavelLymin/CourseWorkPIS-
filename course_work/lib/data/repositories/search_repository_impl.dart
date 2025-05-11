import 'package:course_work/core/errors/failure.dart';
import 'package:course_work/data/dtos/employee_dto.dart';
import 'package:course_work/data/dtos/participation_dto.dart';
import 'package:course_work/domain/models/employee/employee.dart';
import 'package:course_work/domain/repositories/search_employee_repository.dart';
import 'package:drift/drift.dart';
import 'package:fpdart/src/either.dart';
import 'package:fpdart/src/unit.dart';

import '../data_base/data_base.dart';

class SearchRepositoryImpl implements ISearchEmployeeRepository {
  SearchRepositoryImpl({required this.database});
  final AppDatabase database;
  List<EmployeeModel> cache = [];

  @override
  Future<Either<Failure, Unit>> addSearchEmployees(
      {required List<EmployeeModel> employees, required int taskId}) async {
    try {
      final employeesDb = employees
          .map((employee) =>
              ParticipationDto.toDto(taskId, employee.id!).toDataBase())
          .toList();

      await database.batch((batch) {
        batch.insertAll(database.participation, employeesDb);
      });

      return right(unit);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<EmployeeModel>>> getEmployeesWithoutParticipation(
      {required int taskId, required int departmentId}) async {
    try {
      final query = database.select(database.employees).join([
        leftOuterJoin(
          database.participation,
          database.employees.id.equalsExp(database.participation.employeeId) &
              (database.participation.taskId.equals(taskId)),
        ),
      ])
        ..where(
          database.employees.departmentId.equals(departmentId) &
              database.participation.id.isNull(),
        );

      final employeesDb =
          await query.map((row) => row.readTable(database.employees)).get();

      final employees = employeesDb
          .map((element) => EmployeeDto.fromDataBase(element).toDomain())
          .toList();

      cache = employees;
      return right(employees);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  @override
  Either<Failure, List<EmployeeModel>> searchEmployee({required String query}) {
    try {
      final queryToLowerCase = query.toLowerCase();

      final filteredEmployees = cache
          .where((employee) =>
              (employee.firstName.toLowerCase().contains(queryToLowerCase) ||
                  employee.lastName.toLowerCase().contains(queryToLowerCase)))
          .toList();

      return right(filteredEmployees);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }
}
