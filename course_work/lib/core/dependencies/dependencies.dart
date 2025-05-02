import 'package:course_work/data/repositories/department_repository_impl.dart';
import 'package:course_work/data/repositories/employee_repository_impl.dart';
import 'package:course_work/data/repositories/task_repository_impl.dart';
import 'package:course_work/domain/repositories/department_repository.dart';
import 'package:course_work/domain/repositories/employee_repository.dart';
import 'package:course_work/domain/repositories/task_repository.dart';
import 'package:course_work/presentation/department/blocs/department_bloc.dart';
import 'package:course_work/presentation/employee/blocs/employee_bloc/employee_bloc.dart';
import 'package:course_work/presentation/employee/blocs/search_employee_bloc/search_employee_bloc.dart';
import 'package:course_work/presentation/task/blocs/task_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../data/data_base/data_base.dart';

final getIt = GetIt.instance;

Future<void> setUp() async {
  getIt.registerLazySingleton<AppDatabase>(
    () => AppDatabase(),
    dispose: (db) => db.onDispose(),
  );

  _initDepartment();
  _initTaskForDepartment();
  _initEmployee();
  _initSearchEmployee();
}

void _initDepartment() {
  getIt.registerLazySingleton<IDepartmentRepository>(
      () => DepartmentRepositoryImpl(database: getIt<AppDatabase>()));

  getIt.registerLazySingleton<DepartmentBloc>(
      () => DepartmentBloc(repository: getIt<IDepartmentRepository>()));
}

void _initTaskForDepartment() {
  getIt.registerLazySingleton<ITaskRepository>(
      () => TaskRepositoryImpl(database: getIt<AppDatabase>()));

  getIt.registerLazySingleton<TaskBloc>(
      () => TaskBloc(repository: getIt<ITaskRepository>()));
}

void _initEmployee() {
  getIt.registerLazySingleton<IEmployeeRepository>(
      () => EmployeeRepositoryImpl(database: getIt<AppDatabase>()));

  getIt.registerLazySingleton<EmployeeBloc>(() => EmployeeBloc(
        repository: getIt<IEmployeeRepository>(),
      ));
}

void _initSearchEmployee() {
  getIt.registerLazySingleton<SearchEmployeeBloc>(
      () => SearchEmployeeBloc(stream: getIt<EmployeeBloc>().stream));
}
