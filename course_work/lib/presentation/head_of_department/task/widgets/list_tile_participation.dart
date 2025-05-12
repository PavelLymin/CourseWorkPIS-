import 'package:course_work/core/utils/app_strings.dart';
import 'package:course_work/domain/models/participation/participation.dart';
import 'package:course_work/presentation/head_of_department/task/widgets/add_employees_button.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/date_time_format.dart';
import '../pages/participation_info_page.dart';

class ListTileParticipation extends StatelessWidget {
  const ListTileParticipation({
    super.key,
    required this.participation,
    required this.departmentId,
    required this.date,
  });
  final ParticipationModel participation;
  final int departmentId;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet<void>(
          context: context,
          useRootNavigator: false,
          isScrollControlled: true,
          builder: (context) {
            return SizedBox(
              height: MediaQuery.of(context).size.height - 200,
              child: ParticipationInfoPage(
                task: participation.task,
                employees: participation.employees,
              ),
            );
          },
        );
        print(participation.employees);
      },
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: AppColors.primaryColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  participation.task.title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.access_time_rounded,
                      size: 18,
                    ),
                    const SizedBox(width: 4.0),
                    Text(
                      "${AppDateFormat.hm.format(participation.task.startTime)} - ${AppDateFormat.hm.format(participation.task.finishTime)}",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${AppStrings.status}:',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Text(
                  participation.task.status.value,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 60,
                  width: 0.5,
                  color: Colors.white,
                ),
                AddEmployeesButton(
                  taskId: participation.task.id!,
                  departmentId: departmentId,
                  date: date,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
