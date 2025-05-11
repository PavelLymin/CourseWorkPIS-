import 'dart:async';

import 'package:course_work/domain/enums/position.dart';
import 'package:course_work/domain/enums/role.dart';
import 'package:drift/drift.dart';
import 'package:drift_postgres/drift_postgres.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:postgres/postgres.dart' as pg;

part 'data_base.g.dart';

class DepartmentTasks extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get taskId => integer().references(Tasks, #id)();
  IntColumn get departmentId => integer().references(Departments, #id)();
}

class Departments extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
}

class Tasks extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get description => text()();
  IntColumn get amountOfHours => integer()();
  RealColumn get payment => real()();
  Column<PgDate> get date => customType(PgTypes.date)();
  Column<PgDateTime> get startTime => customType(PgTypes.timestampNoTimezone)();
  Column<PgDateTime> get finishTime =>
      customType(PgTypes.timestampNoTimezone)();
  TextColumn get priority => text()();
}

class Employees extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get departmentId => integer().references(Departments, #id)();
  TextColumn get firstName => text()();
  TextColumn get lastName => text()();
  TextColumn get position => text()();
  TextColumn get role => text()();
  TextColumn get email => text().unique()();
  TextColumn get password => text()();
}

class Participation extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get taskId => integer().references(Tasks, #id)();
  IntColumn get employeeId => integer().references(Employees, #id)();
}

@DriftDatabase(
    tables: [DepartmentTasks, Departments, Tasks, Employees, Participation])
class AppDatabase extends _$AppDatabase implements Disposable {
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 1;

  static PgDatabase? _connection;
  static QueryExecutor _openConnection() {
    return _connection ??= PgDatabase(
      endpoint: pg.Endpoint(
        host: dotenv.env['DB_HOST']!,
        database: dotenv.env['DB_NAME']!,
        username: dotenv.env['DB_USER'],
        password: dotenv.env['DB_PASSWORD'],
      ),
      settings: pg.ConnectionSettings(
        sslMode: pg.SslMode.disable,
      ),
    );
  }

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(onCreate: (Migrator m) async {
      await m.createAll();
    }, beforeOpen: (details) async {
      if (details.wasCreated) {
        await _addDepartments();
      }
    });
  }

  @override
  Future<void> onDispose() async {
    await _connection?.close();
    _connection = null;
  }

  Future<void> _addDepartments() async {
    await batch((batch) {
      batch.insertAll(departments, [
        DepartmentsCompanion(title: Value('Прикладная информатика')),
        DepartmentsCompanion(title: Value('Программная инженерия')),
        DepartmentsCompanion(title: Value('Вычислительные системы')),
        DepartmentsCompanion(title: Value('Информационная безопасность')),
        DepartmentsCompanion(title: Value('Информационные системы')),
      ]);
      batch.insert(
          employees,
          EmployeesCompanion(
              departmentId: Value(1),
              firstName: Value('Admin'),
              lastName: Value('Admin'),
              position: Value(Position.teacher.value),
              role: Value(Role.administrator.value),
              email: Value('admin@mail.ru'),
              password: Value('admin')));
    });
  }
}
