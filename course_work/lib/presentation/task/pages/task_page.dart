import 'package:course_work/core/routes/route_names.dart';
import 'package:course_work/presentation/task/pages/add_edit_task_page.dart';
import 'package:course_work/presentation/task/widgets/list_tile_task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../bloc/task_bloc/task_bloc.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/widgets/rounded_elevated_button.dart';

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
            Expanded(
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
                            departmentId: widget.departmentId,
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
