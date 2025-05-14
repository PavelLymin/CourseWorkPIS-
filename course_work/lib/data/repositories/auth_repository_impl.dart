import 'package:course_work/core/errors/failure.dart';
import 'package:course_work/core/utils/app_strings.dart';
import 'package:course_work/data/data_base/data_base.dart';
import 'package:course_work/data/dtos/employee_dto.dart';
import 'package:course_work/domain/models/employee/employee.dart';
import 'package:course_work/domain/repositories/auth_repository.dart';
import 'package:drift/drift.dart';
import 'package:fpdart/src/either.dart';
import 'package:fpdart/src/unit.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepositoryImpl implements IAuthRepository {
  AuthRepositoryImpl({required this.database, required this.preferences});
  final AppDatabase database;
  final SharedPreferences preferences;

  @override
  Future<Either<Failure, EmployeeModel>> loginWithEmailPassword(
      {required String email, required String password}) async {
    try {
      final result = await (database.select(database.employees)
            ..where((employee) => (employee.email.equals(email) &
                employee.password.equals(password))))
          .get();

      if (result.isEmpty) {
        return left(Failure(message: AppStrings.notFoundEmployee));
      }

      final employee = EmployeeDto.fromDataBase(result.single).toDomain();

      preferences.setInt('id', employee.id!);
      preferences.setString('role', employee.role.value);
      preferences.setInt('departmentId', employee.departmentId);

      return right(employee);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  @override
  Either<Failure, Unit> logOut() {
    try {
      preferences.clear();

      return right(unit);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }
}
