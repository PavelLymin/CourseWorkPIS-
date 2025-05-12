import 'package:course_work/domain/models/employee/employee.dart';
import 'package:flutter/material.dart';

class EmployeeInfo extends StatelessWidget {
  const EmployeeInfo({
    super.key,
    required this.employees,
  });
  final List<EmployeeModel> employees;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(employees[index].firstName),
            subtitle: Text(employees[index].lastName),
          );
        },
        separatorBuilder: (context, _) {
          return const SizedBox(
            height: 10.0,
          );
        },
        itemCount: employees.length,
      ),
    );
  }
}
