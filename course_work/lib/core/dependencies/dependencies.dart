import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../secrets/secrets.dart';

final getIt = GetIt.instance;

Future<void> setUp() async {
  final supabase = await Supabase.initialize(
      url: AppSecrets.supabaseUrl, anonKey: AppSecrets.supabaseAnnonKey);
  getIt.registerLazySingleton<SupabaseClient>(() => supabase.client);
}
