part of 'current_employee_bloc.dart';

@freezed
class CurrentEmployeeEvent with _$CurrentEmployeeEvent {
  const factory CurrentEmployeeEvent.loadEmployee() = _LoadEmployee;

  const factory CurrentEmployeeEvent.updateEmployee({
    required EmployeeModel originalEmployee,
    required EmployeeModel changedEmployee,
  }) = _UpdateEmployee;
}
