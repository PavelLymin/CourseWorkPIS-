import 'package:course_work/core/errors/failure.dart';
import 'package:course_work/data/data_base/data_base.dart';
import 'package:course_work/data/dtos/employee_dto/employee_dto.dart';
import 'package:course_work/domain/models/employee/employee.dart';
import 'package:course_work/domain/repositories/employee_repository.dart';
import 'package:drift/drift.dart';
import 'package:fpdart/src/either.dart';
import 'package:fpdart/src/unit.dart';

class EmployeeRepositoryImpl implements IEmployeeRepository {
  EmployeeRepositoryImpl({required this.database});
  final AppDatabase database;

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
  Future<Either<Failure, List<EmployeeModel>>> getAllTask() async {
    try {
      final tasksDb = await database.select(database.employees).get();

      final tasks = tasksDb
          .map((element) => EmployeeDto.fromDataBase(element).toDomain())
          .toList();

      return right(tasks);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<EmployeeModel>>> getTaskByDepartmentId({
    required int departmentId,
  }) async {
    try {
      final query = database.select(database.employees).join([
        innerJoin(
            database.employees,
            database.employees.id.equalsExp(database.employees.id) &
                database.departmentTasks.departmentId.equals(departmentId))
      ]);

      final employeeDb =
          await query.map((row) => row.readTable(database.employees)).get();

      final employees = employeeDb
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
