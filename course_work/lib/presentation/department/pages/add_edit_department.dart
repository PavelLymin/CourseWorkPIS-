import 'package:course_work/core/utils/app_colors.dart';
import 'package:course_work/core/utils/app_strings.dart';
import 'package:course_work/core/widgets/custom_text_form_field.dart';
import 'package:course_work/core/widgets/rounded_elevated_button.dart';
import 'package:course_work/domain/models/department/department.dart';
import 'package:course_work/presentation/department/blocs/department_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddEditDepartment extends StatefulWidget {
  const AddEditDepartment(
      {super.key, this.isEdit = false, this.nameDepartment});
  final bool isEdit;
  final String? nameDepartment;

  @override
  State<AddEditDepartment> createState() => _AddDepartmentState();
}

class _AddDepartmentState extends State<AddEditDepartment> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    if (widget.isEdit && widget.nameDepartment != null) {
      _nameController.text = widget.nameDepartment!;
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
              onChanged: (text) {
                setState(() {});
              },
              controller: _nameController,
              hintText: AppStrings.nameDepartment,
              validator: (value) {
                if (value!.isEmpty) {
                  return AppStrings.required;
                }
                return null;
              },
              suffixIcon: _nameController.text.isNotEmpty
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          _nameController.clear();
                        });
                      },
                      icon: const Icon(Icons.clear),
                    )
                  : null,
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
                    }
                    _addDepartment(context);
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
            department: DepartmentModel(title: _nameController.text),
          ),
        );
  }

  void _updateDepartment(BuildContext context) {
    context.read<DepartmentBloc>().add(
          DepartmentEvent.updateDepartment(
            department: DepartmentModel(title: _nameController.text),
          ),
        );
  }
}
