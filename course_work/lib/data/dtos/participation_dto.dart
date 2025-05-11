import 'package:course_work/data/data_base/data_base.dart';
import 'package:drift/drift.dart';

class ParticipationDto {
  ParticipationDto({
    required this.taskId,
    required this.employeeId,
  });

  final int taskId;
  final int employeeId;

  factory ParticipationDto.toDto(int taskId, int employeeId) =>
      ParticipationDto(
        taskId: taskId,
        employeeId: employeeId,
      );

  ParticipationCompanion toDataBase() => ParticipationCompanion(
        taskId: Value(taskId),
        employeeId: Value(employeeId),
      );

  factory ParticipationDto.fromDataBase(ParticipationData object) =>
      ParticipationDto(
        taskId: object.taskId,
        employeeId: object.employeeId,
      );
}
