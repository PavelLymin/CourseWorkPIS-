part of 'employee_bloc.dart';

@freezed
class EmployeeState with _$EmployeeState {
  const factory EmployeeState.loading() = _Loading;
  const factory EmployeeState.loaded({required List<EmployeeModel> employees}) =
      _Loaded;
  const factory EmployeeState.failure({required String message}) = _Failure;
}
