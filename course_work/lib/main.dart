import 'package:course_work/bloc/auth_bloc/auth_bloc.dart';
import 'package:course_work/bloc/login_bloc/login_bloc.dart';
import 'package:course_work/bloc/task_bloc/task_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'bloc/department_bloc/department_bloc.dart';
import 'bloc/employees_bloc/employees_bloc.dart';
import 'bloc/search_employee_bloc/search_employee_bloc.dart';
import 'core/dependencies/dependencies.dart';
import 'core/routes/route.dart';
import 'core/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: "assets/database_secrets.env");
  initializeDateFormatting('ru');
  await setUp();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<LoginBloc>()),
        BlocProvider(create: (_) => getIt<AuthBloc>()),
        BlocProvider(create: (_) => getIt<DepartmentBloc>()),
        BlocProvider(create: (_) => getIt<EmployeesBloc>()),
        BlocProvider(create: (_) => getIt<TaskBloc>()),
        BlocProvider(create: (_) => getIt<SearchEmployeeBloc>()),
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
      title: 'Course Work',
      routerConfig: router,
    );
  }
}
