import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:course_work/domain/models/department/department.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../department_bloc/department_bloc.dart';

part 'department_search_bloc.freezed.dart';
part 'department_search_event.dart';
part 'department_search_state.dart';

class DepartmentSearchBloc
    extends Bloc<DepartmentSearchEvent, DepartmentSearchState> {
  late StreamSubscription<DepartmentState> _subscription;
  List<DepartmentModel> _allDepartments = [];
  List<DepartmentModel> _filteredDepartments = [];

  DepartmentSearchBloc({
    required Stream<DepartmentState> stream,
  }) : super(const DepartmentSearchState.loading()) {
    _subscription = stream.listen((state) {
      state.map(
          loading: (_) => add(DepartmentSearchEvent.updateStateLoading()),
          load: (state) => add(DepartmentSearchEvent.updateStateLoaded(
              employees: state.departments)),
          failure: (state) => add(DepartmentSearchEvent.updateStateFailure(
              message: state.message)));
    });

    on<DepartmentSearchEvent>((event, emit) {
      event.map(
          searchDepartment: (event) => _searchDepartment(emit, event),
          resetSearch: (_) => _resetSearch(emit),
          updateStateLoading: (_) => _updateStateLoading(emit),
          updateStateLoaded: (event) => _updateStateLoaded(emit, event),
          updateStateFailure: (event) => _updateStateFailure(emit, event));
    });
  }

  Future<void> _searchDepartment(
      Emitter<DepartmentSearchState> emit, _SearchDepartment event) async {
    emit(DepartmentSearchState.loading());
    final queryToLowerCase = event.query.toLowerCase();

    _filteredDepartments = _allDepartments
        .where((department) => (department.title.contains(queryToLowerCase) ||
            department.title.contains(queryToLowerCase)))
        .toList();

    emit(DepartmentSearchState.loaded(employees: _filteredDepartments));
  }

  Future<void> _resetSearch(Emitter<DepartmentSearchState> emit) async {
    emit(DepartmentSearchState.loaded(employees: _allDepartments));
  }

  Future<void> _updateStateLoading(Emitter<DepartmentSearchState> emit) async {
    emit(DepartmentSearchState.loading());
  }

  Future<void> _updateStateLoaded(
      Emitter<DepartmentSearchState> emit, _UpdateStateLoaded event) async {
    _allDepartments = event.employees;
    emit(DepartmentSearchState.loaded(employees: _allDepartments));
  }

  Future<void> _updateStateFailure(
      Emitter<DepartmentSearchState> emit, _UpdateStateFailure event) async {
    emit(DepartmentSearchState.failure(message: event.message));
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
