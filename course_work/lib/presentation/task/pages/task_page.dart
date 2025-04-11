import 'package:course_work/core/routes/route_names.dart';
import 'package:course_work/presentation/task/blocs/task_bloc.dart';
import 'package:course_work/presentation/task/widgets/list_tile_task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils/app_strings.dart';
import '../../../core/widgets/rounded_elevated_button.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key, required this.departmentId});
  final int departmentId;

  @override
  Widget build(BuildContext context) {
    context
        .read<TaskBloc>()
        .add(TaskEvent.loadTaskByDepartmentId(departmentId: departmentId));
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.tasks),
        leading: BackButton(
          onPressed: () {
            context.replaceNamed(RoutesNames.department);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: BlocBuilder<TaskBloc, TaskState>(
                builder: (context, state) {
                  return state.map(
                    loading: (_) => Center(
                      child: CircularProgressIndicator(),
                    ),
                    load: (state) {
                      return ListView.separated(
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 15.0,
                          );
                        },
                        itemCount: state.tasks.length,
                        itemBuilder: (context, index) {
                          return ListTileTask(
                            task: state.tasks[index],
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
            ),
            SizedBox(
              width: 150,
              child: RoundedElevatedButton(
                text: AppStrings.add,
                onPressed: () {
                  showModalBottomSheet<void>(
                    context: context,
                    useRootNavigator: false,
                    isScrollControlled: true,
                    builder: (newContext) {
                      return Container();
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
