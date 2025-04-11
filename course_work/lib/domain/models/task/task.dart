import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';

@freezed
class TaskModel with _$TaskModel {
  const factory TaskModel({
    required int? id,
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

enum Priority {
  high('Высокий'),
  medium('Средний'),
  low('Низкий'),
  none('Без приоритета');

  const Priority(this.value);
  final String value;
}
