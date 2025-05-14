import 'package:course_work/core/widgets/list_tile_task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../bloc/task_bloc/task_bloc.dart';
import '../../../../core/utils/date_time_format.dart';
import '../../../../domain/models/task/task.dart';
import '../pages/add_edit_task_page.dart';

class ListTileTaskAdministrator extends StatelessWidget {
  const ListTileTaskAdministrator({
    super.key,
    required this.task,
    required this.departmentId,
  });
  final TaskModel task;
  final int departmentId;

  @override
  Widget build(BuildContext context) {
    return ListTileTask(
      widgetForShowModalBottomSheet: AddEditTaskPage(
        departmentId: departmentId,
        task: task,
      ),
      title: task.title,
      dateFormatString: "${AppDateFormat.hm.format(task.startTime)} "
          "- ${AppDateFormat.hm.format(task.finishTime)}",
      statusOfTask: task.status.value,
      iconButton: IconButton(
        onPressed: () {
          context.read<TaskBloc>().add(TaskEvent.deleteTask(
                taskId: task.id!,
                departmentId: departmentId,
              ));
        },
        icon: const Icon(Icons.delete),
      ),
    );
  }
}
