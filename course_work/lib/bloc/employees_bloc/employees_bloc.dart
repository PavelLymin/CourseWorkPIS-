import 'package:bloc/bloc.dart';
import 'package:course_work/domain/models/employee/employee.dart';
import 'package:course_work/domain/repositories/employee_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employees_bloc.freezed.dart';
part 'employees_event.dart';
part 'employees_state.dart';

class EmployeesBloc extends Bloc<EmployeesEvent, EmployeesState> {
  IEmployeeRepository repository;
  EmployeesBloc({
    required this.repository,
  }) : super(const EmployeesState.loading()) {
    on<EmployeesEvent>((event, emit) async {
      await event.map(
          addEmployee: (event) => _addEmployee(emit, event),
          deleteEmployee: (event) => _deleteEmployee(emit, event),
          updateEmployee: (event) => _updateEmployee(emit, event),
          loadAllEmployees: (_) => _loadAllEmployees(emit),
          loadEmployeesByDepartmentId: (event) =>
              _loadEmployeesByDepartmentId(emit, event));
    });
  }

  Future<void> _addEmployee(
      Emitter<EmployeesState> emit, _AddEmployee event) async {
    emit(EmployeesState.loading());
    final result = await repository.addEmployee(employee: event.employee);
    result.fold(
        (failure) => emit(EmployeesState.failure(message: failure.message)),
        (_) => _loadEmployees(departmentId: event.departmentId));
  }

  Future<void> _deleteEmployee(
      Emitter<EmployeesState> emit, _DeleteEmployee event) async {
    emit(EmployeesState.loading());
    final result =
        await repository.deleteEmployee(employeeId: event.employeeId);
    result.fold(
        (failure) => emit(EmployeesState.failure(message: failure.message)),
        (_) => _loadEmployees(departmentId: event.departmentId));
  }

  Future<void> _updateEmployee(
      Emitter<EmployeesState> emit, _UpdateEmployee event) async {
    emit(EmployeesState.loading());
    final result = await repository.updateEmployee(
        originalEmployee: event.originalEmployee,
        changedEmployee: event.changedEmployee);
    result.fold(
        (failure) => emit(EmployeesState.failure(message: failure.message)),
        (_) => _loadEmployees(departmentId: event.departmentId));
  }

  Future<void> _loadAllEmployees(Emitter<EmployeesState> emit) async {
    final result = await repository.getAllEmployees();
    result.fold(
        (failure) => emit(EmployeesState.failure(message: failure.message)),
        (employees) =>
            emit(EmployeesState.loadedEmployees(employees: employees)));
  }

  Future<void> _loadEmployeesByDepartmentId(
      Emitter<EmployeesState> emit, _LoadEmployeesByDepartmentId event) async {
    emit(EmployeesState.loading());
    final result = await repository.getEmployeesByDepartmentId(
        departmentId: event.departmentId);
    result.fold(
        (failure) => emit(EmployeesState.failure(message: failure.message)),
        (employees) =>
            emit(EmployeesState.loadedEmployees(employees: employees)));
  }

  void _loadEmployees({required int? departmentId}) {
    if (departmentId != null) {
      add(_LoadEmployeesByDepartmentId(departmentId: departmentId));
    }
    add(_LoadAllEmployees());
  }
}
