import 'package:course_work/core/widgets/list_tile_task.dart';
import 'package:course_work/domain/models/participation/participation.dart';
import 'package:course_work/presentation/head_of_department/task/widgets/add_employees_button.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/date_time_format.dart';
import '../pages/participation_info_page.dart';

class ListTileParticipation extends StatelessWidget {
  const ListTileParticipation(
      {super.key,
      required this.participation,
      required this.departmentId,
      required this.date,
      required this.status});
  final ParticipationModel participation;
  final int departmentId;
  final DateTime? date;
  final String? status;

  @override
  Widget build(BuildContext context) {
    return ListTileTask(
      widgetForShowModalBottomSheet: ParticipationInfoPage(
        task: participation.task,
        employees: participation.employees,
      ),
      title: participation.task.title,
      dateFormatString:
          "${AppDateFormat.hm.format(participation.task.startTime)}"
          " - ${AppDateFormat.hm.format(participation.task.finishTime)}",
      statusOfTask: participation.task.status.value,
      iconButton: AddEmployeesButton(
        taskId: participation.task.id!,
        departmentId: departmentId,
        date: date,
        status: status,
      ),
    );
  }
}
