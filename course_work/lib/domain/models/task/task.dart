import 'package:course_work/domain/enums/status_task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';

@freezed
class TaskModel with _$TaskModel {
  const factory TaskModel({
    int? id,
    required String title,
    required String description,
    required int amountOfHours,
    required double payment,
    required DateTime date,
    required DateTime startTime,
    required DateTime finishTime,
    @Default(Status.notIssued) Status status,
  }) = _TaskModel;
}
