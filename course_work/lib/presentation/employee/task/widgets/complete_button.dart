import 'package:course_work/bloc/participation_bloc/participation_bloc.dart';
import 'package:course_work/bloc/task_bloc/task_bloc.dart';
import 'package:course_work/domain/models/task/task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/custom_snack_bar.dart';
import '../../../../domain/enums/status_task.dart';

class CompleteButton extends StatelessWidget {
  const CompleteButton({
    super.key,
    required this.isComplete,
    required this.task,
    required this.departmentId,
    required this.employeeId,
    required this.status,
  });

  final bool isComplete;
  final TaskModel task;
  final int departmentId;
  final int employeeId;
  final String status;

  @override
  Widget build(BuildContext context) {
    return BlocListener<TaskBloc, TaskState>(
      listener: (context, state) {
        state.map(
            initial: (_) {},
            loading: (_) {},
            load: (_) {
              context.read<ParticipationBloc>().add(
                  ParticipationEvent.loadFilteredParticipationForEmployee(
                      departmentId: departmentId,
                      employeeId: employeeId,
                      status: status));
            },
            loadTask: (_) {},
            failure: (state) {
              CustomSnackBar.showError(context, state.message);
            });
      },
      child: IconButton(
        enableFeedback: isComplete,
        onPressed: () {
          context.read<TaskBloc>().add(TaskEvent.updateTask(
              originalTask: task,
              changedTask: task.copyWith(status: Status.completed),
              departmentId: departmentId));
        },
        icon: isComplete ? Icon(Icons.task_alt) : Icon(Icons.circle_outlined),
      ),
    );
  }
}
