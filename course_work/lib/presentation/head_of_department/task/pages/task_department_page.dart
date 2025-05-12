import 'package:course_work/bloc/participation_bloc/participation_bloc.dart';
import 'package:course_work/core/utils/app_colors.dart';
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/theme.dart';
import '../../../../core/utils/app_strings.dart';
import '../widgets/list_tile_participation.dart';

class TaskDepartmentPage extends StatefulWidget {
  const TaskDepartmentPage({
    super.key,
    required this.departmentId,
  });
  final int departmentId;

  @override
  State<TaskDepartmentPage> createState() => _TaskDepartmentPageState();
}

class _TaskDepartmentPageState extends State<TaskDepartmentPage> {
  DateTime _selectedDateTime = DateTime.now();

  @override
  void initState() {
    context.read<ParticipationBloc>().add(ParticipationEvent.loadParticipation(
        departmentId: widget.departmentId, date: DateTime.now()));
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 120,
              child: DatePicker(
                DateTime.now(),
                initialSelectedDate: DateTime.now(),
                locale: "Ru-ru",
                selectionColor: AppColors.primaryColor,
                selectedTextColor: AppColors.whiteColor,
                dateTextStyle: textTheme.titleMedium!,
                dayTextStyle: textTheme.titleMedium!,
                monthTextStyle: textTheme.titleMedium!,
                onDateChange: (date) {
                  setState(() {
                    _selectedDateTime = date;
                  });
                  context.read<ParticipationBloc>().add(
                      ParticipationEvent.loadParticipation(
                          departmentId: widget.departmentId, date: date));
                },
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: BlocBuilder<ParticipationBloc, ParticipationState>(
                builder: (context, state) {
                  return state.map(
                    loading: (_) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    loadedParticipation: (state) {
                      return ListView.separated(
                        itemCount: state.participation.length,
                        separatorBuilder: (context, _) {
                          return SizedBox(
                            height: 15.0,
                          );
                        },
                        itemBuilder: (context, index) {
                          return ListTileParticipation(
                            participation: state.participation[index],
                            departmentId: widget.departmentId,
                            date: _selectedDateTime,
                          );
                        },
                      );
                    },
                    failure: (failure) => Center(
                      child: Text(failure.message),
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
