import 'package:course_work/data/repositories/department_repository_impl.dart';
import 'package:course_work/domain/repositories/department_repository.dart';
import 'package:course_work/presentation/department/blocs/department_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../secrets/secrets.dart';

final getIt = GetIt.instance;

Future<void> setUp() async {
  final supabase = await Supabase.initialize(
      url: AppSecrets.supabaseUrl, anonKey: AppSecrets.supabaseAnnonKey);
  getIt.registerLazySingleton<SupabaseClient>(() => supabase.client);

  _initDepartment();
}

void _initDepartment() {
  getIt.registerLazySingleton<IDepartmentRepository>(
      () => DepartmentRepositoryImpl(dataBase: getIt<SupabaseClient>()));

  getIt.registerLazySingleton<DepartmentBloc>(
      () => DepartmentBloc(repository: getIt<IDepartmentRepository>()));
}
