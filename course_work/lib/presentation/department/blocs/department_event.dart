part of 'department_bloc.dart';

@freezed
class DepartmentEvent with _$DepartmentEvent {
  const factory DepartmentEvent.addDepartment({
    required Department department,
  }) = _AddDepartment;

  const factory DepartmentEvent.loadDepartments() = _LoadDepartments;

  const factory DepartmentEvent.updateDepartment({
    required Department department,
  }) = _UpdateDepartment;

  const factory DepartmentEvent.deleteDepartment({
    required String id,
  }) = _DeleteDepartment;
}
