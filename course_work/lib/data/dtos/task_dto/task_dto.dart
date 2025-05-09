import 'package:course_work/data/data_base/data_base.dart';
import 'package:course_work/domain/models/task/task.dart';
import 'package:drift/drift.dart';
import 'package:drift_postgres/drift_postgres.dart';

import '../../../domain/enums/status_task.dart';
import '../set_changed.dart';

class TaskDto {
  TaskDto({
    this.id,
    required this.title,
    required this.description,
    required this.amountOfHours,
    required this.payment,
    required this.date,
    required this.startTime,
    required this.finishTime,
    required this.priority,
  });
  final int? id;
  final String title;
  final String description;
  final int amountOfHours;
  final double payment;
  final DateTime date;
  final DateTime startTime;
  final DateTime finishTime;
  final String priority;

  TaskModel toDomain() => TaskModel(
        id: id,
        title: title,
        description: description,
        amountOfHours: amountOfHours,
        payment: payment,
        priority: getPriority(priority),
        date: date,
        startTime: startTime,
        finishTime: finishTime,
      );

  factory TaskDto.fromDomain(TaskModel object) => TaskDto(
        id: object.id,
        title: object.title,
        description: object.description,
        amountOfHours: object.amountOfHours,
        payment: object.payment,
        priority: object.priority.value,
        date: object.date,
        startTime: object.startTime,
        finishTime: object.finishTime,
      );

  Priority getPriority(String priority) {
    return Priority.values.firstWhere(
      (item) => item.value == priority,
      orElse: () => Priority.none,
    );
  }

  TasksCompanion toDataBase() => TasksCompanion(
        title: Value(title),
        description: Value(description),
        amountOfHours: Value(amountOfHours),
        payment: Value(payment),
        priority: Value(priority),
        date: Value(PgDate.fromDateTime(date)),
        startTime: Value(PgDateTime(startTime)),
        finishTime: Value(PgDateTime(finishTime)),
      );

  factory TaskDto.fromDataBase(Task object) => TaskDto(
        id: object.id,
        title: object.title,
        description: object.description,
        amountOfHours: object.amountOfHours,
        payment: object.payment,
        date: object.date.toDateTime(),
        startTime: object.startTime.dateTime,
        finishTime: object.finishTime.dateTime,
        priority: object.priority,
      );

  TasksCompanion getChangesData(TaskDto task) {
    return TasksCompanion(
      title: setIfChanged(title, task.title),
      description: setIfChanged(description, task.description),
      amountOfHours: setIfChanged(amountOfHours, task.amountOfHours),
      payment: setIfChanged(payment, task.payment),
      date: setIfChanged(
          PgDate.fromDateTime(date), PgDate.fromDateTime(task.date)),
      startTime:
          setIfChanged(PgDateTime(task.startTime), PgDateTime(task.startTime)),
      finishTime: setIfChanged(
          PgDateTime(task.finishTime), PgDateTime(task.finishTime)),
    );
  }
}
