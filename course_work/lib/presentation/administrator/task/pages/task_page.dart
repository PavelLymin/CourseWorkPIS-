import 'package:course_work/core/routes/route_names.dart';
import 'package:course_work/presentation/task/pages/list_of_tasks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../bloc/task_bloc/task_bloc.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/rounded_elevated_button.dart';
import 'add_edit_task_page.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({
    super.key,
    required this.departmentId,
  });
  final int departmentId;

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
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
        leading: BackButton(
          onPressed: () {
            context.replaceNamed(RoutesNames.department);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListOfTasks(departmentId: widget.departmentId),
            SizedBox(
              width: 160,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RoundedElevatedButton(
                  widget: Text(AppStrings.add),
                  onPressed: () {
                    showModalBottomSheet<void>(
                      context: context,
                      useRootNavigator: false,
                      isScrollControlled: true,
                      builder: (newContext) {
                        return SizedBox(
                            height: MediaQuery.of(context).size.height - 80,
                            child: AddEditTaskPage(
                                departmentId: widget.departmentId));
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
