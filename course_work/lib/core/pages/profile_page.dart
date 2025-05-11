import 'package:course_work/bloc/auth_bloc/auth_bloc.dart';
import 'package:course_work/bloc/current_emploee_bloc/current_employee_bloc.dart';
import 'package:course_work/core/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../domain/enums/position.dart';
import '../../domain/models/employee/employee.dart';
import '../utils/app_colors.dart';
import '../utils/app_strings.dart';
import '../widgets/profile_data.dart';
import '../widgets/rounded_elevated_button.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailNameController = TextEditingController();
  Position position = Position.teacher;
  EmployeeModel? employee;

  @override
  void initState() {
    context
        .read<CurrentEmployeeBloc>()
        .add(CurrentEmployeeEvent.loadEmployee());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.profile),
      ),
      body: Container(
        margin: const EdgeInsets.only(
          top: 50.0,
          right: 20.0,
          left: 20.0,
        ),
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(
            children: [
              BlocListener<CurrentEmployeeBloc, CurrentEmployeeState>(
                listener: (context, state) {
                  state.map(
                      loading: (_) {},
                      loaded: (state) {
                        employee = state.employee;
                        _firstNameController.text = state.employee.firstName;
                        _lastNameController.text = state.employee.lastName;
                        _emailNameController.text = state.employee.email;
                        position = state.employee.position;
                      },
                      failure: (state) {});
                },
                child: BlocBuilder<CurrentEmployeeBloc, CurrentEmployeeState>(
                  builder: (context, state) {
                    return state.maybeMap(
                      loaded: (_) => ProfileData(
                        formKey: _formKey,
                        firstNameController: _firstNameController,
                        lastNameController: _lastNameController,
                        emailNameController: _emailNameController,
                        position: position,
                        setState: (value) {
                          setState(() {
                            position = value;
                          });
                        },
                      ),
                      failure: (state) => Center(
                        child: Text(state.message),
                      ),
                      orElse: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RoundedElevatedButton(
                      color: AppColors.backGroundColor,
                      widget: BlocBuilder<CurrentEmployeeBloc,
                          CurrentEmployeeState>(
                        builder: (context, state) {
                          return state.maybeMap(loading: (_) {
                            return CircularProgressIndicator(
                              color: Colors.white,
                            );
                          }, orElse: () {
                            return Text(
                              AppStrings.update,
                              style: const TextStyle(
                                color: AppColors.whiteColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            );
                          });
                        },
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate() &&
                            employee != null) {
                          context.read<CurrentEmployeeBloc>().add(
                              CurrentEmployeeEvent.updateEmployee(
                                  originalEmployee: employee!,
                                  changedEmployee: employee!.copyWith(
                                      firstName: _firstNameController.text,
                                      lastName: _lastNameController.text,
                                      email: _emailNameController.text,
                                      position: position)));
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    RoundedElevatedButton(
                      color: AppColors.backGroundColor,
                      widget: Text(AppStrings.logOut),
                      onPressed: () {
                        context.read<AuthBloc>().add(AuthEvent.userLogOut());
                        context.goNamed(RoutesNames.login);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
