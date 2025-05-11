import 'package:course_work/data/data_base/data_base.dart';
import 'package:course_work/domain/models/department/department.dart';
import 'package:drift/drift.dart';

class DepartmentDto {
  DepartmentDto({
    this.id,
    required this.title,
  });

  final int? id;
  final String title;

  DepartmentModel toDomain() => DepartmentModel(
        id: id,
        title: title,
      );

  factory DepartmentDto.fromDomain(DepartmentModel object) => DepartmentDto(
        id: object.id,
        title: object.title,
      );

  DepartmentsCompanion toDataBase() => DepartmentsCompanion(
        title: Value(title),
      );

  factory DepartmentDto.fromDataBase(Department object) => DepartmentDto(
        id: object.id,
        title: object.title,
      );
}
