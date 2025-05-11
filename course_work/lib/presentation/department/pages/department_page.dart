import 'package:course_work/core/widgets/rounded_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/department_bloc/department_bloc.dart';
import '../../../core/utils/app_strings.dart';
import '../widgets/list_tile_department.dart';
import 'add_edit_department.dart';

class DepartmentPage extends StatefulWidget {
  const DepartmentPage({super.key});

  @override
  State<DepartmentPage> createState() => _DepartmentPageState();
}

class _DepartmentPageState extends State<DepartmentPage> {
  @override
  void initState() {
    context.read<DepartmentBloc>().add(DepartmentEvent.loadDepartments());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.departments),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: BlocBuilder<DepartmentBloc, DepartmentState>(
                builder: (context, state) {
                  return state.map(
                    loading: (_) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    load: (state) {
                      return ListView.separated(
                        itemCount: state.departments.length,
                        separatorBuilder: (context, _) {
                          return SizedBox(
                            height: 15.0,
                          );
                        },
                        itemBuilder: (context, index) {
                          return ListTileDepartment(
                            department: state.departments[index],
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
            SizedBox(
              width: 160,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RoundedElevatedButton(
                  widget: const Text(
                    AppStrings.add,
                  ),
                  onPressed: () {
                    showModalBottomSheet<void>(
                      context: context,
                      useRootNavigator: false,
                      isScrollControlled: true,
                      builder: (newContext) {
                        return const AddEditDepartment();
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
