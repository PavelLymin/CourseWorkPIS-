import 'package:course_work/core/widgets/rounded_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/app_strings.dart';
import '../blocs/department_bloc.dart';
import '../widgets/list_tile_department.dart';
import 'add_edit_department.dart';

class DepartmentPage extends StatelessWidget {
  const DepartmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.department),
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
                    loading: (_) => Center(
                      child: CircularProgressIndicator(),
                    ),
                    load: (state) {
                      return ListView.separated(
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 15.0,
                          );
                        },
                        itemCount: state.departments.length,
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
              width: 150,
              child: RoundedElevatedButton(
                text: AppStrings.add,
                onPressed: () {
                  showModalBottomSheet<void>(
                    context: context,
                    useRootNavigator: false,
                    isScrollControlled: true,
                    builder: (newContext) {
                      return AddEditDepartment();
                    },
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
