import 'package:course_work/core/widgets/scroll_line.dart';
import 'package:course_work/domain/models/employee/employee.dart';
import 'package:course_work/domain/models/task/task.dart';
import 'package:course_work/presentation/head_of_department/task/widgets/employee_info.dart';
import 'package:course_work/presentation/head_of_department/task/widgets/task_info.dart';
import 'package:flutter/material.dart';

class ParticipationInfoPage extends StatelessWidget {
  const ParticipationInfoPage({
    super.key,
    required this.task,
    required this.employees,
  });
  final TaskModel task;
  final List<EmployeeModel> employees;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        children: [
          const ScrollLine(),
          const SizedBox(
            height: 25.0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  TaskInfo(task: task),
                  Expanded(
                    child: EmployeeInfo(
                      employees: employees,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
