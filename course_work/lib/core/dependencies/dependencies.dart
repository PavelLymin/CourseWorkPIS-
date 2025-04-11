import 'package:course_work/data/repositories/department_repository_impl.dart';
import 'package:course_work/data/repositories/task_repository_impl.dart';
import 'package:course_work/domain/repositories/department_repository.dart';
import 'package:course_work/domain/repositories/task_repository.dart';
import 'package:course_work/presentation/department/blocs/department_bloc.dart';
import 'package:course_work/presentation/task/blocs/task_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../data/data_base/data_base.dart';

final getIt = GetIt.instance;

Future<void> setUp() async {
  getIt.registerLazySingleton<AppDatabase>(() => AppDatabase());

  _initDepartment();

  _initTaskForDepartment();
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
