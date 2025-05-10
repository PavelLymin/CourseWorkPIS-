part of 'department_search_bloc.dart';

@freezed
class DepartmentSearchState with _$DepartmentSearchState {
  const factory DepartmentSearchState.loading() = _Loading;

  const factory DepartmentSearchState.loaded({
    required List<DepartmentModel> employees,
  }) = _loaded;

  const factory DepartmentSearchState.failure({
    required String message,
  }) = _Failure;
}
