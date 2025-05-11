part of 'search_employee_bloc.dart';

@freezed
class SearchEmployeeEvent with _$SearchEmployeeEvent {
  const factory SearchEmployeeEvent.searchEmployee({
    required String query,
  }) = _SearchEmployee;

  const factory SearchEmployeeEvent.resetSearch({
    required int taskId,
    required int departmentId,
  }) = _ResetSearch;

  const factory SearchEmployeeEvent.loadEmployee({
    required int taskId,
    required int departmentId,
  }) = _LoadEmployee;

  const factory SearchEmployeeEvent.addSearchEmployees({
    required List<EmployeeModel> employees,
    required int taskId,
    required int departmentId,
  }) = _AddSearchEmployees;
}
