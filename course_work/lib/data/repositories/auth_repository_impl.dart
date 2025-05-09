import 'package:course_work/core/errors/failure.dart';
import 'package:course_work/core/utils/app_strings.dart';
import 'package:course_work/data/data_base/data_base.dart';
import 'package:course_work/data/dtos/employee_dto/employee_dto.dart';
import 'package:course_work/domain/models/employee/employee.dart';
import 'package:course_work/domain/repositories/auth_repository.dart';
import 'package:fpdart/src/either.dart';

class AuthRepositoryImpl implements IAuthRepository {
  AuthRepositoryImpl({required this.database});
  final AppDatabase database;

  @override
  Future<Either<Failure, EmployeeModel>> loginWithEmailPassword(
      {required String email, required String password}) async {
    try {
      final result = await (database.select(database.employees)
            ..where((employee) => employee.email.equals(email)))
          .getSingle();

      if (result.toString().isEmpty) {
        return left(Failure(message: AppStrings.notFoundEmployee));
      }

      final employee = EmployeeDto.fromDataBase(result).toDomain();

      return right(employee);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }
}
