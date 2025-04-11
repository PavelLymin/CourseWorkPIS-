import 'package:course_work/presentation/department/blocs/department_bloc.dart';
import 'package:course_work/presentation/task/blocs/task_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'core/dependencies/dependencies.dart';
import 'core/routes/route.dart';
import 'core/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDateFormatting("ru_RU");
  await setUp();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) => getIt<DepartmentBloc>()
              ..add(DepartmentEvent.loadDepartments())),
        BlocProvider(create: (_) => getIt<TaskBloc>()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      routerConfig: router,
    );
  }
}
