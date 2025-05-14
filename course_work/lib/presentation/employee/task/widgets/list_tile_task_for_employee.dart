import 'package:course_work/core/widgets/list_tile_task.dart';
import 'package:course_work/domain/enums/status_task.dart';
import 'package:course_work/domain/models/employee/employee.dart';
import 'package:course_work/presentation/head_of_department/task/pages/participation_info_page.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/date_time_format.dart';
import '../../../../domain/models/participation/participation.dart';
import 'complete_button.dart';

class ListTileTaskForEmployee extends StatelessWidget {
  const ListTileTaskForEmployee({
    super.key,
    required this.participation,
    required this.employees,
    required this.departmentId,
    required this.employeeId,
    required this.status,
  });
  final ParticipationModel participation;
  final List<EmployeeModel> employees;
  final int departmentId;
  final int employeeId;
  final String status;

  @override
  Widget build(BuildContext context) {
    return ListTileTask(
      widgetForShowModalBottomSheet: ParticipationInfoPage(
        task: participation.task,
        employees: employees,
      ),
      title: participation.task.title,
      dateFormatString:
          '${AppDateFormat.hm.format(participation.task.startTime)} '
          '- ${AppDateFormat.hm.format(participation.task.finishTime)}',
      statusOfTask: participation.task.status.value,
      iconButton: CompleteButton(
        isComplete:
            participation.task.status == Status.completed ? true : false,
        task: participation.task,
        departmentId: departmentId,
        employeeId: employeeId,
        status: status,
      ),
    );
  }
}
