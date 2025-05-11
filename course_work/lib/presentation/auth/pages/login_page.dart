import 'package:course_work/core/routes/route_names.dart';
import 'package:course_work/core/utils/app_strings.dart';
import 'package:course_work/domain/enums/role.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../bloc/login_bloc/login_bloc.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/validator.dart';
import '../../../core/widgets/custom_snack_bar.dart';
import '../../../core/widgets/custom_text_form_field.dart';
import '../../../core/widgets/rounded_elevated_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isPasswordVisible = false;

  void clearText() {
    _emailController.clear();
    _passwordController.clear();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 10,
          ),
          child: BlocListener<LoginBloc, LoginState>(
            listener: (context, state) {
              state.map(
                initial: (_) {},
                loading: (_) {},
                success: (state) {
                  if (state.employee.role == Role.administrator) {
                    context.goNamed(RoutesNames.department);
                  } else if (state.employee.role == Role.headOfDepartment) {
                    context.goNamed(RoutesNames.taskForHeadOfDepartment);
                  }
                },
                failure: (state) {
                  CustomSnackBar.showError(context, state.message);
                },
              );
            },
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextFormField(
                    onChanged: (_) {
                      setState(() {});
                    },
                    controller: _emailController,
                    validator: (value) {
                      return Validator.emailValidate(value!);
                    },
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    hintText: AppStrings.email,
                    suffixIcon: _emailController.text.isNotEmpty
                        ? IconButton(
                            onPressed: () {
                              setState(() {
                                _emailController.clear();
                              });
                            },
                            icon: const Icon(Icons.clear),
                          )
                        : null,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  CustomTextFormField(
                    controller: _passwordController,
                    validator: (value) {
                      return Validator.emptyValidate(value!);
                    },
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: !isPasswordVisible,
                    hintText: AppStrings.password,
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                      child: Icon(
                        isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RoundedElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        context.read<LoginBloc>().add(
                              LoginEvent.signIn(
                                  email: _emailController.text,
                                  password: _passwordController.text),
                            );
                      }
                    },
                    widget: BlocBuilder<LoginBloc, LoginState>(
                      builder: (context, state) {
                        return state.maybeMap(loading: (_) {
                          return CircularProgressIndicator(
                            color: Colors.white,
                          );
                        }, orElse: () {
                          return Text(
                            AppStrings.login,
                            style: const TextStyle(
                                color: AppColors.whiteColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          );
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
