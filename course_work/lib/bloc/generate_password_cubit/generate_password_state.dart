part of 'generate_password_cubit.dart';

@freezed
class GeneratePasswordState with _$GeneratePasswordState {
  const factory GeneratePasswordState.loading() = _Loading;

  const factory GeneratePasswordState.loaded({
    required String password,
  }) = _Loaded;

  const factory GeneratePasswordState.failure({
    required String message,
  }) = _Failure;
}
