import 'package:course_work/bloc/participation_bloc/participation_bloc.dart';
import 'package:course_work/core/widgets/rounded_elevated_button.dart';
import 'package:course_work/domain/models/employee/employee.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../bloc/employees_bloc/employees_bloc.dart';
import '../../../../bloc/search_employee_bloc/search_employee_bloc.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../core/widgets/scroll_line.dart';
import '../widgets/list_of_search_employee.dart';

class AddParticipationPage extends StatefulWidget {
  const AddParticipationPage({
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
  State<AddParticipationPage> createState() => _AddParticipationStatePage();
}

class _AddParticipationStatePage extends State<AddParticipationPage> {
  final _searchController = TextEditingController();
  final List<EmployeeModel> _selectedEmployee = [];

  @override
  void initState() {
    context.read<SearchEmployeeBloc>().add(SearchEmployeeEvent.loadEmployee(
        taskId: widget.taskId, departmentId: widget.departmentId));
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        children: [
          Column(
            children: [
              const ScrollLine(),
              const SizedBox(
                height: 25.0,
              ),
              CustomTextFormField(
                onChanged: (text) {
                  if (text.isNotEmpty) {
                    context
                        .read<SearchEmployeeBloc>()
                        .add(SearchEmployeeEvent.searchEmployee(query: text));
                  } else {
                    context.read<SearchEmployeeBloc>().add(
                        SearchEmployeeEvent.resetSearch(
                            taskId: widget.taskId,
                            departmentId: widget.departmentId));
                  }
                },
                controller: _searchController,
                hintText: AppStrings.searchEmployee,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Divider(height: 1),
              ListOfSearchEmployee(
                searchController: _searchController,
                selectedEmployee: _selectedEmployee,
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: RoundedElevatedButton(
                widget: BlocBuilder<EmployeesBloc, EmployeesState>(
                  builder: (context, state) {
                    return Text(AppStrings.save);
                  },
                ),
                onPressed: () {
                  Navigator.pop(context);
                  context.read<ParticipationBloc>().add(
                        ParticipationEvent.addParticipation(
                          employees: _selectedEmployee,
                          taskId: widget.taskId,
                          departmentId: widget.departmentId,
                          date: widget.date,
                          status: widget.status,
                        ),
                      );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
