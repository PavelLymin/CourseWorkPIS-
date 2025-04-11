import 'package:course_work/core/errors/failure.dart';
import 'package:fpdart/fpdart.dart';

import '../models/department/department.dart';

abstract interface class IDepartmentRepository {
  Future<Either<Failure, Unit>> addDepartment({
    required DepartmentModel department,
  });

  Future<Either<Failure, List<DepartmentModel>>> getAllDepartment();

  Future<Either<Failure, Unit>> updateDepartment({
    required DepartmentModel department,
  });

  Future<Either<Failure, Unit>> deleteDepartment({
    required int departmentId,
  });
}
