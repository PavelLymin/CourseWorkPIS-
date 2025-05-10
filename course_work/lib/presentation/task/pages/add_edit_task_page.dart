import 'package:course_work/core/utils/app_strings.dart';
import 'package:course_work/core/utils/validator.dart';
import 'package:course_work/domain/models/task/task.dart';
import 'package:course_work/presentation/task/widgets/add_edit_button.dart';
import 'package:course_work/presentation/task/widgets/time_picker.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/custom_text_form_field.dart';
import '../../../core/widgets/scroll_line.dart';
import '../../../domain/enums/status_task.dart';
import '../widgets/date_picker.dart';

class AddEditTaskPage extends StatefulWidget {
  const AddEditTaskPage({
    super.key,
    required this.departmentId,
    this.task,
  }) : isEdit = task != null;
  final int departmentId;
  final TaskModel? task;
  final bool isEdit;
  @override
  State<AddEditTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddEditTaskPage> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _paymentController = TextEditingController();
  final _amountOfHoursController = TextEditingController();
  DateTime date = DateTime.now();
  TimeOfDay startTime = TimeOfDay.now();
  TimeOfDay finishTime =
      TimeOfDay.fromDateTime(DateTime.now().add(Duration(minutes: 10)));
  bool readOnly = false;

  @override
  void initState() {
    super.initState();
    if (widget.isEdit) {
      _titleController.text = widget.task!.title;
      _descriptionController.text = widget.task!.description;
      _paymentController.text = widget.task!.payment.toString();
      _amountOfHoursController.text = widget.task!.amountOfHours.toString();
      if (widget.task!.priority.value == Priority.busy.value) readOnly = true;
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _paymentController.dispose();
    _amountOfHoursController.dispose();
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
                widget.isEdit ? AppStrings.updatingTask : AppStrings.addingTask,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 35.0,
              ),
              CustomTextFormField(
                  onChanged: (text) {
                    setState(() {});
                  },
                  readOnly: readOnly,
                  controller: _titleController,
                  hintText: AppStrings.titleTask,
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    return Validator.emptyValidate(value!);
                  }),
              const SizedBox(
                height: 10.0,
              ),
              CustomTextFormField(
                  onChanged: (text) {
                    setState(() {});
                  },
                  readOnly: readOnly,
                  controller: _descriptionController,
                  hintText: AppStrings.descriptionTask,
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    return Validator.emptyValidate(value!);
                  }),
              const SizedBox(
                height: 10.0,
              ),
              CustomTextFormField(
                  onChanged: (text) {
                    setState(() {});
                  },
                  readOnly: readOnly,
                  controller: _paymentController,
                  hintText: AppStrings.paymentTask,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    return Validator.paymentValidate(value!);
                  }),
              const SizedBox(
                height: 10.0,
              ),
              Row(children: [
                Flexible(
                  fit: FlexFit.loose,
                  child: MyDatePicker(
                      selectedDate: date,
                      readOnly: readOnly,
                      onTap: (value) {
                        setState(() {
                          date = value;
                        });
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
                      readOnly: readOnly,
                      controller: _amountOfHoursController,
                      hintText: AppStrings.amountOfHoursTask,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        return Validator.amountOfHoursValidate(value!);
                      }),
                )
              ]),
              const SizedBox(
                height: 10.0,
              ),
              Row(children: [
                Expanded(
                    child: TimePicker(
                        selectedTime: startTime,
                        readOnly: readOnly,
                        onTap: (value) {
                          setState(() {
                            startTime = value;
                          });
                        })),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                    child: TimePicker(
                        selectedTime: finishTime,
                        readOnly: readOnly,
                        onTap: (value) {
                          setState(() {
                            finishTime = value;
                          });
                        }))
              ])
            ]),
            Align(
              alignment: Alignment.bottomCenter,
              child: AddEditButton(
                  formKey: _formKey,
                  isEdit: widget.isEdit,
                  task: widget.task,
                  title: _titleController,
                  description: _descriptionController,
                  amountOfHours: _amountOfHoursController,
                  payment: _paymentController,
                  date: date,
                  startTime: startTime,
                  finishTime: finishTime,
                  departmentId: widget.departmentId),
            ),
          ],
        ),
      ),
    );
  }
}
