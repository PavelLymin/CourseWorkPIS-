import 'package:course_work/domain/models/department.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'department_dto.g.dart';

@JsonSerializable()
class DepartmentDto {
  DepartmentDto({
    required this.id,
    required this.name,
  });

  final String? id;
  final String name;

  Department toDomain() => Department(
        id: id,
        name: name,
      );

  factory DepartmentDto.fromDomain(Department object) => DepartmentDto(
        id: object.id,
        name: object.name,
      );

  factory DepartmentDto.fromJson(Map<String, dynamic> json) =>
      _$DepartmentDtoFromJson(json);

  Map<String, dynamic> toJson() => _$DepartmentDtoToJson(this);
}
