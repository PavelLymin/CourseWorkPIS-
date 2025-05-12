import 'package:fpdart/fpdart.dart';

import '../../core/errors/failure.dart';
import '../models/employee/employee.dart';
import '../models/participation/participation.dart';

abstract interface class IParticipationRepository {
  Future<Either<Failure, List<ParticipationModel>>> getParticipation({
    required int departmentId,
  });

  Future<Either<Failure, Unit>> addParticipation({
    required List<EmployeeModel> employees,
    required int taskId,
  });
}
