import 'package:course_work/core/utils/app_colors.dart';
import 'package:course_work/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HeadOfDepartment extends StatefulWidget {
  const HeadOfDepartment({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  @override
  State<HeadOfDepartment> createState() => _HeadOfDepartmentState();
}

class _HeadOfDepartmentState extends State<HeadOfDepartment> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.primaryColor,
        onTap: (index) => _onItemTapped(context, index),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: AppStrings.calendarTask,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            label: AppStrings.tasks,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: AppStrings.profile,
          ),
        ],
      ),
    );
  }

  void _onItemTapped(BuildContext context, int index) {
    widget.navigationShell.goBranch(index,
        initialLocation: index == widget.navigationShell.currentIndex);
    setState(() {
      _selectedIndex = index;
    });
  }
}
