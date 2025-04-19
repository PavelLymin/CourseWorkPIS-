import 'dart:async';

import 'package:course_work/core/secrets/secrets.dart';
import 'package:drift/drift.dart';
import 'package:drift_postgres/drift_postgres.dart';
import 'package:get_it/get_it.dart';
import 'package:postgres/postgres.dart' as pg;

part 'data_base.g.dart';

class DepartmentTasks extends Table {
  late final id = integer().autoIncrement()();
  late final taskId = integer().references(Tasks, #id)();
  late final departmentId = integer().references(Departments, #id)();
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
  late final departmentId = integer().references(Departments, #id)();
  TextColumn get firstName => text()();
  TextColumn get lastName => text()();
  TextColumn get position => text()();
  TextColumn get role => text()();
  TextColumn get login => text()();
  TextColumn get password => text()();
}

@DriftDatabase(tables: [DepartmentTasks, Departments, Tasks, Employees])
class AppDatabase extends _$AppDatabase implements Disposable {
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 1;

  static PgDatabase? _connection;
  static QueryExecutor _openConnection() {
    return _connection ??= PgDatabase(
      endpoint: pg.Endpoint(
        host: '10.0.2.2',
        port: 5432,
        database: AppSecrets.dataBase,
        username: AppSecrets.username,
        password: AppSecrets.password,
      ),
      settings: pg.ConnectionSettings(
        sslMode: pg.SslMode.disable,
      ),
    );
  }

  @override
  Future<void> onDispose() async {
    await _connection?.close();
    _connection = null;
  }
}
