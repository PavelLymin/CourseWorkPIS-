import 'package:bloc/bloc.dart';
import 'package:course_work/domain/repositories/generate_password_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generate_password_cubit.freezed.dart';
part 'generate_password_state.dart';

class GeneratePasswordCubit extends Cubit<GeneratePasswordState> {
  IGeneratePasswordRepository repository;
  static const int _maxAttempts = 10;

  GeneratePasswordCubit({required this.repository})
      : super(const GeneratePasswordState.loading());

  Future<void> generatePassword() async {
    int numberOfCharacters = 8;
    int attempts = 0;
    while (attempts < _maxAttempts) {
      attempts++;
      final candidate =
          repository.generatePassword(numberOfCharacters: numberOfCharacters);
      final result =
          await repository.checkUniquenessPassword(password: candidate);

      if (result.isLeft()) return;
      if (result.isRight()) {
        emit(GeneratePasswordState.loaded(password: candidate));
        return;
      }
    }
    emit(GeneratePasswordState.failure(
        message: 'Не удалось сгенерировать пароль. Попробуйте позже'));
  }
}
