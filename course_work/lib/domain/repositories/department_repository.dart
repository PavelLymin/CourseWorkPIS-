import 'package:course_work/core/errors/failure.dart';
import 'package:fpdart/fpdart.dart';

import '../models/department.dart';

abstract interface class IDepartmentRepository {
  Future<Either<Failure, Unit>> addDepartment({
    required Department department,
  });

  Future<Either<Failure, List<Department>>> getAllDepartment();

  Future<Either<Failure, Unit>> updateDepartment({
    required Department department,
  });

  Future<Either<Failure, Unit>> deleteDepartment({
    required String id,
  });
}
