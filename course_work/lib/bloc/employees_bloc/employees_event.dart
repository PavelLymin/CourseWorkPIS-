part of 'employees_bloc.dart';

@freezed
class EmployeesEvent with _$EmployeesEvent {
  const factory EmployeesEvent.addEmployee({
    required EmployeeModel employee,
    required int departmentId,
  }) = _AddEmployee;

  const factory EmployeesEvent.deleteEmployee({
    required int employeeId,
    required int departmentId,
  }) = _DeleteEmployee;

  const factory EmployeesEvent.updateEmployee({
    required EmployeeModel originalEmployee,
    required EmployeeModel changedEmployee,
    required int departmentId,
  }) = _UpdateEmployee;

  const factory EmployeesEvent.loadEmployeesByDepartmentId({
    required int departmentId,
  }) = _LoadEmployeesByDepartmentId;

  const factory EmployeesEvent.loadAllEmployees() = _LoadAllEmployees;

  const factory EmployeesEvent.loadEmployeeFromParticipation({
    required int? participationId,
  }) = _LoadEmployeeFromParticipation;
}
