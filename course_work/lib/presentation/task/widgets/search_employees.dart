import 'package:course_work/presentation/employee/blocs/employee_bloc/employee_bloc.dart';
import 'package:course_work/presentation/employee/blocs/search_employee_bloc/search_employee_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/app_strings.dart';
import '../../../core/widgets/custom_text_form_field.dart';

class SearchEmployees extends StatefulWidget {
  const SearchEmployees({
    super.key,
    this.departmentId,
    // required this.controller,
  });
  final int? departmentId;
  // final TextEditingController controller;

  @override
  State<SearchEmployees> createState() => _SearchEmployeesState();
}

class _SearchEmployeesState extends State<SearchEmployees> {
  @override
  void initState() {
    super.initState();
    if (widget.departmentId != null) {
      context.read<EmployeeBloc>().add(EmployeeEvent.loadEmployeeByDepartmentId(
          departmentId: widget.departmentId!));
    }
    context.read<EmployeeBloc>().add(EmployeeEvent.loadAllEmployees());
  }

  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(100),
            child: CustomTextFormField(
              onChanged: (text) {
                if (text.isNotEmpty) {
                  context
                      .read<SearchEmployeeBloc>()
                      .add(SearchEmployeeEvent.search(query: text));
                }
                context
                    .read<SearchEmployeeBloc>()
                    .add(SearchEmployeeEvent.resetSearch());
              },
              controller: controller,
              hintText: AppStrings.searchEmployee,
              keyboardType: TextInputType.text,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Divider(height: 1),
          BlocBuilder<SearchEmployeeBloc, SearchEmployeeState>(
              builder: (context, state) {
            return state.map(
              loading: (_) => Center(
                child: CircularProgressIndicator(),
              ),
              loaded: (state) => SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        controller.text = state.employees[index].firstName;
                      },
                      child: Text(state.employees[index].firstName),
                    );
                  },
                  separatorBuilder: (context, _) {
                    return const SizedBox(
                      height: 10.0,
                    );
                  },
                  itemCount: state.employees.length,
                ),
              ),
              failure: (state) => Text(state.message),
            );
          }),
        ],
      ),
    );
  }
}
