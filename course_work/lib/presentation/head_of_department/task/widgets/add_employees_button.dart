import 'package:flutter/material.dart';

import '../pages/add_participation.dart';

class AddEmployeesButton extends StatelessWidget {
  const AddEmployeesButton({
    super.key,
    required this.taskId,
    required this.departmentId,
  });
  final int taskId;
  final int departmentId;

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
                height: MediaQuery.of(context).size.height - 80,
                child: AddParticipation(
                    taskId: taskId, departmentId: departmentId));
          },
        );
      },
      icon: Icon(Icons.person),
    );
  }
}
