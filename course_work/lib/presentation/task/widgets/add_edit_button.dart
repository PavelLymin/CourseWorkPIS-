import 'package:course_work/core/utils/date_time_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/task_bloc/task_bloc.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/widgets/rounded_elevated_button.dart';
import '../../../domain/models/task/task.dart';

class AddEditButton extends StatelessWidget {
  const AddEditButton({
    super.key,
    required this.formKey,
    required this.isEdit,
    required this.task,
    required this.title,
    required this.description,
    required this.amountOfHours,
    required this.payment,
    required this.date,
    required this.startTime,
    required this.finishTime,
    required this.departmentId,
  });
  final GlobalKey<FormState> formKey;
  final bool isEdit;
  final TaskModel? task;
  final TextEditingController title;
  final TextEditingController description;
  final TextEditingController amountOfHours;
  final TextEditingController payment;
  final DateTime date;
  final TimeOfDay startTime;
  final TimeOfDay finishTime;
  final int departmentId;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: RoundedElevatedButton(
        text: isEdit ? AppStrings.update : AppStrings.add,
        onPressed: () {
          if (formKey.currentState!.validate()) {
            if (isEdit) {
              context.read<TaskBloc>().add(TaskEvent.updateTask(
                  originalTask: task!,
                  changedTask: copyWith(),
                  departmentId: departmentId));
            } else {
              context.read<TaskBloc>().add(
                    TaskEvent.addTask(
                      task: createTask(),
                      departmentId: departmentId,
                    ),
                  );
            }
            Navigator.pop(context);
          }
        },
      ),
    );
  }

  TaskModel createTask() => TaskModel(
        title: title.text,
        description: description.text,
        amountOfHours: int.parse(amountOfHours.text),
        payment: double.parse(payment.text),
        date: date,
        startTime: startTime.toDateTime(),
        finishTime: finishTime.toDateTime(),
      );

  TaskModel copyWith() => task!.copyWith(
        title: title.text,
        description: description.text,
        amountOfHours: int.parse(amountOfHours.text),
        payment: double.parse(payment.text),
        date: date,
        startTime: startTime.toDateTime(),
        finishTime: finishTime.toDateTime(),
      );
}
