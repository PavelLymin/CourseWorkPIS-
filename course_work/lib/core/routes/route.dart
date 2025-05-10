import 'package:course_work/core/routes/route_names.dart';
import 'package:course_work/presentation/department/pages/department_page.dart';
import 'package:course_work/presentation/employee/pages/employee_page.dart';
import 'package:course_work/presentation/task/pages/task_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
      name: RoutesNames.login,
      path: '/login',
      builder: (context, state) => const DepartmentPage()),
  GoRoute(
      name: RoutesNames.department,
      path: '/',
      builder: (context, state) => const DepartmentPage()),
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
]);
