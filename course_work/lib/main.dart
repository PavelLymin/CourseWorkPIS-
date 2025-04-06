import 'package:course_work/presentation/department/blocs/department_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/dependencies/dependencies.dart';
import 'core/routes/route.dart';
import 'core/utils/app_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setUp();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) => getIt<DepartmentBloc>()
              ..add(DepartmentEvent.loadDepartments())),
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
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.backGroundColor,
        ),
        textTheme: TextTheme(
          titleMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
          headlineLarge: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w600,
          ),
        ),
        primaryColor: AppColors.primaryColor,
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.backGroundColor,
        colorScheme: ColorScheme.dark(surface: Color(0xFF232323)),
      ),
      routerConfig: router,
    );
  }
}
