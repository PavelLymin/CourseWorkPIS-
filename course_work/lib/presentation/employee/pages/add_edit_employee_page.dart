import 'dart:developer';

import 'package:course_work/domain/enums/position.dart';
import 'package:course_work/domain/models/employee/employee.dart';
import 'package:course_work/presentation/employee/widgets/add_edit_employee_button.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/app_strings.dart';
import '../../../core/utils/validator.dart';
import '../../../core/widgets/custom_choice_chip.dart';
import '../../../core/widgets/custom_text_form_field.dart';
import '../../../core/widgets/scroll_line.dart';
import '../../../domain/enums/role.dart';

class AddEditEmployeePage extends StatefulWidget {
  const AddEditEmployeePage({
    super.key,
    required this.departmentId,
    this.employee,
  }) : isEdit = employee != null;
  final int departmentId;
  final EmployeeModel? employee;
  final bool isEdit;

  @override
  State<AddEditEmployeePage> createState() => _AddEditEmployeePageState();
}

class _AddEditEmployeePageState extends State<AddEditEmployeePage> {
  final _formKey = GlobalKey<FormState>();
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _email = TextEditingController();
  Role _role = Role.employee;
  Position _position = Position.teacher;
  String _password = '';

  @override
  void initState() {
    super.initState();
    if (widget.isEdit) {
      _firstName.text = widget.employee!.firstName;
      _lastName.text = widget.employee!.lastName;
      _email.text = widget.employee!.email;
      _role = widget.employee!.role;
      _position = widget.employee!.position;
    }
  }

  @override
  void dispose() {
    _firstName.dispose();
    _lastName.dispose();
    _email.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Form(
        key: _formKey,
        child: Stack(
          children: [
            Column(mainAxisSize: MainAxisSize.min, children: [
              ScrollLine(),
              const SizedBox(
                height: 25.0,
              ),
              Text(
                widget.isEdit
                    ? AppStrings.updatingEmployee
                    : AppStrings.addingEmployee,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 35.0,
              ),
              Row(children: [
                Flexible(
                  fit: FlexFit.loose,
                  child: CustomTextFormField(
                      onChanged: (text) {
                        setState(() {});
                      },
                      controller: _firstName,
                      hintText: AppStrings.firstName,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        return Validator.emptyValidate(value!);
                      }),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: CustomTextFormField(
                      onChanged: (text) {
                        setState(() {});
                      },
                      controller: _lastName,
                      hintText: AppStrings.lastName,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        return Validator.emptyValidate(value!);
                      }),
                )
              ]),
              const SizedBox(
                height: 10.0,
              ),
              CustomTextFormField(
                  onChanged: (text) {
                    setState(() {});
                  },
                  controller: _email,
                  hintText: AppStrings.email,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    return Validator.emailValidate(value!);
                  }),
              const SizedBox(
                height: 10.0,
              ),
              Row(spacing: 10.0, children: [
                CustomChoiceChip(
                    title: AppStrings.employee,
                    isSelected: _role == Role.employee,
                    onSelected: (bool onSelected) {
                      setState(() {
                        _role =
                            onSelected ? Role.employee : Role.headOfDepartment;
                      });
                    }),
                CustomChoiceChip(
                    title: AppStrings.headOfDepartment,
                    isSelected: _role == Role.headOfDepartment,
                    onSelected: (bool onSelected) {
                      setState(() {
                        _role =
                            onSelected ? Role.headOfDepartment : Role.employee;
                      });
                      log(_role.value);
                    })
              ])
            ]),
            Align(
              alignment: Alignment.bottomCenter,
              child: AddEditEmployeeButton(
                formKey: _formKey,
                isEdit: widget.isEdit,
                departmentId: widget.departmentId,
                employee: widget.employee,
                firstName: _firstName,
                lastName: _lastName,
                email: _email,
                role: _role,
                position: _position,
                password: _password,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
