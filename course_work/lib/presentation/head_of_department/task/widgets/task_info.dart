import 'package:course_work/core/utils/app_strings.dart';
import 'package:course_work/domain/models/task/task.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/date_time_format.dart';
import 'details_info.dart';

class TaskInfo extends StatelessWidget {
  const TaskInfo({
    super.key,
    required this.task,
  });
  final TaskModel task;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 25.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppStrings.nameTask),
              const SizedBox(
                height: 5.0,
              ),
              Text(task.title),
              const SizedBox(
                height: 5.0,
              ),
              const Divider(
                height: 2,
              ),
              const SizedBox(
                height: 10.0,
              ),
            ],
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.primaryColor,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Text(
              task.description,
              maxLines: null,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          DetailsInfo(
            firstDetail: task.payment.toString(),
            secondDetail: task.amountOfHours.toString(),
            firstDetailsIcon: Icons.payment,
            secondDetailsIcon: Icons.hourglass_bottom_sharp,
          ),
          const SizedBox(
            height: 10.0,
          ),
          DetailsInfo(
            firstDetail: AppDateFormat.hm.format(task.startTime),
            secondDetail: AppDateFormat.hm.format(task.finishTime),
            firstDetailsIcon: Icons.timer,
            secondDetailsIcon: Icons.timer_off,
          ),
          const SizedBox(
            height: 10.0,
          ),
          DetailsInfo(
            firstDetail: task.status.value,
            secondDetail: AppDateFormat.yMMMMd.format(task.date),
            firstDetailsIcon: Icons.checklist_rtl,
            secondDetailsIcon: Icons.calendar_today,
          ),
          const SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
