import 'package:course_work/data/data_base/data_base.dart';
import 'package:course_work/domain/models/task/task.dart';
import 'package:drift/drift.dart';
import 'package:drift_postgres/drift_postgres.dart';

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
        finishTime: Value(PgDateTime(startTime)),
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

  TasksCompanion getChangesData(TaskDto newTask) {
    return TasksCompanion(
      title: setIfChanged(title, newTask.title),
      description: setIfChanged(description, newTask.description),
      amountOfHours: setIfChanged(amountOfHours, newTask.amountOfHours),
      payment: setIfChanged(payment, newTask.payment),
      date: setIfChanged(
          PgDate.fromDateTime(date), PgDate.fromDateTime(newTask.date)),
      startTime: setIfChanged(
          PgDateTime(newTask.startTime), PgDateTime(newTask.startTime)),
      finishTime: setIfChanged(
          PgDateTime(newTask.finishTime), PgDateTime(newTask.finishTime)),
    );
  }
}
