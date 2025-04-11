import 'package:bloc/bloc.dart';
import 'package:course_work/domain/repositories/department_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/department/department.dart';

part 'department_bloc.freezed.dart';
part 'department_event.dart';
part 'department_state.dart';

class DepartmentBloc extends Bloc<DepartmentEvent, DepartmentState> {
  IDepartmentRepository repository;

  DepartmentBloc({required this.repository})
      : super(const DepartmentState.loading()) {
    on<DepartmentEvent>((event, emit) async {
      await event.map(
        addDepartment: (event) => _addDepartment(emit, event),
        loadDepartments: (event) => _loadDepartments(emit, event),
        updateDepartment: (event) => _updateDepartment(emit, event),
        deleteDepartment: (event) => _deleteDepartment(emit, event),
      );
    });
  }

  Future<void> _addDepartment(
      Emitter<DepartmentState> emit, _AddDepartment event) async {
    emit(DepartmentState.loading());

    final result = await repository.addDepartment(department: event.department);

    result.fold(
      (failure) => emit(DepartmentState.failure(message: failure.message)),
      (_) => add(_LoadDepartments()),
    );
  }

  Future<void> _loadDepartments(
      Emitter<DepartmentState> emit, _LoadDepartments event) async {
    final result = await repository.getAllDepartment();

    result.fold(
      (failure) => emit(DepartmentState.failure(message: failure.message)),
      (departments) => emit(DepartmentState.load(departments: departments)),
    );
  }

  Future<void> _updateDepartment(
      Emitter<DepartmentState> emit, _UpdateDepartment event) async {
    emit(DepartmentState.loading());

    final result =
        await repository.updateDepartment(department: event.department);

    result.fold(
      (failure) => emit(DepartmentState.failure(message: failure.message)),
      (departments) => add(_LoadDepartments()),
    );
  }

  Future<void> _deleteDepartment(
      Emitter<DepartmentState> emit, _DeleteDepartment event) async {
    final result =
        await repository.deleteDepartment(departmentId: event.departmentId);

    result.fold(
      (failure) => emit(DepartmentState.failure(message: failure.message)),
      (departments) => add(_LoadDepartments()),
    );
  }
}
