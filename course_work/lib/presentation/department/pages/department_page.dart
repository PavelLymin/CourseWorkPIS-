import 'package:course_work/core/utils/app_colors.dart';
import 'package:course_work/presentation/department/pages/add_department.dart';
import 'package:course_work/presentation/department/widgets/list_tile_department.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/app_strings.dart';
import '../../../core/widgets/rounded_elevated_button.dart';
import '../blocs/department_bloc.dart';

class DepartmentPage extends StatelessWidget {
  const DepartmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        backgroundColor: AppColors.primaryColor,
        child: AddDepartment(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 45.0, horizontal: 45.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 150.0,
                  child: Builder(builder: (context) {
                    return RoundedElevatedButton(
                      text: AppStrings.add,
                      onPressed: () {
                        Scaffold.of(context).openEndDrawer();
                      },
                    );
                  }),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 25.0, 15.0, 10.0),
                child: BlocBuilder<DepartmentBloc, DepartmentState>(
                  builder: (context, state) {
                    return state.map(
                      loading: (_) => Center(
                        child: CircularProgressIndicator(),
                      ),
                      load: (state) {
                        return GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8,
                            childAspectRatio: 2.2,
                          ),
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
            ),
          ],
        ),
      ),
    );
  }
}
