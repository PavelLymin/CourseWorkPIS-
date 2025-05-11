import 'package:bloc/bloc.dart';
import 'package:course_work/domain/repositories/employee_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/models/employee/employee.dart';

part 'current_employee_bloc.freezed.dart';
part 'current_employee_event.dart';
part 'current_employee_state.dart';

class CurrentEmployeeBloc
    extends Bloc<CurrentEmployeeEvent, CurrentEmployeeState> {
  final IEmployeeRepository _repository;
  CurrentEmployeeBloc({required IEmployeeRepository repository})
      : _repository = repository,
        super(const CurrentEmployeeState.loading()) {
    on<CurrentEmployeeEvent>((event, emit) async {
      await event.map(
          loadEmployee: (_) => _loadEmployee(emit),
          updateEmployee: (event) => _updateEmployee(event, emit));
    });
  }

  Future<void> _loadEmployee(Emitter<CurrentEmployeeState> emit) async {
    final result = await _repository.getEmployee();

    result.fold(
        (failure) =>
            emit(CurrentEmployeeState.failure(message: failure.message)),
        (employee) => emit(CurrentEmployeeState.loaded(employee: employee)));
  }

  Future<void> _updateEmployee(
      _UpdateEmployee event, Emitter<CurrentEmployeeState> emit) async {
    emit(CurrentEmployeeState.loading());

    final result = await _repository.updateEmployee(
        originalEmployee: event.originalEmployee,
        changedEmployee: event.changedEmployee);

    result.fold(
        (failure) =>
            emit(CurrentEmployeeState.failure(message: failure.message)),
        (_) => add(_LoadEmployee()));
  }
}
