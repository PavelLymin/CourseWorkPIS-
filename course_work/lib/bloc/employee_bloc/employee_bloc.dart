import 'package:bloc/bloc.dart';
import 'package:course_work/domain/models/employee/employee.dart';
import 'package:course_work/domain/repositories/employee_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_bloc.freezed.dart';
part 'employee_event.dart';
part 'employee_state.dart';

class EmployeeBloc extends Bloc<EmployeeEvent, EmployeeState> {
  IEmployeeRepository repository;
  EmployeeBloc({
    required this.repository,
  }) : super(const EmployeeState.loading()) {
    on<EmployeeEvent>((event, emit) async {
      await event.map(
          addEmployee: (event) => _addEmployee(emit, event),
          deleteEmployee: (event) => _deleteEmployee(emit, event),
          updateEmployee: (event) => _updateEmployee(emit, event),
          loadAllEmployees: (_) => _loadAllEmployees(emit),
          loadEmployeeByDepartmentId: (event) =>
              _loadEmployeeByDepartmentId(emit, event));
    });
  }

  Future<void> _addEmployee(
      Emitter<EmployeeState> emit, _AddEmployee event) async {
    emit(EmployeeState.loading());
    final result = await repository.addEmployee(employee: event.employee);
    result.fold(
        (failure) => emit(EmployeeState.failure(message: failure.message)),
        (_) => _loadEmployees(departmentId: event.departmentId));
  }

  Future<void> _deleteEmployee(
      Emitter<EmployeeState> emit, _DeleteEmployee event) async {
    emit(EmployeeState.loading());
    final result =
        await repository.deleteEmployee(employeeId: event.employeeId);
    result.fold(
        (failure) => emit(EmployeeState.failure(message: failure.message)),
        (_) => _loadEmployees(departmentId: event.departmentId));
  }

  Future<void> _updateEmployee(
      Emitter<EmployeeState> emit, _UpdateEmployee event) async {
    emit(EmployeeState.loading());
    final result = await repository.updateEmployee(
        originalEmployee: event.originalEmployee,
        changedEmployee: event.changedEmployee);
    result.fold(
        (failure) => emit(EmployeeState.failure(message: failure.message)),
        (_) => _loadEmployees(departmentId: event.departmentId));
  }

  Future<void> _loadAllEmployees(Emitter<EmployeeState> emit) async {
    final result = await repository.getAllEmployees();
    result.fold(
        (failure) => emit(EmployeeState.failure(message: failure.message)),
        (employees) => emit(EmployeeState.loaded(employees: employees)));
  }

  Future<void> _loadEmployeeByDepartmentId(
      Emitter<EmployeeState> emit, _LoadEmployeeByDepartmentId event) async {
    emit(EmployeeState.loading());
    final result = await repository.getEmployeesByDepartmentId(
        departmentId: event.departmentId);
    result.fold(
        (failure) => emit(EmployeeState.failure(message: failure.message)),
        (employees) => emit(EmployeeState.loaded(employees: employees)));
  }

  void _loadEmployees({required int? departmentId}) {
    if (departmentId != null) {
      add(_LoadEmployeeByDepartmentId(departmentId: departmentId));
    }
    add(_LoadAllEmployees());
  }
}
