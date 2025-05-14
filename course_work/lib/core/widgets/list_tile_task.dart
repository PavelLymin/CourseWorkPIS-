import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_strings.dart';

class ListTileTask extends StatelessWidget {
  const ListTileTask({
    super.key,
    required this.widgetForShowModalBottomSheet,
    required this.title,
    required this.dateFormatString,
    required this.statusOfTask,
    required this.iconButton,
  });
  final Widget widgetForShowModalBottomSheet;
  final String title;
  final String dateFormatString;
  final String statusOfTask;
  final Widget iconButton;

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
              child: widgetForShowModalBottomSheet,
            );
          },
        );
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
                  title,
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
                      dateFormatString,
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
                  statusOfTask,
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
                iconButton,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
