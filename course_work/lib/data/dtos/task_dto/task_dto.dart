import 'package:course_work/domain/models/task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_dto.g.dart';

@JsonSerializable()
class TaskDto {
  TaskDto({
    this.id,
    required this.title,
    required this.description,
    required this.amountOfHours,
    required this.price,
    required this.priority,
    required this.startDate,
    required this.finishDate,
  });

  final String? id;
  final String title;
  final String description;
  @JsonKey(name: 'amount_of_hours')
  final int amountOfHours;
  final double price;
  @JsonKey(
    name: 'priority',
    toJson: _toJsonPriority,
    fromJson: _fromJsonPriority,
  )
  final Priority priority;
  @JsonKey(name: 'start_date')
  final DateTime startDate;
  @JsonKey(name: 'finish_date')
  final DateTime finishDate;

  Task toDomain() => Task(
        id: id,
        title: title,
        description: description,
        amountOfHours: amountOfHours,
        price: price,
        priority: priority,
        startDate: startDate,
        finishDate: finishDate,
      );

  factory TaskDto.fromDomain(Task object) => TaskDto(
        id: object.id,
        title: object.title,
        description: object.description,
        amountOfHours: object.amountOfHours,
        price: object.price,
        priority: object.priority,
        startDate: object.startDate,
        finishDate: object.finishDate,
      );

  factory TaskDto.fromJson(Map<String, dynamic> json) =>
      _$TaskDtoFromJson(json);

  static String _toJsonPriority(Priority priority) => priority.toJson();
  static Priority _fromJsonPriority(String json) => PriorityJson.fromJson(json);
}

extension PriorityJson on Priority {
  String toJson() => value;

  static Priority fromJson(String json) {
    return Priority.values.firstWhere(
      (item) => item.value == json,
      orElse: () => Priority.none,
    );
  }
}
