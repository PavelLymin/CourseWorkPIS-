part of 'participation_bloc.dart';

@freezed
class ParticipationEvent with _$ParticipationEvent {
  const factory ParticipationEvent.loadParticipation({
    required int departmentId,
    required DateTime date,
  }) = _LoadParticipation;

  const factory ParticipationEvent.addParticipation({
    required List<EmployeeModel> employees,
    required int taskId,
    required int departmentId,
    required DateTime date,
  }) = _AddParticipation;
}
