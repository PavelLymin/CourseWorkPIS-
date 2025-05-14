import 'package:course_work/bloc/participation_bloc/participation_bloc.dart';
import 'package:course_work/core/utils/app_colors.dart';
import 'package:course_work/presentation/head_of_department/task/pages/list_participation_page.dart';
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/theme.dart';
import '../../../../core/utils/app_strings.dart';

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
    context.read<ParticipationBloc>().add(ParticipationEvent.loadParticipation(
        departmentId: widget.departmentId, date: DateTime.now()));
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
          children: [
            ListParticipationPage(
              datePicker: Container(
                margin: const EdgeInsets.only(bottom: 25.0),
                height: 100,
                child: DatePicker(
                  DateTime.now(),
                  initialSelectedDate: DateTime.now(),
                  locale: "Ru-ru",
                  selectionColor: AppColors.primaryColor,
                  selectedTextColor: AppColors.whiteColor,
                  dateTextStyle: textTheme.titleMedium!,
                  dayTextStyle: textTheme.titleMedium!,
                  monthTextStyle: textTheme.titleMedium!,
                  onDateChange: (date) {
                    context.read<ParticipationBloc>().add(
                          ParticipationEvent.loadParticipation(
                            departmentId: widget.departmentId,
                            date: date,
                          ),
                        );
                  },
                ),
              ),
              departmentId: widget.departmentId,
            ),
          ],
        ),
      ),
    );
  }
}
