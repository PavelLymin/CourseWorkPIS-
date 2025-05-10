import 'package:course_work/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/department_bloc/department_bloc.dart';

class DeleteDialogWindow extends StatelessWidget {
  const DeleteDialogWindow({super.key, required this.departmentId});
  final int departmentId;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(AppStrings.warning),
      content: Text(AppStrings.deleteDialogInfo),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('CANCEL'),
        ),
        TextButton(
          onPressed: () {
            context.read<DepartmentBloc>().add(
                DepartmentEvent.deleteDepartment(departmentId: departmentId));
            Navigator.of(context).pop();
          },
          child: Text('ACCEPT'),
        ),
      ],
    );
  }
}
