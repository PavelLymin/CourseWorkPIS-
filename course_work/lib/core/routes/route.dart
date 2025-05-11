import 'package:course_work/core/pages/profile_page.dart';
import 'package:course_work/core/routes/route_names.dart';
import 'package:course_work/presentation/auth/pages/login_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../bloc/current_emploee_bloc/current_employee_bloc.dart';
import '../../presentation/administrator/department/pages/department_page.dart';
import '../../presentation/administrator/employee/pages/employee_page.dart';
import '../../presentation/administrator/task/pages/task_page.dart';
import '../../presentation/head_of_department/task/pages/task_department_page.dart';
import '../../presentation/navigation_bar/administrator.dart';
import '../dependencies/dependencies.dart';

final GoRouter router = GoRouter(
    // initialLocation: getIt<SharedPreferences>().getInt('id') != null
    //     ? '/department'
    //     : '/login',
    routes: [
      GoRoute(
          name: RoutesNames.login,
          path: '/login',
          builder: (context, state) => const LoginPage()),
      GoRoute(
        name: RoutesNames.taskForHeadOfDepartment,
        path: '/',
        builder: (context, state) => TaskDepartmentPage(
          departmentId: getIt<SharedPreferences>().getInt('departmentId')!,
        ),
      ),
      GoRoute(
        name: RoutesNames.task,
        path: '/task/:departmentId',
        builder: (context, state) => TaskPage(
          departmentId: int.parse(state.pathParameters['departmentId']!),
        ),
      ),
      GoRoute(
        name: RoutesNames.employee,
        path: '/employee/:departmentId',
        builder: (context, state) => EmployeePage(
          departmentId: int.parse(state.pathParameters['departmentId']!),
        ),
      ),
      StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) =>
              Administrator(navigationShell: navigationShell),
          branches: [
            StatefulShellBranch(
              routes: [
                GoRoute(
                    name: RoutesNames.department,
                    path: '/department',
                    builder: (context, state) => const DepartmentPage()),
              ],
            ),
            StatefulShellBranch(routes: [
              GoRoute(
                name: RoutesNames.profile,
                path: '/profile',
                builder: (context, state) => BlocProvider(
                    create: (_) => getIt<CurrentEmployeeBloc>(),
                    child: const ProfilePage()),
              ),
            ]),
          ]),
    ]);
