import 'package:course_work/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/widgets/custom_text_form_field.dart';
import '../../../core/widgets/rounded_elevated_button.dart';
import '../widgets/date_picker.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({super.key});

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _amountOfHoursController = TextEditingController();
  final _paymentController = TextEditingController();
  DateTime date = DateTime.now();

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
              AppStrings.addingTask,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: 35.0,
            ),
            CustomTextFormField(
              controller: _titleController,
              hintText: AppStrings.titleTask,
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value!.isEmpty) {
                  return AppStrings.required;
                }
                return null;
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
            CustomTextFormField(
              controller: _descriptionController,
              hintText: AppStrings.descriptionTask,
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value!.isEmpty) {
                  return AppStrings.required;
                }
                return null;
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
            CustomTextFormField(
              controller: _amountOfHoursController,
              hintText: AppStrings.amountOfHoursTask,
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value!.isEmpty && int.tryParse(value) != null) {
                  return AppStrings.required;
                }
                return null;
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
            CustomTextFormField(
              controller: _paymentController,
              hintText: AppStrings.paymentTask,
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value!.isEmpty && double.tryParse(value) != null) {
                  return AppStrings.required;
                }
                return null;
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
            MyDatePicker(
              selectedDate: date,
              onTap: (value) {
                setState(() {
                  date = value;
                });
              },
            ),
            RoundedElevatedButton(
              text: AppStrings.add,
              onPressed: () {
                if (_formKey.currentState!.validate()) {}
              },
            ),
          ],
        ),
      ),
    );
  }
}
