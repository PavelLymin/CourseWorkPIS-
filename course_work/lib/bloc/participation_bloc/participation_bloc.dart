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

  ParticipationBloc({required IParticipationRepository repository})
      : _repository = repository,
        super(const ParticipationState.loading()) {
    on<ParticipationEvent>((event, emit) async {
      await event.map(
        loadParticipation: (event) => _loadParticipation(emit, event),
        addParticipation: (event) => _addParticipation(emit, event),
      );
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
        final filtered = _filteringParticipation(participation, event);
        emit(ParticipationState.loadedParticipation(participation: filtered));
      },
    );
  }

  List<ParticipationModel> _filteringParticipation(
      List<ParticipationModel> participation, _LoadParticipation event) {
    return participation.where((participation) {
      final date = participation.task.date;
      final dateEvent = event.date;
      return (date.day == dateEvent.day &&
          date.weekday == dateEvent.weekday &&
          date.month == dateEvent.month);
    }).toList();
  }

  Future<void> _addParticipation(
      Emitter<ParticipationState> emit, _AddParticipation event) async {
    emit(ParticipationState.loading());

    final result = await _repository.addParticipation(
        employees: event.employees, taskId: event.taskId);

    result.fold(
      (failure) => emit(ParticipationState.failure(message: failure.message)),
      (_) => add(
        _LoadParticipation(departmentId: event.departmentId, date: event.date),
      ),
    );
  }
}
