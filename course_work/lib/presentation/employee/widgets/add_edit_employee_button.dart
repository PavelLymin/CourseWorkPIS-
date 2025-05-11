import 'package:course_work/domain/enums/position.dart';
import 'package:course_work/domain/enums/role.dart';
import 'package:course_work/domain/models/employee/employee.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/employees_bloc/employees_bloc.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/widgets/rounded_elevated_button.dart';

class AddEditEmployeeButton extends StatelessWidget {
  const AddEditEmployeeButton(
      {super.key,
      this.employee,
      required this.departmentId,
      required this.formKey,
      required this.isEdit,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.role,
      required this.position,
      required this.password});
  final GlobalKey<FormState> formKey;
  final bool isEdit;
  final int departmentId;
  final EmployeeModel? employee;
  final TextEditingController firstName;
  final TextEditingController lastName;
  final TextEditingController email;
  final TextEditingController password;
  final Role role;
  final Position position;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: RoundedElevatedButton(
        widget: Text(
            isEdit ? AppStrings.updatingEmployee : AppStrings.addingEmployee),
        onPressed: () {
          if (formKey.currentState!.validate()) {
            if (isEdit) {
              context.read<EmployeesBloc>().add(EmployeesEvent.updateEmployee(
                  originalEmployee: employee!,
                  changedEmployee: copyWith(),
                  departmentId: departmentId));
            } else {
              context.read<EmployeesBloc>().add(
                    EmployeesEvent.addEmployee(
                      employee: createTask(),
                      departmentId: departmentId,
                    ),
                  );
            }
            Navigator.pop(context);
          }
        },
      ),
    );
  }

  EmployeeModel createTask() => EmployeeModel(
      departmentId: departmentId,
      password: password.text,
      firstName: firstName.text,
      lastName: lastName.text,
      position: position,
      email: email.text,
      role: role);

  EmployeeModel copyWith() => employee!.copyWith(
      departmentId: departmentId,
      password: password.text,
      firstName: firstName.text,
      lastName: lastName.text,
      position: position,
      email: email.text,
      role: role);
}
