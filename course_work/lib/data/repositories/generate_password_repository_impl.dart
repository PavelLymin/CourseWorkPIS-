import 'dart:math';

import 'package:course_work/core/errors/failure.dart';
import 'package:course_work/data/data_base/data_base.dart';
import 'package:course_work/domain/repositories/generate_password_repository.dart';
import 'package:fpdart/src/either.dart';

class GeneratePasswordRepositoryImpl implements IGeneratePasswordRepository {
  GeneratePasswordRepositoryImpl({required this.database});
  final AppDatabase database;

  @override
  String generatePassword({required int numberOfCharacters}) {
    final letters = 'abcdefghijklmnoqprstuvwyzxABCDEFGHIJKLMNOQPRSTUYWVZX';
    final symbols = '!@#_^&*?()';
    final numbers = '0123456789';

    final allChars = '$letters$symbols$numbers';

    final random = Random.secure();

    final result = List.generate(numberOfCharacters, (index) {
      return allChars[random.nextInt(allChars.length)];
    }).join();

    return result;
  }

  @override
  Future<Either<Failure, bool>> checkUniquenessPassword(
      {required String password}) async {
    try {
      final result = await (database.select(database.employees)
            ..addColumns([database.employees.password])
            ..where((row) => row.password.equals(password)))
          .get();

      if (result.contains(password)) {
        return right(false);
      }
      return right(true);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }
}
