import 'package:course_work/bloc/participation_bloc/participation_bloc.dart';
import 'package:course_work/presentation/head_of_department/task/pages/list_participation_page.dart';
import 'package:course_work/presentation/head_of_department/task/widgets/drop_down_status_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_strings.dart';

class AllTaskDepartmentPage extends StatefulWidget {
  const AllTaskDepartmentPage({
    super.key,
    required this.departmentId,
  });
  final int departmentId;

  @override
  State<AllTaskDepartmentPage> createState() => _AllTaskDepartmentPageState();
}

class _AllTaskDepartmentPageState extends State<AllTaskDepartmentPage> {
  String _status = 'Все';

  @override
  void initState() {
    context.read<ParticipationBloc>().add(
        ParticipationEvent.loadFilteredParticipation(
            departmentId: widget.departmentId, status: _status));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.tasks),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropDownStatusButton(
                status: _status,
                onSelected: (value) {
                  setState(() {
                    _status = value;
                  });
                  context.read<ParticipationBloc>().add(
                      ParticipationEvent.loadFilteredParticipation(
                          departmentId: widget.departmentId, status: value));
                }),
            const SizedBox(
              height: 10.0,
            ),
            ListParticipationPage(
              departmentId: widget.departmentId,
              status: _status,
            ),
          ],
        ),
      ),
    );
  }
}
