import 'package:course_work/domain/models/employee/employee.dart';

class SearchEmployee {
  List<EmployeeModel> call({
    required String query,
    required List<EmployeeModel> employees,
  }) {
    final queryToLowerCase = query.toLowerCase();

    final filteredEmployees = employees
        .where((employee) => (employee.firstName.contains(queryToLowerCase) ||
            employee.lastName.contains(queryToLowerCase)))
        .toList();

    return filteredEmployees;
  }
}
