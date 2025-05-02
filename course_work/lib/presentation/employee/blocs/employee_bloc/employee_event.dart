part of 'employee_bloc.dart';

@freezed
class EmployeeEvent with _$EmployeeEvent {
  const factory EmployeeEvent.addEmployee({
    required EmployeeModel employee,
    int? departmentId,
  }) = _AddEmployee;

  const factory EmployeeEvent.deleteEmployee({
    required int employeeId,
    int? departmentId,
  }) = _DeleteEmployee;

  const factory EmployeeEvent.updateEmployee({
    required EmployeeModel originalEmployee,
    required EmployeeModel changedEmployee,
    int? departmentId,
  }) = _UpdateEmployee;

  const factory EmployeeEvent.loadEmployeeByDepartmentId({
    required int departmentId,
  }) = _LoadEmployeeByDepartmentId;

  const factory EmployeeEvent.loadAllEmployees() = _LoadAllEmployees;
}
