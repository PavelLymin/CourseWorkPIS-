import 'package:course_work/presentation/employee/pages/add_edit_employee_page.dart';
import 'package:course_work/presentation/employee/widgets/list_tile_employee.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../bloc/employee_bloc/employee_bloc.dart';
import '../../../core/routes/route_names.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/widgets/rounded_elevated_button.dart';

class EmployeePage extends StatefulWidget {
  const EmployeePage({
    super.key,
    required this.departmentId,
  });
  final int departmentId;

  @override
  State<EmployeePage> createState() => _EmployeePageState();
}

class _EmployeePageState extends State<EmployeePage> {
  @override
  void initState() {
    context.read<EmployeeBloc>().add(EmployeeEvent.loadEmployeeByDepartmentId(
        departmentId: widget.departmentId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.employees),
        leading: BackButton(
          onPressed: () {
            context.replaceNamed(RoutesNames.department);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: BlocBuilder<EmployeeBloc, EmployeeState>(
                  builder: (context, state) {
                return state.map(
                    loading: (_) => Center(child: CircularProgressIndicator()),
                    loaded: (state) => ListView.separated(
                          itemCount: state.employees.length,
                          separatorBuilder: (context, _) {
                            return SizedBox(
                              height: 15.0,
                            );
                          },
                          itemBuilder: (context, index) {
                            return ListTileEmployee(
                              employee: state.employees[index],
                              departmentId: widget.departmentId,
                            );
                          },
                        ),
                    failure: (state) => Text(state.message));
              }),
            ),
            SizedBox(
              width: 160,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RoundedElevatedButton(
                  text: AppStrings.add,
                  onPressed: () {
                    showModalBottomSheet<void>(
                      context: context,
                      useRootNavigator: false,
                      isScrollControlled: true,
                      builder: (newContext) {
                        return SizedBox(
                            height: MediaQuery.of(context).size.height / 2,
                            child: AddEditEmployeePage(
                                departmentId: widget.departmentId));
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
