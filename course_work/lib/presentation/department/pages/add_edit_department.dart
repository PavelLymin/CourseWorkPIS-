import 'package:course_work/core/utils/app_colors.dart';
import 'package:course_work/core/utils/app_strings.dart';
import 'package:course_work/core/widgets/custom_text_form_field.dart';
import 'package:course_work/core/widgets/rounded_elevated_button.dart';
import 'package:course_work/domain/models/department/department.dart';
import 'package:course_work/presentation/department/blocs/department_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddEditDepartment extends StatefulWidget {
  const AddEditDepartment({
    super.key,
    this.isEdit = false,
    this.department,
  });
  final bool isEdit;
  final DepartmentModel? department;

  @override
  State<AddEditDepartment> createState() => _AddDepartmentState();
}

class _AddDepartmentState extends State<AddEditDepartment> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    if (widget.isEdit && widget.department != null) {
      _titleController.text = widget.department!.title;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 250,
              height: 6,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            Text(
              widget.isEdit
                  ? AppStrings.updatingDepartment
                  : AppStrings.addingDepartment,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: 35.0,
            ),
            CustomTextFormField(
              controller: _titleController,
              hintText: AppStrings.nameDepartment,
              validator: (value) {
                if (value!.isEmpty) {
                  return AppStrings.required;
                }
                return null;
              },
            ),
            const SizedBox(
              height: 35.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 25.0,
              ),
              child: RoundedElevatedButton(
                text: widget.isEdit ? AppStrings.update : AppStrings.add,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    if (widget.isEdit) {
                      _updateDepartment(context);
                    } else {
                      _addDepartment(context);
                    }
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _addDepartment(BuildContext context) {
    context.read<DepartmentBloc>().add(
          DepartmentEvent.addDepartment(
            department: DepartmentModel(title: _titleController.text),
          ),
        );
  }

  void _updateDepartment(BuildContext context) {
    context.read<DepartmentBloc>().add(
          DepartmentEvent.updateDepartment(
            department:
                widget.department!.copyWith(title: _titleController.text),
          ),
        );
  }
}
