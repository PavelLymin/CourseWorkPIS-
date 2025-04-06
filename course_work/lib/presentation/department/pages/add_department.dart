import 'package:course_work/core/utils/app_strings.dart';
import 'package:course_work/core/widgets/custom_text_form_field.dart';
import 'package:course_work/core/widgets/rounded_elevated_button.dart';
import 'package:course_work/domain/models/department.dart';
import 'package:course_work/presentation/department/blocs/department_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddDepartment extends StatefulWidget {
  const AddDepartment({super.key});

  @override
  State<AddDepartment> createState() => _AddDepartmentState();
}

class _AddDepartmentState extends State<AddDepartment> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            const Text(AppStrings.addDepartment),
            const SizedBox(
              height: 40.0,
            ),
            CustomTextFormField(
              onChanged: (text) {
                setState(() {});
              },
              controller: nameController,
              hintText: AppStrings.nameDepartment,
              validator: (value) {
                if (value!.isEmpty) {
                  return AppStrings.required;
                }
                return null;
              },
              suffixIcon: nameController.text.isNotEmpty
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          nameController.clear();
                        });
                      },
                      icon: const Icon(Icons.clear))
                  : null,
            ),
            const SizedBox(
              height: 40.0,
            ),
            RoundedElevatedButton(
              text: AppStrings.add,
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  context.read<DepartmentBloc>().add(
                        DepartmentEvent.addDepartment(
                          department: Department(name: nameController.text),
                        ),
                      );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
