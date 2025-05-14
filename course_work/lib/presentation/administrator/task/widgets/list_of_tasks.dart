import 'package:course_work/presentation/administrator/task/widgets/list_tile_task_administrator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../bloc/task_bloc/task_bloc.dart';

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
            initial: (_) => Container(),
            loading: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            loadTask: (_) => Container(),
            load: (state) {
              return ListView.separated(
                itemCount: state.tasks.length,
                separatorBuilder: (context, _) {
                  return SizedBox(
                    height: 15.0,
                  );
                },
                itemBuilder: (context, index) {
                  return ListTileTaskAdministrator(
                    task: state.tasks[index],
                    departmentId: departmentId,
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
