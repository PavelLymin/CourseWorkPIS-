import 'package:course_work/domain/models/task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_dto.freezed.dart';
part 'task_dto.g.dart';

@freezed
class TaskDto with _$TaskDto {
  const TaskDto._();

  factory TaskDto({
    required String? id,
    required String title,
    required String description,
    @JsonKey(name: 'amount_of_hours') required int amountOfHours,
    required double price,
    @JsonKey(name: 'start_date') required DateTime startDate,
    @JsonKey(name: 'finish_date') required DateTime finishDate,
    required String priority,
  }) = _TaskDto;

  Task toDomain() => Task(
        id: id,
        title: title,
        description: description,
        amountOfHours: amountOfHours,
        price: price,
        priority: getPriority(priority),
        startDate: startDate,
        finishDate: finishDate,
      );

  factory TaskDto.fromDomain(Task object) => TaskDto(
        id: object.id,
        title: object.title,
        description: object.description,
        amountOfHours: object.amountOfHours,
        price: object.price,
        priority: object.priority.value,
        startDate: object.startDate,
        finishDate: object.finishDate,
      );

  factory TaskDto.fromJson(Map<String, dynamic> json) =>
      _$TaskDtoFromJson(json);

  Priority getPriority(String priority) {
    return Priority.values.firstWhere(
      (item) => item.value == priority,
      orElse: () => Priority.none,
    );
  }
}
