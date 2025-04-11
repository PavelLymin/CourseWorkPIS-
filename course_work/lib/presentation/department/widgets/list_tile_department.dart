import 'package:course_work/core/routes/route_names.dart';
import 'package:course_work/core/utils/app_colors.dart';
import 'package:course_work/core/utils/app_strings.dart';
import 'package:course_work/domain/models/department/department.dart';
import 'package:course_work/presentation/department/blocs/department_bloc.dart';
import 'package:course_work/presentation/department/pages/add_edit_department.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ListTileDepartment extends StatelessWidget {
  const ListTileDepartment({super.key, required this.department});
  final DepartmentModel department;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (newContext) {
                return AddEditDepartment(
                  isEdit: true,
                  department: department,
                );
              },
            );
          },
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(12.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      department.title,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      context.read<DepartmentBloc>().add(
                          DepartmentEvent.deleteDepartment(
                              departmentId: department.id!));
                    },
                    icon: const Icon(
                      Icons.remove_circle_outline_rounded,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.secondaryBackGroundColor,
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(12.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
                top: 30.0, left: 10.0, right: 10.0, bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          const Icon(Icons.person),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            AppStrings.employee,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.goNamed(RoutesNames.task, pathParameters: {
                          'departmentId': department.id!.toString()
                        });
                      },
                      child: Row(
                        children: [
                          const Icon(Icons.task),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            AppStrings.tasks,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
