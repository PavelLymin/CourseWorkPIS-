import 'package:course_work/bloc/generate_password_cubit/generate_password_cubit.dart';
import 'package:course_work/core/utils/app_strings.dart';
import 'package:course_work/core/widgets/custom_snack_bar.dart';
import 'package:course_work/core/widgets/rounded_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GeneratePassword extends StatefulWidget {
  const GeneratePassword({
    super.key,
    required this.password,
  });

  final TextEditingController password;

  @override
  State<GeneratePassword> createState() => _GeneratePasswordState();
}

class _GeneratePasswordState extends State<GeneratePassword> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<GeneratePasswordCubit, GeneratePasswordState>(
      listener: (context, state) {
        state.map(
            loading: (_) {},
            loaded: (state) {
              widget.password.text = state.password;
            },
            failure: (state) {
              CustomSnackBar.showError(context, state.message);
            });
      },
      child: RoundedElevatedButton(
        widget: Text(AppStrings.generatePassword),
        onPressed: () {
          context.read<GeneratePasswordCubit>().generatePassword();
        },
      ),
    );
  }
}
