import 'package:course_work/core/utils/app_strings.dart';
import 'package:course_work/domain/models/employee/employee.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../pages/add_edit_employee_page.dart';

class ListTileEmployee extends StatelessWidget {
  const ListTileEmployee({
    super.key,
    required this.employee,
    required this.departmentId,
  });
  final int departmentId;
  final EmployeeModel employee;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet<void>(
          context: context,
          useRootNavigator: false,
          isScrollControlled: true,
          builder: (context) {
            return SizedBox(
              height: MediaQuery.of(context).size.height - 80,
              child: AddEditEmployeePage(
                departmentId: departmentId,
                employee: employee,
              ),
            );
          },
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: AppColors.primaryColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(height: 1),
              ListTile(
                title: Text('${employee.firstName} ${employee.lastName}'),
                subtitle: Text(
                  '${AppStrings.position} ${employee.position.value}',
                ),
                trailing: Icon(Icons.person),
              ),
              const Divider(height: 1),
            ],
          ),
        ),
      ),
    );
  }
}
