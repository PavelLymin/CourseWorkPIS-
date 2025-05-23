import 'package:course_work/bloc/auth_bloc/auth_bloc.dart';
import 'package:course_work/bloc/current_emploee_bloc/current_employee_bloc.dart';
import 'package:course_work/bloc/generate_password_cubit/generate_password_cubit.dart';
import 'package:course_work/bloc/login_bloc/login_bloc.dart';
import 'package:course_work/bloc/participation_bloc/participation_bloc.dart';
import 'package:course_work/data/repositories/auth_repository_impl.dart';
import 'package:course_work/data/repositories/department_repository_impl.dart';
import 'package:course_work/data/repositories/employee_repository_impl.dart';
import 'package:course_work/data/repositories/generate_password_repository_impl.dart';
import 'package:course_work/data/repositories/participation_repository_impl.dart';
import 'package:course_work/data/repositories/search_repository_impl.dart';
import 'package:course_work/data/repositories/task_repository_impl.dart';
import 'package:course_work/domain/repositories/auth_repository.dart';
import 'package:course_work/domain/repositories/department_repository.dart';
import 'package:course_work/domain/repositories/employee_repository.dart';
import 'package:course_work/domain/repositories/generate_password_repository.dart';
import 'package:course_work/domain/repositories/participation_repository.dart';
import 'package:course_work/domain/repositories/search_employee_repository.dart';
import 'package:course_work/domain/repositories/task_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../bloc/department_bloc/department_bloc.dart';
import '../../bloc/employees_bloc/employees_bloc.dart';
import '../../bloc/search_employee_bloc/search_employee_bloc.dart';
import '../../bloc/task_bloc/task_bloc.dart';
import '../../data/data_base/data_base.dart';

final getIt = GetIt.instance;

Future<void> setUp() async {
  getIt.registerLazySingleton<AppDatabase>(
    () => AppDatabase(),
    dispose: (db) => db.onDispose(),
  );

  final SharedPreferences prefs = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => prefs);

  _initLogin();
  _initAuth();
  _initDepartment();
  _initTaskForDepartment();
  _initEmployee();
  _initCurrentEmployee();
  _initSearchEmployee();
  _initParticipation();
  _initGeneratePassword();
}

void _initLogin() {
  getIt.registerLazySingleton<IAuthRepository>(() => AuthRepositoryImpl(
      database: getIt<AppDatabase>(), preferences: getIt<SharedPreferences>()));

  getIt.registerLazySingleton<LoginBloc>(
      () => LoginBloc(repository: getIt<IAuthRepository>()));
}

void _initAuth() {
  getIt.registerLazySingleton<AuthBloc>(
      () => AuthBloc(repository: getIt<IAuthRepository>()));
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
  getIt.registerLazySingleton<IEmployeeRepository>(() => EmployeeRepositoryImpl(
      database: getIt<AppDatabase>(), preferences: getIt<SharedPreferences>()));

  getIt.registerLazySingleton<EmployeesBloc>(() => EmployeesBloc(
        repository: getIt<IEmployeeRepository>(),
      ));
}

void _initCurrentEmployee() {
  getIt.registerFactory<CurrentEmployeeBloc>(() => CurrentEmployeeBloc(
        repository: getIt<IEmployeeRepository>(),
      ));
}

void _initSearchEmployee() {
  getIt.registerLazySingleton<ISearchEmployeeRepository>(
      () => SearchRepositoryImpl(database: getIt<AppDatabase>()));

  getIt.registerLazySingleton<SearchEmployeeBloc>(
      () => SearchEmployeeBloc(repository: getIt<ISearchEmployeeRepository>()));
}

void _initParticipation() {
  getIt.registerLazySingleton<IParticipationRepository>(
      () => ParticipationRepositoryImpl(
            database: getIt<AppDatabase>(),
          ));

  getIt.registerFactory<ParticipationBloc>(
      () => ParticipationBloc(repository: getIt<IParticipationRepository>()));
}

void _initGeneratePassword() {
  getIt.registerLazySingleton<IGeneratePasswordRepository>(
      () => GeneratePasswordRepositoryImpl(database: getIt<AppDatabase>()));

  getIt.registerFactory<GeneratePasswordCubit>(() =>
      GeneratePasswordCubit(repository: getIt<IGeneratePasswordRepository>()));
}
