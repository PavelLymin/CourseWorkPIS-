part of 'search_employee_bloc.dart';

@freezed
class SearchEmployeeState with _$SearchEmployeeState {
  const factory SearchEmployeeState.loading() = _Loading;

  const factory SearchEmployeeState.loaded({
    required List<EmployeeModel> employees,
  }) = _loaded;

  const factory SearchEmployeeState.failure({
    required String message,
  }) = _Failure;
}
