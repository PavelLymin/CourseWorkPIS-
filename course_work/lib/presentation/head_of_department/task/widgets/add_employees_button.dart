import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../bloc/participation_bloc/participation_bloc.dart';
import '../pages/add_participation_page.dart';

class AddEmployeesButton extends StatelessWidget {
  const AddEmployeesButton({
    super.key,
    required this.taskId,
    required this.departmentId,
    required this.date,
    required this.status,
  });
  final int taskId;
  final int departmentId;
  final DateTime? date;
  final String? status;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        final participationBloc = context.read<ParticipationBloc>();
        showModalBottomSheet<void>(
          context: context,
          useRootNavigator: false,
          isScrollControlled: true,
          builder: (newContext) {
            return BlocProvider.value(
              value: participationBloc,
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: AddParticipationPage(
                  taskId: taskId,
                  departmentId: departmentId,
                  date: date,
                  status: status,
                ),
              ),
            );
          },
        );
      },
      icon: Icon(Icons.person_add_alt_sharp),
    );
  }
}
