part of 'current_employee_bloc.dart';

@freezed
class CurrentEmployeeState with _$CurrentEmployeeState {
  const factory CurrentEmployeeState.loading() = _Loading;

  const factory CurrentEmployeeState.loaded({
    required EmployeeModel employee,
  }) = _Loaded;

  const factory CurrentEmployeeState.failure({
    required String message,
  }) = _Failure;
}
