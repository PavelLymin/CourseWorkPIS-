import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';

@freezed
class Task with _$Task {
  const factory Task({
    required String? id,
    required String title,
    required String description,
    required int amountOfHours,
    required double payment,
    required DateTime startDate,
    required DateTime finishDate,
    @Default(Priority.none) Priority priority,
  }) = _Task;
}

enum Priority {
  high('Высокий'),
  medium('Средний'),
  low('Низкий'),
  none('Без приоритета');

  const Priority(this.value);
  final String value;
}
