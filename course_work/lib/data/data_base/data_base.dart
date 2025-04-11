import 'package:drift/drift.dart';
import 'package:drift_postgres/drift_postgres.dart';
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

@DriftDatabase(tables: [DepartmentTasks, Departments, Tasks])
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return PgDatabase(
      endpoint: pg.Endpoint(
        host: '10.0.2.2',
        port: 5432,
        database: 'course_work',
        username: 'postgres',
        password: 'VaPa15022005',
      ),
      settings: pg.ConnectionSettings(
        sslMode: pg.SslMode.disable,
      ),
    );
  }
}
