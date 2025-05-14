import 'package:course_work/bloc/participation_bloc/participation_bloc.dart';
import 'package:course_work/presentation/employee/task/widgets/list_tile_task_for_employee.dart';
import 'package:course_work/presentation/head_of_department/task/widgets/drop_down_status_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_strings.dart';

class TasksForEmployeePage extends StatefulWidget {
  const TasksForEmployeePage({
    super.key,
    required this.employeeId,
    required this.departmentId,
  });
  final int employeeId;
  final int departmentId;

  @override
  State<TasksForEmployeePage> createState() => _TasksForEmployeePageState();
}

class _TasksForEmployeePageState extends State<TasksForEmployeePage> {
  String _status = 'Все';

  @override
  void initState() {
    context.read<ParticipationBloc>().add(
        ParticipationEvent.loadParticipationForEmployee(
            departmentId: 2, employeeId: 2));
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
                  context.read<ParticipationBloc>().add(ParticipationEvent
                          .loadFilteredParticipationForEmployee(
                        employeeId: widget.employeeId,
                        departmentId: widget.departmentId,
                        status: value,
                      ),);
                },),
            const SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: BlocBuilder<ParticipationBloc, ParticipationState>(
                builder: (context, state) {
                  return state.map(
                    loading: (_) => Center(
                      child: CircularProgressIndicator(),
                    ),
                    loadedParticipation: (state) => ListView.separated(
                        itemBuilder: (context, index) {
                          return ListTileTaskForEmployee(
                            participation: state.participation[index],
                            employees: state.participation[index].employees,
                            departmentId: widget.departmentId,
                            employeeId: widget.employeeId,
                            status: _status,
                          );
                        },
                        separatorBuilder: (context, _) {
                          return const SizedBox(
                            height: 10.0,
                          );
                        },
                        itemCount: state.participation.length),
                    failure: (state) => Center(
                      child: Text(state.message),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
