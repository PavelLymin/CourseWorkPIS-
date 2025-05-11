import 'package:course_work/domain/models/employee/employee.dart';
import 'package:fpdart/fpdart.dart';

import '../../core/errors/failure.dart';

abstract interface class IAuthRepository {
  Future<Either<Failure, EmployeeModel>> loginWithEmailPassword(
      {required String email, required String password});

  Either<Failure, Unit> logOut();
}
