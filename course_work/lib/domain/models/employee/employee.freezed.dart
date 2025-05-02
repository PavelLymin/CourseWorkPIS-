// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmployeeModel {
  int? get id => throw _privateConstructorUsedError;
  int? get departmentId => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get position => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get login => throw _privateConstructorUsedError;

  /// Create a copy of EmployeeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmployeeModelCopyWith<EmployeeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeModelCopyWith<$Res> {
  factory $EmployeeModelCopyWith(
          EmployeeModel value, $Res Function(EmployeeModel) then) =
      _$EmployeeModelCopyWithImpl<$Res, EmployeeModel>;
  @useResult
  $Res call(
      {int? id,
      int? departmentId,
      String firstName,
      String lastName,
      String position,
      String role,
      String login});
}

/// @nodoc
class _$EmployeeModelCopyWithImpl<$Res, $Val extends EmployeeModel>
    implements $EmployeeModelCopyWith<$Res> {
  _$EmployeeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmployeeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? departmentId = freezed,
    Object? firstName = null,
    Object? lastName = null,
    Object? position = null,
    Object? role = null,
    Object? login = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      departmentId: freezed == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmployeeModelImplCopyWith<$Res>
    implements $EmployeeModelCopyWith<$Res> {
  factory _$$EmployeeModelImplCopyWith(
          _$EmployeeModelImpl value, $Res Function(_$EmployeeModelImpl) then) =
      __$$EmployeeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? departmentId,
      String firstName,
      String lastName,
      String position,
      String role,
      String login});
}

/// @nodoc
class __$$EmployeeModelImplCopyWithImpl<$Res>
    extends _$EmployeeModelCopyWithImpl<$Res, _$EmployeeModelImpl>
    implements _$$EmployeeModelImplCopyWith<$Res> {
  __$$EmployeeModelImplCopyWithImpl(
      _$EmployeeModelImpl _value, $Res Function(_$EmployeeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? departmentId = freezed,
    Object? firstName = null,
    Object? lastName = null,
    Object? position = null,
    Object? role = null,
    Object? login = null,
  }) {
    return _then(_$EmployeeModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      departmentId: freezed == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmployeeModelImpl implements _EmployeeModel {
  const _$EmployeeModelImpl(
      {this.id,
      this.departmentId,
      required this.firstName,
      required this.lastName,
      required this.position,
      required this.role,
      required this.login});

  @override
  final int? id;
  @override
  final int? departmentId;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String position;
  @override
  final String role;
  @override
  final String login;

  @override
  String toString() {
    return 'EmployeeModel(id: $id, departmentId: $departmentId, firstName: $firstName, lastName: $lastName, position: $position, role: $role, login: $login)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.login, login) || other.login == login));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, departmentId, firstName,
      lastName, position, role, login);

  /// Create a copy of EmployeeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeModelImplCopyWith<_$EmployeeModelImpl> get copyWith =>
      __$$EmployeeModelImplCopyWithImpl<_$EmployeeModelImpl>(this, _$identity);
}

abstract class _EmployeeModel implements EmployeeModel {
  const factory _EmployeeModel(
      {final int? id,
      final int? departmentId,
      required final String firstName,
      required final String lastName,
      required final String position,
      required final String role,
      required final String login}) = _$EmployeeModelImpl;

  @override
  int? get id;
  @override
  int? get departmentId;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get position;
  @override
  String get role;
  @override
  String get login;

  /// Create a copy of EmployeeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmployeeModelImplCopyWith<_$EmployeeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
