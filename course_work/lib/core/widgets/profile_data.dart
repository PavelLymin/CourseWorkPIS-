import 'package:course_work/core/utils/app_colors.dart';
import 'package:course_work/domain/enums/position.dart';
import 'package:course_work/domain/models/employee/employee.dart';
import 'package:flutter/material.dart';

import '../../presentation/administrator/employee/widgets/drop_down_button.dart';
import 'custom_text_form_field.dart';

class ProfileData extends StatefulWidget {
  const ProfileData({
    super.key,
    required this.formKey,
    required this.firstNameController,
    required this.lastNameController,
    required this.emailNameController,
    required this.position,
    required this.setState,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController emailNameController;
  final Position position;
  final Function(Position position) setState;

  @override
  State<ProfileData> createState() => _ProfileDataState();
}

class _ProfileDataState extends State<ProfileData> {
  EmployeeModel? employee;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextFormField(
            controller: widget.firstNameController,
            hintText: '',
            borderColor: AppColors.backGroundColor,
          ),
          const SizedBox(
            height: 10.0,
          ),
          CustomTextFormField(
            controller: widget.lastNameController,
            hintText: '',
            borderColor: AppColors.backGroundColor,
          ),
          const SizedBox(
            height: 10.0,
          ),
          CustomTextFormField(
            controller: widget.emailNameController,
            hintText: '',
            borderColor: AppColors.backGroundColor,
          ),
          const SizedBox(
            height: 10.0,
          ),
          DropDownButton(
            position: widget.position,
            onSelected: (value) {
              setState(() {
                widget.setState(value);
              });
            },
          ),
        ],
      ),
    );
  }
}
