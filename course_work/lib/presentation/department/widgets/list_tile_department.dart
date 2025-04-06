import 'package:course_work/core/utils/app_colors.dart';
import 'package:course_work/core/utils/app_strings.dart';
import 'package:course_work/domain/models/department.dart';
import 'package:course_work/presentation/department/blocs/department_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListTileDepartment extends StatelessWidget {
  const ListTileDepartment({super.key, required this.department});
  final Department department;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(12.0)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    department.name,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  IconButton(
                    onPressed: () {
                      context.read<DepartmentBloc>().add(
                            DepartmentEvent.deleteDepartment(
                                id: department.id!),
                          );
                    },
                    icon: Icon(
                      Icons.restore_from_trash_sharp,
                      size: 24,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.secondaryBackGroundColor,
              borderRadius:
                  const BorderRadius.vertical(bottom: Radius.circular(12.0)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 45.0,
                left: 12.0,
                right: 12.0,
                bottom: 12.0,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  ),
                  GestureDetector(
                    onTap: () {},
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
