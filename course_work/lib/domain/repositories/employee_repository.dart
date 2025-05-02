import 'package:course_work/domain/models/employee/employee.dart';
import 'package:fpdart/fpdart.dart';

import '../../core/errors/failure.dart';

abstract interface class IEmployeeRepository {
  Future<Either<Failure, Unit>> addEmployee({
    required EmployeeModel employee,
  });

  Future<Either<Failure, List<EmployeeModel>>> getAllEmployees();

  Future<Either<Failure, List<EmployeeModel>>> getEmployeesByDepartmentId({required int departmentId,});

  Future<Either<Failure, Unit>> updateEmployee({
    required EmployeeModel originalEmployee,
    required EmployeeModel changedEmployee,
  });

  Future<Either<Failure, Unit>> deleteEmployee({
    required int employeeId,
  });
}
