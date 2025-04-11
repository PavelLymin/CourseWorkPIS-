import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/date_time_format.dart';
import '../../../domain/models/task/task.dart';

class ListTileTask extends StatelessWidget {
  const ListTileTask({super.key, required this.task});
  final TaskModel task;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(bottom: 12),
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.primaryColor,
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      task.title,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.access_time_rounded,
                          size: 18,
                        ),
                        const SizedBox(width: 4.0),
                        Text(
                          "${AppDateFormat.hm.format(task.startTime)} - ${AppDateFormat.hm.format(task.finishTime)}",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                    const SizedBox(height: 12.0),
                    Text(
                      task.description,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                height: 60,
                width: 0.5,
                color: Colors.grey[200],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
