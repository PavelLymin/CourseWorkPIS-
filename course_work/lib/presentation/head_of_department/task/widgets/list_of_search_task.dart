import 'package:course_work/domain/models/employee/employee.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../bloc/search_employee_bloc/search_employee_bloc.dart';

class ListOfSearchTask extends StatefulWidget {
  const ListOfSearchTask({
    super.key,
    required this.searchController,
    required this.selectedEmployee,
  });
  final TextEditingController searchController;
  final List<EmployeeModel> selectedEmployee;

  @override
  State<ListOfSearchTask> createState() => _ListOfSearchTaskState();
}

class _ListOfSearchTaskState extends State<ListOfSearchTask> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<SearchEmployeeBloc, SearchEmployeeState>(
        builder: (context, state) {
          return state.map(
            loading: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (state) => ListView.separated(
              itemCount: state.employees.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _addOrDeleteSelect(employee: state.employees[index]);
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: widget.selectedEmployee
                              .contains(state.employees[index])
                          ? Colors.red
                          : Colors.transparent,
                    ),
                    child: Text(
                      '${state.employees[index].firstName} ${state.employees[index].lastName}',
                    ),
                  ),
                );
              },
              separatorBuilder: (context, _) {
                return const SizedBox(
                  height: 10.0,
                );
              },
            ),
            failure: (state) => Text(state.message),
          );
        },
      ),
    );
  }

  void _addOrDeleteSelect({required EmployeeModel employee}) {
    if (widget.selectedEmployee.contains(employee)) {
      widget.selectedEmployee.remove(employee);
    } else {
      widget.selectedEmployee.add(employee);
    }
  }
}
