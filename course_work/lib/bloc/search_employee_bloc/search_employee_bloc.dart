import 'package:bloc/bloc.dart';
import 'package:course_work/domain/models/employee/employee.dart';
import 'package:course_work/domain/repositories/search_employee_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_employee_bloc.freezed.dart';
part 'search_employee_event.dart';
part 'search_employee_state.dart';

class SearchEmployeeBloc
    extends Bloc<SearchEmployeeEvent, SearchEmployeeState> {
  final ISearchEmployeeRepository _repository;

  SearchEmployeeBloc({
    required ISearchEmployeeRepository repository,
  })  : _repository = repository,
        super(const SearchEmployeeState.loading()) {
    on<SearchEmployeeEvent>((event, emit) async {
      await event.map(
        loadEmployee: (event) => _loadEmployee(emit, event),
        searchEmployee: (event) => _searchEmployee(emit, event),
        resetSearch: (event) => _resetSearch(emit, event),
      );
    });
  }
  Future<void> _loadEmployee(
      Emitter<SearchEmployeeState> emit, _LoadEmployee event) async {
    final result = await _repository.getEmployeesWithoutParticipation(
        taskId: event.taskId, departmentId: event.departmentId);

    result.fold(
        (failure) =>
            emit(SearchEmployeeState.failure(message: failure.message)),
        (employees) => emit(SearchEmployeeState.loaded(employees: employees)));
  }

  Future<void> _searchEmployee(
      Emitter<SearchEmployeeState> emit, _SearchEmployee event) async {
    emit(SearchEmployeeState.loading());

    final result = _repository.searchEmployee(query: event.query);

    result.fold(
        (failure) =>
            emit(SearchEmployeeState.failure(message: failure.message)),
        (employees) => emit(SearchEmployeeState.loaded(employees: employees)));
  }

  Future<void> _resetSearch(
      Emitter<SearchEmployeeState> emit, _ResetSearch event) async {
    emit(SearchEmployeeState.loading());

    add(_LoadEmployee(
      taskId: event.taskId,
      departmentId: event.departmentId,
    ));
  }
}
