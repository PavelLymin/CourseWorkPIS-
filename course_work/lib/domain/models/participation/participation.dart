import 'package:freezed_annotation/freezed_annotation.dart';

import '../employee/employee.dart';
import '../task/task.dart';

part 'participation.freezed.dart';

@freezed
class ParticipationModel with _$ParticipationModel {
  const factory ParticipationModel({
    required TaskModel task,
    required List<EmployeeModel> employees,
  }) = _ParticipationModel;
}
