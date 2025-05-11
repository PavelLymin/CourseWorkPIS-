import 'package:fpdart/fpdart.dart';

import '../../core/errors/failure.dart';
import '../models/employee/employee.dart';

abstract interface class ISearchEmployeeRepository {
  Future<Either<Failure, Unit>> addSearchEmployees({
    required List<EmployeeModel> employees,
    required int taskId,
  });

  Future<Either<Failure, List<EmployeeModel>>>
      getEmployeesWithoutParticipation({
    required int taskId,
    required int departmentId,
  });

  Either<Failure, List<EmployeeModel>> searchEmployee({
    required String query,
  });
}
