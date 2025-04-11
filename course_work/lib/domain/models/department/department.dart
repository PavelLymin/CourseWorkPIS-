import 'package:freezed_annotation/freezed_annotation.dart';

part 'department.freezed.dart';

@freezed
class DepartmentModel with _$DepartmentModel {
  const factory DepartmentModel({
    int? id,
    required String title,
  }) = _DepartmentModel;
}
