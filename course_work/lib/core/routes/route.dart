import 'package:course_work/bloc/participation_bloc/participation_bloc.dart';
import 'package:course_work/core/pages/profile_page.dart';
import 'package:course_work/core/routes/route_names.dart';
import 'package:course_work/domain/enums/role.dart';
import 'package:course_work/presentation/auth/pages/login_page.dart';
import 'package:course_work/presentation/employee/task/pages/tasks_for_employee_page.dart';
import 'package:course_work/presentation/head_of_department/task/pages/all_participation_department_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../bloc/current_emploee_bloc/current_employee_bloc.dart';
import '../../presentation/administrator/department/pages/department_page.dart';
import '../../presentation/administrator/employee/pages/employee_page.dart';
import '../../presentation/administrator/task/pages/task_page.dart';
import '../../presentation/head_of_department/task/pages/participation_department_page.dart';
import '../../presentation/navigation_bar/administrator.dart';
import '../../presentation/navigation_bar/head_of_department.dart';
import '../dependencies/dependencies.dart';

final _storage = getIt<SharedPreferences>();
String _initialLocation() {
  if (_storage.getInt('id') != null) {
    if (_storage.getString('role') == Role.employee.value) {
      return '/tasksForEmployee';
    } else if (_storage.getString('role') == Role.headOfDepartment.value) {
      return '/taskForHeadOfDepartment';
    } else {
      return '/department';
    }
  } else {
    return '/login';
  }
}

final GoRouter router = GoRouter(
  initialLocation: _initialLocation(),
  routes: [
    GoRoute(
        name: RoutesNames.login,
        path: '/login',
        builder: (context, state) => const LoginPage()),
    GoRoute(
      name: RoutesNames.tasksForEmployee,
      path: '/tasksForEmployee',
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<ParticipationBloc>(),
        child: TasksForEmployeePage(
          employeeId: _storage.getInt('id')!,
          departmentId: _storage.getInt('departmentId')!,
        ),
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
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: RoutesNames.profile,
              path: '/profile',
              builder: (context, state) => BlocProvider(
                  create: (_) => getIt<CurrentEmployeeBloc>(),
                  child: const ProfilePage()),
            ),
          ],
        ),
      ],
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          HeadOfDepartment(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: RoutesNames.taskForHeadOfDepartment,
              path: '/taskForHeadOfDepartment',
              builder: (context, state) => BlocProvider(
                create: (context) => getIt<ParticipationBloc>(),
                child: TaskDepartmentPage(
                  departmentId: _storage.getInt('departmentId')!,
                ),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: RoutesNames.allTaskForHeadOfDepartment,
              path: '/allTaskForHeadOfDepartment',
              builder: (context, state) => BlocProvider(
                create: (context) => getIt<ParticipationBloc>(),
                child: AllTaskDepartmentPage(
                    departmentId: _storage.getInt('departmentId')!),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: RoutesNames.profileHeadOfDepartment,
              path: '/profileHeadOfDepartment',
              builder: (context, state) => BlocProvider(
                  create: (_) => getIt<CurrentEmployeeBloc>(),
                  child: const ProfilePage()),
            ),
          ],
        ),
      ],
    ),
  ],
);
