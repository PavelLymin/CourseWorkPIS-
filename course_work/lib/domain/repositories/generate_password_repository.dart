import 'package:course_work/core/errors/failure.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class IGeneratePasswordRepository {
  String generatePassword({
    required int numberOfCharacters,
  });

  Future<Either<Failure, bool>> checkUniquenessPassword({
    required String password,
  });
}
