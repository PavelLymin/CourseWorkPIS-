import 'package:course_work/bloc/employee_bloc/employee_bloc.dart';
import 'package:course_work/domain/enums/position.dart';
import 'package:course_work/domain/enums/role.dart';
import 'package:course_work/domain/models/employee/employee.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  final Role role;
  final Position position;
  final String password;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: RoundedElevatedButton(
        text: isEdit ? AppStrings.updatingEmployee : AppStrings.addingEmployee,
        onPressed: () {
          if (formKey.currentState!.validate()) {
            if (isEdit) {
              context.read<EmployeeBloc>().add(EmployeeEvent.updateEmployee(
                  originalEmployee: employee!,
                  changedEmployee: copyWith(),
                  departmentId: departmentId));
            } else {
              context.read<EmployeeBloc>().add(
                    EmployeeEvent.addEmployee(
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
      password: password,
      firstName: firstName.text,
      lastName: lastName.text,
      position: position,
      email: email.text,
      role: role);

  EmployeeModel copyWith() => employee!.copyWith(
      departmentId: departmentId,
      password: password,
      firstName: firstName.text,
      lastName: lastName.text,
      position: position,
      email: email.text,
      role: role);
}
