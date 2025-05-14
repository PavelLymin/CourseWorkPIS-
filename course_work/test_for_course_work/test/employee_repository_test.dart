import 'package:course_work/core/utils/app_strings.dart';
import 'package:course_work/data/data_base/data_base.dart';
import 'package:course_work/data/repositories/employee_repository_impl.dart';
import 'package:course_work/domain/enums/position.dart';
import 'package:course_work/domain/enums/role.dart';
import 'package:course_work/domain/models/employee/employee.dart';
import 'package:course_work/domain/repositories/employee_repository.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  late AppDatabase database;
  late MockSharedPreferences mockPref;
  late IEmployeeRepository repository;

  setUp(() {
    database = AppDatabase(DatabaseConnection(
      NativeDatabase.memory(),
      closeStreamsSynchronously: true,
    ));
    mockPref = MockSharedPreferences();
    repository = EmployeeRepositoryImpl(
      database: database,
      preferences: mockPref,
    );
  });

  tearDown(() async {
    await database.close();
  });

  const model = EmployeeModel(
    id: 1,
    departmentId: 1,
    password: 'admin',
    firstName: 'Admin',
    lastName: 'Admin',
    position: Position.teacher,
    email: 'admin@mail.ru',
    role: Role.administrator,
  );

  group('employee_repository', () {
    group('get employee', () {
      test('return employee', () async {
        when(() => mockPref.getInt('id')).thenReturn(1);
        final result = await repository.getEmployee();
        result.fold(
            (failure) =>
                fail('returned Failure, but should have received Employee'),
            (employee) => expect(employee, model));
      });
      test('return failure, because employee not found', () async {
        when(() => mockPref.getInt('id')).thenReturn(null);
        final result = await repository.getEmployee();
        result.fold(
            (failure) => expect(failure.message, AppStrings.notFoundEmployee),
            (employee) =>
                fail('returned Employee,  but should have received Failure'));
      });
    });

    test('add employee ', () async {
      final employee = EmployeeModel(
        departmentId: 3,
        password: 'password',
        firstName: 'firstName',
        lastName: 'lastName',
        position: Position.teacher,
        email: 'email@mail.ru',
        role: Role.headOfDepartment,
      );
      await repository.addEmployee(employee: employee);
      final result = await repository.getAllEmployees();
      result.fold((failure) => fail('message'),
          (employees) => expect(employees.last, employee.copyWith(id: 2)));
    });
  });
}
