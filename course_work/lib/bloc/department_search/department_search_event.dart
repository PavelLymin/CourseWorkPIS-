part of 'department_search_bloc.dart';

@freezed
class DepartmentSearchEvent with _$DepartmentSearchEvent {
  const factory DepartmentSearchEvent.searchDepartment({
    required String query,
  }) = _SearchDepartment;

  const factory DepartmentSearchEvent.resetSearch() = _ResetSearch;

  const factory DepartmentSearchEvent.updateStateLoading() =
      _UpdateStateLoading;

  const factory DepartmentSearchEvent.updateStateLoaded({
    required List<DepartmentModel> employees,
  }) = _UpdateStateLoaded;

  const factory DepartmentSearchEvent.updateStateFailure({
    required String message,
  }) = _UpdateStateFailure;
}
