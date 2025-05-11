import 'package:course_work/bloc/task_bloc/task_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../task/pages/list_of_tasks.dart';

class TaskDepartmentPage extends StatefulWidget {
  const TaskDepartmentPage({
    super.key,
    required this.departmentId,
  });
  final int departmentId;

  @override
  State<TaskDepartmentPage> createState() => _TaskDepartmentPageState();
}

class _TaskDepartmentPageState extends State<TaskDepartmentPage> {
  @override
  void initState() {
    context.read<TaskBloc>().add(
        TaskEvent.loadTaskByDepartmentId(departmentId: widget.departmentId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.tasks),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListOfTasks(
              departmentId: widget.departmentId,
              isNeedAddEmployeesButton: true,
            ),
          ],
        ),
      ),
    );
  }
}
