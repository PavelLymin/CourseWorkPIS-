import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:course_work/domain/models/employee/employee.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../employee_bloc/employee_bloc.dart';

part 'search_employee_bloc.freezed.dart';
part 'search_employee_event.dart';
part 'search_employee_state.dart';

class SearchEmployeeBloc
    extends Bloc<SearchEmployeeEvent, SearchEmployeeState> {
  late StreamSubscription<EmployeeState> _subscription;
  List<EmployeeModel> _allEmployees = [];
  List<EmployeeModel> _filteredEmployees = [];

  SearchEmployeeBloc({
    required Stream<EmployeeState> stream,
  }) : super(const SearchEmployeeState.loading()) {
    _subscription = stream.listen((state) {
      state.map(
          loading: (_) => add(SearchEmployeeEvent.updateStateLoading()),
          loaded: (state) => add(SearchEmployeeEvent.updateStateLoaded(
              employees: state.employees)),
          failure: (state) => add(
              SearchEmployeeEvent.updateStateFailure(message: state.message)));
    });

    on<SearchEmployeeEvent>((event, emit) async {
      event.map(
          searchEmployee: (event) async => await _search(emit, event),
          resetSearch: (_) => _resetSearch(emit),
          updateStateLoading: (_) => _updateStateLoading(emit),
          updateStateLoaded: (event) => _updateStateLoaded(emit, event),
          updateStateFailure: (event) => _updateStateFailure(emit, event));
    });
  }

  Future<void> _search(
      Emitter<SearchEmployeeState> emit, _SearchEmployee event) async {
    emit(SearchEmployeeState.loading());
    final queryToLowerCase = event.query.toLowerCase();

    _filteredEmployees = _allEmployees
        .where((employee) => (employee.firstName.contains(queryToLowerCase) ||
            employee.lastName.contains(queryToLowerCase)))
        .toList();

    emit(SearchEmployeeState.loaded(employees: _filteredEmployees));
  }

  void _resetSearch(Emitter<SearchEmployeeState> emit) {
    emit(SearchEmployeeState.loaded(employees: _allEmployees));
  }

  void _updateStateLoading(Emitter<SearchEmployeeState> emit) {
    emit(SearchEmployeeState.loading());
  }

  void _updateStateLoaded(
      Emitter<SearchEmployeeState> emit, _UpdateStateLoaded event) {
    _allEmployees = event.employees;
    emit(SearchEmployeeState.loaded(employees: _allEmployees));
  }

  void _updateStateFailure(
      Emitter<SearchEmployeeState> emit, _UpdateStateFailure event) {
    emit(SearchEmployeeState.failure(message: event.message));
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
