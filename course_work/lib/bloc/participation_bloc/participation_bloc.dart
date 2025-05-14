import 'package:bloc/bloc.dart';
import 'package:course_work/domain/models/participation/participation.dart';
import 'package:course_work/domain/repositories/participation_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/models/employee/employee.dart';

part 'participation_bloc.freezed.dart';
part 'participation_event.dart';
part 'participation_state.dart';

class ParticipationBloc extends Bloc<ParticipationEvent, ParticipationState> {
  final IParticipationRepository _repository;
  List<ParticipationModel> _allParticipation = [];

  ParticipationBloc({required IParticipationRepository repository})
      : _repository = repository,
        super(const ParticipationState.loading()) {
    on<ParticipationEvent>((event, emit) async {
      await event.map(
          loadParticipation: (event) => _loadParticipation(emit, event),
          loadParticipationForEmployee: (event) =>
              _loadParticipationForEmployee(emit, event),
          loadFilteredParticipationForEmployee: (event) =>
              _loadFilteredParticipationForEmployee(emit, event),
          loadFilteredParticipation: (event) =>
              _loadFilteredParticipation(emit, event),
          addParticipation: (event) => _addParticipation(emit, event));
    });
  }

  Future<void> _loadParticipation(
      Emitter<ParticipationState> emit, _LoadParticipation event) async {
    emit(ParticipationState.loading());
    final result =
        await _repository.getParticipation(departmentId: event.departmentId);

    result.fold(
      (failure) => emit(ParticipationState.failure(message: failure.message)),
      (participation) {
        if (event.date != null) {
          final filtered = _filteringParticipation(participation, event);
          emit(ParticipationState.loadedParticipation(participation: filtered));
        } else {
          emit(ParticipationState.loadedParticipation(
              participation: participation));
        }
      },
    );
  }

  List<ParticipationModel> _filteringParticipation(
      List<ParticipationModel> participation, _LoadParticipation event) {
    return participation.where((participation) {
      final date = participation.task.date;
      final dateEvent = event.date!;
      return (date.day == dateEvent.day &&
          date.weekday == dateEvent.weekday &&
          date.month == dateEvent.month);
    }).toList();
  }

  Future<void> _loadFilteredParticipation(Emitter<ParticipationState> emit,
      _LoadFilteredParticipation event) async {
    emit(ParticipationState.loading());

    final result =
        await _repository.getParticipation(departmentId: event.departmentId);

    result.fold(
      (failure) => emit(ParticipationState.failure(message: failure.message)),
      (participation) {
        final status = event.status;
        if (status == 'Все') {
          emit(ParticipationState.loadedParticipation(
              participation: participation));
        } else {
          final filtered = participation
              .where(
                  (participation) => participation.task.status.value == status)
              .toList();
          emit(ParticipationState.loadedParticipation(participation: filtered));
        }
      },
    );
  }

  Future<void> _loadParticipationForEmployee(Emitter<ParticipationState> emit,
      _LoadParticipationForEmployee event) async {
    emit(ParticipationState.loading());

    final result =
        await _repository.getParticipation(departmentId: event.departmentId);

    result.fold(
      (failure) => emit(ParticipationState.failure(message: failure.message)),
      (participation) {
        _allParticipation = participation
            .where((participation) => participation.employees
                .any((employee) => employee.id == event.employeeId))
            .map((participation) => ParticipationModel(
                task: participation.task, employees: participation.employees))
            .toList();

        emit(ParticipationState.loadedParticipation(
            participation: _allParticipation));
      },
    );
  }

  Future<void> _addParticipation(
      Emitter<ParticipationState> emit, _AddParticipation event) async {
    emit(ParticipationState.loading());

    final result = await _repository.addParticipation(
        employees: event.employees, taskId: event.taskId);

    result.fold(
        (failure) => emit(ParticipationState.failure(message: failure.message)),
        (_) {
      add(_LoadParticipation(
          departmentId: event.departmentId, date: event.date));
      if (event.status != null) {
        add(_LoadFilteredParticipation(
            departmentId: event.departmentId, status: event.status!));
      }
    });
  }

  Future<void> _loadFilteredParticipationForEmployee(
      Emitter<ParticipationState> emit,
      _LoadFilteredParticipationForEmployee event) async {
    emit(ParticipationState.loading());

    if (event.status == 'Все') {
      add(_LoadParticipationForEmployee(
          departmentId: event.departmentId, employeeId: event.departmentId));
    } else {
      final filtered = _allParticipation
          .where((participation) =>
              participation.task.status.value == event.status)
          .toList();
      emit(ParticipationState.loadedParticipation(participation: filtered));
    }
  }
}
