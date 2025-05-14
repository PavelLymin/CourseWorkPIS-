import 'package:course_work/data/data_base/data_base.dart';
import 'package:course_work/data/repositories/department_repository_impl.dart';
import 'package:course_work/domain/models/department/department.dart';
import 'package:course_work/domain/repositories/department_repository.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late AppDatabase database;
  late IDepartmentRepository repository;

  setUp(() {
    database = AppDatabase(DatabaseConnection(
      NativeDatabase.memory(),
      closeStreamsSynchronously: true,
    ));
    repository = DepartmentRepositoryImpl(database: database);
  });

  tearDown(() async {
    await database.close();
  });

  group('department_repository', () {
    test('get departments', () async {
      final result = await repository.getAllDepartment();
      result.fold((failure) => fail('message'),
          (employees) => expect(employees.length, 5));
    });

    test('add department', () async {
      final department = DepartmentModel(title: 'test');
      await repository.addDepartment(department: department);
      final result = await repository.getAllDepartment();
      result.fold(
          (failure) =>
              fail('returned Failure, but should have received Department'),
          (employees) => expect(employees.last, department.copyWith(id: 6)));
    });
  });
}
