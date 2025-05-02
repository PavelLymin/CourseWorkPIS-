import 'package:course_work/presentation/task/blocs/task_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/date_time_format.dart';
import '../../../domain/models/task/task.dart';
import '../pages/add_edit_task_page.dart';

class ListTileTask extends StatelessWidget {
  const ListTileTask({
    super.key,
    required this.task,
    required this.departmentId,
  });
  final TaskModel task;
  final int departmentId;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet<void>(
          context: context,
          useRootNavigator: false,
          isScrollControlled: true,
          builder: (context) {
            return SizedBox(
              height: MediaQuery.of(context).size.height - 80,
              child: AddEditTaskPage(
                departmentId: departmentId,
                task: task,
              ),
            );
          },
        );
      },
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: AppColors.primaryColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  task.title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.access_time_rounded,
                      size: 18,
                    ),
                    const SizedBox(width: 4.0),
                    Text(
                      "${AppDateFormat.hm.format(task.startTime)} - ${AppDateFormat.hm.format(task.finishTime)}",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
                const SizedBox(height: 12.0),
                Text(
                  task.description,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 60,
                  width: 0.5,
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () {
                    context.read<TaskBloc>().add(TaskEvent.deleteTask(
                          taskId: task.id!,
                          departmentId: departmentId,
                        ));
                  },
                  icon: const Icon(Icons.delete),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
