part of 'employees_bloc.dart';

@freezed
class EmployeesState with _$EmployeesState {
  const factory EmployeesState.loading() = _Loading;

  const factory EmployeesState.loadedEmployees({
    required List<EmployeeModel> employees,
  }) = _LoadedEmployees;

  const factory EmployeesState.failure({required String message}) = _Failure;
}
