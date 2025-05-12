import 'package:course_work/data/data_base/data_base.dart';
import 'package:course_work/domain/enums/status_task.dart';
import 'package:course_work/domain/models/task/task.dart';
import 'package:drift/drift.dart';
import 'package:drift_postgres/drift_postgres.dart';

import 'set_changed.dart';

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
    required this.status,
  });
  final int? id;
  final String title;
  final String description;
  final int amountOfHours;
  final double payment;
  final DateTime date;
  final DateTime startTime;
  final DateTime finishTime;
  final String status;

  TaskModel toDomain() => TaskModel(
        id: id,
        title: title,
        description: description,
        amountOfHours: amountOfHours,
        payment: payment,
        date: date,
        startTime: startTime,
        finishTime: finishTime,
        status: getStatus(status),
      );

  factory TaskDto.fromDomain(TaskModel object) => TaskDto(
        id: object.id,
        title: object.title,
        description: object.description,
        amountOfHours: object.amountOfHours,
        payment: object.payment,
        date: object.date,
        startTime: object.startTime,
        finishTime: object.finishTime,
        status: object.status.value,
      );

  Status getStatus(String status) {
    return Status.values.firstWhere(
      (item) => item.value == status,
      orElse: () => Status.notIssued,
    );
  }

  TasksCompanion toDataBase() => TasksCompanion(
        title: Value(title),
        description: Value(description),
        amountOfHours: Value(amountOfHours),
        payment: Value(payment),
        date: Value(PgDate.fromDateTime(date)),
        startTime: Value(PgDateTime(startTime)),
        finishTime: Value(PgDateTime(finishTime)),
        status: Value(status),
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
        status: object.status,
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
