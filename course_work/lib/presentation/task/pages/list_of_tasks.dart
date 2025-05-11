import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/task_bloc/task_bloc.dart';
import '../../administrator/task/widgets/list_tile_task.dart';
import '../../head_of_department/task/widgets/add_employees_button.dart';

class ListOfTasks extends StatelessWidget {
  const ListOfTasks({
    super.key,
    this.isNeedAddEmployeesButton = false,
    required this.departmentId,
  });
  final int departmentId;
  final bool isNeedAddEmployeesButton;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<TaskBloc, TaskState>(
        builder: (context, state) {
          return state.map(
            loading: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            load: (state) {
              return ListView.separated(
                itemCount: state.tasks.length,
                separatorBuilder: (context, _) {
                  return SizedBox(
                    height: 15.0,
                  );
                },
                itemBuilder: (context, index) {
                  return ListTileTask(
                    task: state.tasks[index],
                    departmentId: departmentId,
                    isNeedAddEmployeesButton: isNeedAddEmployeesButton,
                    addEmployeesButton: AddEmployeesButton(
                      taskId: state.tasks[index].id!,
                      departmentId: departmentId,
                    ),
                  );
                },
              );
            },
            failure: (failure) => Center(
              child: Text(failure.message),
            ),
          );
        },
      ),
    );
  }
}
