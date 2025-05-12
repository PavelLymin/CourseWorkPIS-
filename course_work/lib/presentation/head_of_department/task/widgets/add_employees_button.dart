import 'package:flutter/material.dart';

import '../pages/add_participation_page.dart';

class AddEmployeesButton extends StatelessWidget {
  const AddEmployeesButton({
    super.key,
    required this.taskId,
    required this.departmentId,
    required this.date,
  });
  final int taskId;
  final int departmentId;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showModalBottomSheet<void>(
          context: context,
          useRootNavigator: false,
          isScrollControlled: true,
          builder: (newContext) {
            return SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: AddParticipationPage(
                taskId: taskId,
                departmentId: departmentId,
                date: date,
              ),
            );
          },
        );
      },
      icon: Icon(Icons.person_add_alt_sharp),
    );
  }
}
