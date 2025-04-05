part of 'department_bloc.dart';

@freezed
class DepartmentState with _$DepartmentState {
  const factory DepartmentState.loading() = _Loading;

  const factory DepartmentState.load({
    required List<Department> departments,
  }) = _Load;

  const factory DepartmentState.failure({
    required String message,
  }) = _Failure;
}
