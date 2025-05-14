part of 'participation_bloc.dart';

@freezed
class ParticipationEvent with _$ParticipationEvent {
  const factory ParticipationEvent.loadParticipation({
    required int departmentId,
    DateTime? date,
  }) = _LoadParticipation;

  const factory ParticipationEvent.loadParticipationForEmployee({
    required int departmentId,
    required int employeeId,
  }) = _LoadParticipationForEmployee;

  const factory ParticipationEvent.loadFilteredParticipation({
    required int departmentId,
    required String status,
  }) = _LoadFilteredParticipation;

  const factory ParticipationEvent.loadFilteredParticipationForEmployee({
    required int departmentId,
    required int employeeId,
    required String status,
  }) = _LoadFilteredParticipationForEmployee;

  const factory ParticipationEvent.addParticipation({
    required List<EmployeeModel> employees,
    required int taskId,
    required int departmentId,
    String? status,
    DateTime? date,
  }) = _AddParticipation;
}
