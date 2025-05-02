part of 'search_employee_bloc.dart';

@freezed
class SearchEmployeeEvent with _$SearchEmployeeEvent {
  const factory SearchEmployeeEvent.search({
    required String query,
  }) = _Search;

  const factory SearchEmployeeEvent.resetSearch() = _ResetSearch;

  const factory SearchEmployeeEvent.updateStateLoading() = _UpdateStateLoading;

  const factory SearchEmployeeEvent.updateStateLoaded({
    required List<EmployeeModel> employees,
  }) = _UpdateStateLoaded;

  const factory SearchEmployeeEvent.updateStateFailure({
    required String message,
  }) = _UpdateStateFailure;
}
