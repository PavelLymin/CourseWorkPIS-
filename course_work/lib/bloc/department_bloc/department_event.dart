part of 'department_bloc.dart';

@freezed
class DepartmentEvent with _$DepartmentEvent {
  const factory DepartmentEvent.addDepartment({
    required DepartmentModel department,
  }) = _AddDepartment;

  const factory DepartmentEvent.loadDepartments() = _LoadDepartments;

  const factory DepartmentEvent.updateDepartment({
    required DepartmentModel department,
  }) = _UpdateDepartment;

  const factory DepartmentEvent.deleteDepartment({
    required int departmentId,
  }) = _DeleteDepartment;
}
