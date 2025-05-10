import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enums/status_task.dart';

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
    @Default(Priority.none) Priority priority,
  }) = _TaskModel;
}
