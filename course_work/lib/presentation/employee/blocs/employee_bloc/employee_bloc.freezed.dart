// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmployeeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeeModel employee, int? departmentId)
        addEmployee,
    required TResult Function(int employeeId, int? departmentId) deleteEmployee,
    required TResult Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int? departmentId)
        updateEmployee,
    required TResult Function(int departmentId) loadEmployeeByDepartmentId,
    required TResult Function() loadAllEmployees,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeModel employee, int? departmentId)? addEmployee,
    TResult? Function(int employeeId, int? departmentId)? deleteEmployee,
    TResult? Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int? departmentId)?
        updateEmployee,
    TResult? Function(int departmentId)? loadEmployeeByDepartmentId,
    TResult? Function()? loadAllEmployees,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeModel employee, int? departmentId)? addEmployee,
    TResult Function(int employeeId, int? departmentId)? deleteEmployee,
    TResult Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int? departmentId)?
        updateEmployee,
    TResult Function(int departmentId)? loadEmployeeByDepartmentId,
    TResult Function()? loadAllEmployees,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddEmployee value) addEmployee,
    required TResult Function(_DeleteEmployee value) deleteEmployee,
    required TResult Function(_UpdateEmployee value) updateEmployee,
    required TResult Function(_LoadEmployeeByDepartmentId value)
        loadEmployeeByDepartmentId,
    required TResult Function(_LoadAllEmployees value) loadAllEmployees,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddEmployee value)? addEmployee,
    TResult? Function(_DeleteEmployee value)? deleteEmployee,
    TResult? Function(_UpdateEmployee value)? updateEmployee,
    TResult? Function(_LoadEmployeeByDepartmentId value)?
        loadEmployeeByDepartmentId,
    TResult? Function(_LoadAllEmployees value)? loadAllEmployees,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddEmployee value)? addEmployee,
    TResult Function(_DeleteEmployee value)? deleteEmployee,
    TResult Function(_UpdateEmployee value)? updateEmployee,
    TResult Function(_LoadEmployeeByDepartmentId value)?
        loadEmployeeByDepartmentId,
    TResult Function(_LoadAllEmployees value)? loadAllEmployees,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeEventCopyWith<$Res> {
  factory $EmployeeEventCopyWith(
          EmployeeEvent value, $Res Function(EmployeeEvent) then) =
      _$EmployeeEventCopyWithImpl<$Res, EmployeeEvent>;
}

/// @nodoc
class _$EmployeeEventCopyWithImpl<$Res, $Val extends EmployeeEvent>
    implements $EmployeeEventCopyWith<$Res> {
  _$EmployeeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddEmployeeImplCopyWith<$Res> {
  factory _$$AddEmployeeImplCopyWith(
          _$AddEmployeeImpl value, $Res Function(_$AddEmployeeImpl) then) =
      __$$AddEmployeeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EmployeeModel employee, int? departmentId});

  $EmployeeModelCopyWith<$Res> get employee;
}

/// @nodoc
class __$$AddEmployeeImplCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res, _$AddEmployeeImpl>
    implements _$$AddEmployeeImplCopyWith<$Res> {
  __$$AddEmployeeImplCopyWithImpl(
      _$AddEmployeeImpl _value, $Res Function(_$AddEmployeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee = null,
    Object? departmentId = freezed,
  }) {
    return _then(_$AddEmployeeImpl(
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as EmployeeModel,
      departmentId: freezed == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmployeeModelCopyWith<$Res> get employee {
    return $EmployeeModelCopyWith<$Res>(_value.employee, (value) {
      return _then(_value.copyWith(employee: value));
    });
  }
}

/// @nodoc

class _$AddEmployeeImpl implements _AddEmployee {
  const _$AddEmployeeImpl({required this.employee, this.departmentId});

  @override
  final EmployeeModel employee;
  @override
  final int? departmentId;

  @override
  String toString() {
    return 'EmployeeEvent.addEmployee(employee: $employee, departmentId: $departmentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddEmployeeImpl &&
            (identical(other.employee, employee) ||
                other.employee == employee) &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, employee, departmentId);

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddEmployeeImplCopyWith<_$AddEmployeeImpl> get copyWith =>
      __$$AddEmployeeImplCopyWithImpl<_$AddEmployeeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeeModel employee, int? departmentId)
        addEmployee,
    required TResult Function(int employeeId, int? departmentId) deleteEmployee,
    required TResult Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int? departmentId)
        updateEmployee,
    required TResult Function(int departmentId) loadEmployeeByDepartmentId,
    required TResult Function() loadAllEmployees,
  }) {
    return addEmployee(employee, departmentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeModel employee, int? departmentId)? addEmployee,
    TResult? Function(int employeeId, int? departmentId)? deleteEmployee,
    TResult? Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int? departmentId)?
        updateEmployee,
    TResult? Function(int departmentId)? loadEmployeeByDepartmentId,
    TResult? Function()? loadAllEmployees,
  }) {
    return addEmployee?.call(employee, departmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeModel employee, int? departmentId)? addEmployee,
    TResult Function(int employeeId, int? departmentId)? deleteEmployee,
    TResult Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int? departmentId)?
        updateEmployee,
    TResult Function(int departmentId)? loadEmployeeByDepartmentId,
    TResult Function()? loadAllEmployees,
    required TResult orElse(),
  }) {
    if (addEmployee != null) {
      return addEmployee(employee, departmentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddEmployee value) addEmployee,
    required TResult Function(_DeleteEmployee value) deleteEmployee,
    required TResult Function(_UpdateEmployee value) updateEmployee,
    required TResult Function(_LoadEmployeeByDepartmentId value)
        loadEmployeeByDepartmentId,
    required TResult Function(_LoadAllEmployees value) loadAllEmployees,
  }) {
    return addEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddEmployee value)? addEmployee,
    TResult? Function(_DeleteEmployee value)? deleteEmployee,
    TResult? Function(_UpdateEmployee value)? updateEmployee,
    TResult? Function(_LoadEmployeeByDepartmentId value)?
        loadEmployeeByDepartmentId,
    TResult? Function(_LoadAllEmployees value)? loadAllEmployees,
  }) {
    return addEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddEmployee value)? addEmployee,
    TResult Function(_DeleteEmployee value)? deleteEmployee,
    TResult Function(_UpdateEmployee value)? updateEmployee,
    TResult Function(_LoadEmployeeByDepartmentId value)?
        loadEmployeeByDepartmentId,
    TResult Function(_LoadAllEmployees value)? loadAllEmployees,
    required TResult orElse(),
  }) {
    if (addEmployee != null) {
      return addEmployee(this);
    }
    return orElse();
  }
}

abstract class _AddEmployee implements EmployeeEvent {
  const factory _AddEmployee(
      {required final EmployeeModel employee,
      final int? departmentId}) = _$AddEmployeeImpl;

  EmployeeModel get employee;
  int? get departmentId;

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddEmployeeImplCopyWith<_$AddEmployeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteEmployeeImplCopyWith<$Res> {
  factory _$$DeleteEmployeeImplCopyWith(_$DeleteEmployeeImpl value,
          $Res Function(_$DeleteEmployeeImpl) then) =
      __$$DeleteEmployeeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int employeeId, int? departmentId});
}

/// @nodoc
class __$$DeleteEmployeeImplCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res, _$DeleteEmployeeImpl>
    implements _$$DeleteEmployeeImplCopyWith<$Res> {
  __$$DeleteEmployeeImplCopyWithImpl(
      _$DeleteEmployeeImpl _value, $Res Function(_$DeleteEmployeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeId = null,
    Object? departmentId = freezed,
  }) {
    return _then(_$DeleteEmployeeImpl(
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int,
      departmentId: freezed == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$DeleteEmployeeImpl implements _DeleteEmployee {
  const _$DeleteEmployeeImpl({required this.employeeId, this.departmentId});

  @override
  final int employeeId;
  @override
  final int? departmentId;

  @override
  String toString() {
    return 'EmployeeEvent.deleteEmployee(employeeId: $employeeId, departmentId: $departmentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteEmployeeImpl &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, employeeId, departmentId);

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteEmployeeImplCopyWith<_$DeleteEmployeeImpl> get copyWith =>
      __$$DeleteEmployeeImplCopyWithImpl<_$DeleteEmployeeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeeModel employee, int? departmentId)
        addEmployee,
    required TResult Function(int employeeId, int? departmentId) deleteEmployee,
    required TResult Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int? departmentId)
        updateEmployee,
    required TResult Function(int departmentId) loadEmployeeByDepartmentId,
    required TResult Function() loadAllEmployees,
  }) {
    return deleteEmployee(employeeId, departmentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeModel employee, int? departmentId)? addEmployee,
    TResult? Function(int employeeId, int? departmentId)? deleteEmployee,
    TResult? Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int? departmentId)?
        updateEmployee,
    TResult? Function(int departmentId)? loadEmployeeByDepartmentId,
    TResult? Function()? loadAllEmployees,
  }) {
    return deleteEmployee?.call(employeeId, departmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeModel employee, int? departmentId)? addEmployee,
    TResult Function(int employeeId, int? departmentId)? deleteEmployee,
    TResult Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int? departmentId)?
        updateEmployee,
    TResult Function(int departmentId)? loadEmployeeByDepartmentId,
    TResult Function()? loadAllEmployees,
    required TResult orElse(),
  }) {
    if (deleteEmployee != null) {
      return deleteEmployee(employeeId, departmentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddEmployee value) addEmployee,
    required TResult Function(_DeleteEmployee value) deleteEmployee,
    required TResult Function(_UpdateEmployee value) updateEmployee,
    required TResult Function(_LoadEmployeeByDepartmentId value)
        loadEmployeeByDepartmentId,
    required TResult Function(_LoadAllEmployees value) loadAllEmployees,
  }) {
    return deleteEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddEmployee value)? addEmployee,
    TResult? Function(_DeleteEmployee value)? deleteEmployee,
    TResult? Function(_UpdateEmployee value)? updateEmployee,
    TResult? Function(_LoadEmployeeByDepartmentId value)?
        loadEmployeeByDepartmentId,
    TResult? Function(_LoadAllEmployees value)? loadAllEmployees,
  }) {
    return deleteEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddEmployee value)? addEmployee,
    TResult Function(_DeleteEmployee value)? deleteEmployee,
    TResult Function(_UpdateEmployee value)? updateEmployee,
    TResult Function(_LoadEmployeeByDepartmentId value)?
        loadEmployeeByDepartmentId,
    TResult Function(_LoadAllEmployees value)? loadAllEmployees,
    required TResult orElse(),
  }) {
    if (deleteEmployee != null) {
      return deleteEmployee(this);
    }
    return orElse();
  }
}

abstract class _DeleteEmployee implements EmployeeEvent {
  const factory _DeleteEmployee(
      {required final int employeeId,
      final int? departmentId}) = _$DeleteEmployeeImpl;

  int get employeeId;
  int? get departmentId;

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteEmployeeImplCopyWith<_$DeleteEmployeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateEmployeeImplCopyWith<$Res> {
  factory _$$UpdateEmployeeImplCopyWith(_$UpdateEmployeeImpl value,
          $Res Function(_$UpdateEmployeeImpl) then) =
      __$$UpdateEmployeeImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {EmployeeModel originalEmployee,
      EmployeeModel changedEmployee,
      int? departmentId});

  $EmployeeModelCopyWith<$Res> get originalEmployee;
  $EmployeeModelCopyWith<$Res> get changedEmployee;
}

/// @nodoc
class __$$UpdateEmployeeImplCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res, _$UpdateEmployeeImpl>
    implements _$$UpdateEmployeeImplCopyWith<$Res> {
  __$$UpdateEmployeeImplCopyWithImpl(
      _$UpdateEmployeeImpl _value, $Res Function(_$UpdateEmployeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originalEmployee = null,
    Object? changedEmployee = null,
    Object? departmentId = freezed,
  }) {
    return _then(_$UpdateEmployeeImpl(
      originalEmployee: null == originalEmployee
          ? _value.originalEmployee
          : originalEmployee // ignore: cast_nullable_to_non_nullable
              as EmployeeModel,
      changedEmployee: null == changedEmployee
          ? _value.changedEmployee
          : changedEmployee // ignore: cast_nullable_to_non_nullable
              as EmployeeModel,
      departmentId: freezed == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmployeeModelCopyWith<$Res> get originalEmployee {
    return $EmployeeModelCopyWith<$Res>(_value.originalEmployee, (value) {
      return _then(_value.copyWith(originalEmployee: value));
    });
  }

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmployeeModelCopyWith<$Res> get changedEmployee {
    return $EmployeeModelCopyWith<$Res>(_value.changedEmployee, (value) {
      return _then(_value.copyWith(changedEmployee: value));
    });
  }
}

/// @nodoc

class _$UpdateEmployeeImpl implements _UpdateEmployee {
  const _$UpdateEmployeeImpl(
      {required this.originalEmployee,
      required this.changedEmployee,
      this.departmentId});

  @override
  final EmployeeModel originalEmployee;
  @override
  final EmployeeModel changedEmployee;
  @override
  final int? departmentId;

  @override
  String toString() {
    return 'EmployeeEvent.updateEmployee(originalEmployee: $originalEmployee, changedEmployee: $changedEmployee, departmentId: $departmentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateEmployeeImpl &&
            (identical(other.originalEmployee, originalEmployee) ||
                other.originalEmployee == originalEmployee) &&
            (identical(other.changedEmployee, changedEmployee) ||
                other.changedEmployee == changedEmployee) &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, originalEmployee, changedEmployee, departmentId);

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateEmployeeImplCopyWith<_$UpdateEmployeeImpl> get copyWith =>
      __$$UpdateEmployeeImplCopyWithImpl<_$UpdateEmployeeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeeModel employee, int? departmentId)
        addEmployee,
    required TResult Function(int employeeId, int? departmentId) deleteEmployee,
    required TResult Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int? departmentId)
        updateEmployee,
    required TResult Function(int departmentId) loadEmployeeByDepartmentId,
    required TResult Function() loadAllEmployees,
  }) {
    return updateEmployee(originalEmployee, changedEmployee, departmentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeModel employee, int? departmentId)? addEmployee,
    TResult? Function(int employeeId, int? departmentId)? deleteEmployee,
    TResult? Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int? departmentId)?
        updateEmployee,
    TResult? Function(int departmentId)? loadEmployeeByDepartmentId,
    TResult? Function()? loadAllEmployees,
  }) {
    return updateEmployee?.call(
        originalEmployee, changedEmployee, departmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeModel employee, int? departmentId)? addEmployee,
    TResult Function(int employeeId, int? departmentId)? deleteEmployee,
    TResult Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int? departmentId)?
        updateEmployee,
    TResult Function(int departmentId)? loadEmployeeByDepartmentId,
    TResult Function()? loadAllEmployees,
    required TResult orElse(),
  }) {
    if (updateEmployee != null) {
      return updateEmployee(originalEmployee, changedEmployee, departmentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddEmployee value) addEmployee,
    required TResult Function(_DeleteEmployee value) deleteEmployee,
    required TResult Function(_UpdateEmployee value) updateEmployee,
    required TResult Function(_LoadEmployeeByDepartmentId value)
        loadEmployeeByDepartmentId,
    required TResult Function(_LoadAllEmployees value) loadAllEmployees,
  }) {
    return updateEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddEmployee value)? addEmployee,
    TResult? Function(_DeleteEmployee value)? deleteEmployee,
    TResult? Function(_UpdateEmployee value)? updateEmployee,
    TResult? Function(_LoadEmployeeByDepartmentId value)?
        loadEmployeeByDepartmentId,
    TResult? Function(_LoadAllEmployees value)? loadAllEmployees,
  }) {
    return updateEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddEmployee value)? addEmployee,
    TResult Function(_DeleteEmployee value)? deleteEmployee,
    TResult Function(_UpdateEmployee value)? updateEmployee,
    TResult Function(_LoadEmployeeByDepartmentId value)?
        loadEmployeeByDepartmentId,
    TResult Function(_LoadAllEmployees value)? loadAllEmployees,
    required TResult orElse(),
  }) {
    if (updateEmployee != null) {
      return updateEmployee(this);
    }
    return orElse();
  }
}

abstract class _UpdateEmployee implements EmployeeEvent {
  const factory _UpdateEmployee(
      {required final EmployeeModel originalEmployee,
      required final EmployeeModel changedEmployee,
      final int? departmentId}) = _$UpdateEmployeeImpl;

  EmployeeModel get originalEmployee;
  EmployeeModel get changedEmployee;
  int? get departmentId;

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateEmployeeImplCopyWith<_$UpdateEmployeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadEmployeeByDepartmentIdImplCopyWith<$Res> {
  factory _$$LoadEmployeeByDepartmentIdImplCopyWith(
          _$LoadEmployeeByDepartmentIdImpl value,
          $Res Function(_$LoadEmployeeByDepartmentIdImpl) then) =
      __$$LoadEmployeeByDepartmentIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int departmentId});
}

/// @nodoc
class __$$LoadEmployeeByDepartmentIdImplCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res, _$LoadEmployeeByDepartmentIdImpl>
    implements _$$LoadEmployeeByDepartmentIdImplCopyWith<$Res> {
  __$$LoadEmployeeByDepartmentIdImplCopyWithImpl(
      _$LoadEmployeeByDepartmentIdImpl _value,
      $Res Function(_$LoadEmployeeByDepartmentIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departmentId = null,
  }) {
    return _then(_$LoadEmployeeByDepartmentIdImpl(
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadEmployeeByDepartmentIdImpl implements _LoadEmployeeByDepartmentId {
  const _$LoadEmployeeByDepartmentIdImpl({required this.departmentId});

  @override
  final int departmentId;

  @override
  String toString() {
    return 'EmployeeEvent.loadEmployeeByDepartmentId(departmentId: $departmentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadEmployeeByDepartmentIdImpl &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, departmentId);

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadEmployeeByDepartmentIdImplCopyWith<_$LoadEmployeeByDepartmentIdImpl>
      get copyWith => __$$LoadEmployeeByDepartmentIdImplCopyWithImpl<
          _$LoadEmployeeByDepartmentIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeeModel employee, int? departmentId)
        addEmployee,
    required TResult Function(int employeeId, int? departmentId) deleteEmployee,
    required TResult Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int? departmentId)
        updateEmployee,
    required TResult Function(int departmentId) loadEmployeeByDepartmentId,
    required TResult Function() loadAllEmployees,
  }) {
    return loadEmployeeByDepartmentId(departmentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeModel employee, int? departmentId)? addEmployee,
    TResult? Function(int employeeId, int? departmentId)? deleteEmployee,
    TResult? Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int? departmentId)?
        updateEmployee,
    TResult? Function(int departmentId)? loadEmployeeByDepartmentId,
    TResult? Function()? loadAllEmployees,
  }) {
    return loadEmployeeByDepartmentId?.call(departmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeModel employee, int? departmentId)? addEmployee,
    TResult Function(int employeeId, int? departmentId)? deleteEmployee,
    TResult Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int? departmentId)?
        updateEmployee,
    TResult Function(int departmentId)? loadEmployeeByDepartmentId,
    TResult Function()? loadAllEmployees,
    required TResult orElse(),
  }) {
    if (loadEmployeeByDepartmentId != null) {
      return loadEmployeeByDepartmentId(departmentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddEmployee value) addEmployee,
    required TResult Function(_DeleteEmployee value) deleteEmployee,
    required TResult Function(_UpdateEmployee value) updateEmployee,
    required TResult Function(_LoadEmployeeByDepartmentId value)
        loadEmployeeByDepartmentId,
    required TResult Function(_LoadAllEmployees value) loadAllEmployees,
  }) {
    return loadEmployeeByDepartmentId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddEmployee value)? addEmployee,
    TResult? Function(_DeleteEmployee value)? deleteEmployee,
    TResult? Function(_UpdateEmployee value)? updateEmployee,
    TResult? Function(_LoadEmployeeByDepartmentId value)?
        loadEmployeeByDepartmentId,
    TResult? Function(_LoadAllEmployees value)? loadAllEmployees,
  }) {
    return loadEmployeeByDepartmentId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddEmployee value)? addEmployee,
    TResult Function(_DeleteEmployee value)? deleteEmployee,
    TResult Function(_UpdateEmployee value)? updateEmployee,
    TResult Function(_LoadEmployeeByDepartmentId value)?
        loadEmployeeByDepartmentId,
    TResult Function(_LoadAllEmployees value)? loadAllEmployees,
    required TResult orElse(),
  }) {
    if (loadEmployeeByDepartmentId != null) {
      return loadEmployeeByDepartmentId(this);
    }
    return orElse();
  }
}

abstract class _LoadEmployeeByDepartmentId implements EmployeeEvent {
  const factory _LoadEmployeeByDepartmentId({required final int departmentId}) =
      _$LoadEmployeeByDepartmentIdImpl;

  int get departmentId;

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadEmployeeByDepartmentIdImplCopyWith<_$LoadEmployeeByDepartmentIdImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadAllEmployeesImplCopyWith<$Res> {
  factory _$$LoadAllEmployeesImplCopyWith(_$LoadAllEmployeesImpl value,
          $Res Function(_$LoadAllEmployeesImpl) then) =
      __$$LoadAllEmployeesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadAllEmployeesImplCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res, _$LoadAllEmployeesImpl>
    implements _$$LoadAllEmployeesImplCopyWith<$Res> {
  __$$LoadAllEmployeesImplCopyWithImpl(_$LoadAllEmployeesImpl _value,
      $Res Function(_$LoadAllEmployeesImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadAllEmployeesImpl implements _LoadAllEmployees {
  const _$LoadAllEmployeesImpl();

  @override
  String toString() {
    return 'EmployeeEvent.loadAllEmployees()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadAllEmployeesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeeModel employee, int? departmentId)
        addEmployee,
    required TResult Function(int employeeId, int? departmentId) deleteEmployee,
    required TResult Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int? departmentId)
        updateEmployee,
    required TResult Function(int departmentId) loadEmployeeByDepartmentId,
    required TResult Function() loadAllEmployees,
  }) {
    return loadAllEmployees();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeModel employee, int? departmentId)? addEmployee,
    TResult? Function(int employeeId, int? departmentId)? deleteEmployee,
    TResult? Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int? departmentId)?
        updateEmployee,
    TResult? Function(int departmentId)? loadEmployeeByDepartmentId,
    TResult? Function()? loadAllEmployees,
  }) {
    return loadAllEmployees?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeModel employee, int? departmentId)? addEmployee,
    TResult Function(int employeeId, int? departmentId)? deleteEmployee,
    TResult Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int? departmentId)?
        updateEmployee,
    TResult Function(int departmentId)? loadEmployeeByDepartmentId,
    TResult Function()? loadAllEmployees,
    required TResult orElse(),
  }) {
    if (loadAllEmployees != null) {
      return loadAllEmployees();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddEmployee value) addEmployee,
    required TResult Function(_DeleteEmployee value) deleteEmployee,
    required TResult Function(_UpdateEmployee value) updateEmployee,
    required TResult Function(_LoadEmployeeByDepartmentId value)
        loadEmployeeByDepartmentId,
    required TResult Function(_LoadAllEmployees value) loadAllEmployees,
  }) {
    return loadAllEmployees(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddEmployee value)? addEmployee,
    TResult? Function(_DeleteEmployee value)? deleteEmployee,
    TResult? Function(_UpdateEmployee value)? updateEmployee,
    TResult? Function(_LoadEmployeeByDepartmentId value)?
        loadEmployeeByDepartmentId,
    TResult? Function(_LoadAllEmployees value)? loadAllEmployees,
  }) {
    return loadAllEmployees?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddEmployee value)? addEmployee,
    TResult Function(_DeleteEmployee value)? deleteEmployee,
    TResult Function(_UpdateEmployee value)? updateEmployee,
    TResult Function(_LoadEmployeeByDepartmentId value)?
        loadEmployeeByDepartmentId,
    TResult Function(_LoadAllEmployees value)? loadAllEmployees,
    required TResult orElse(),
  }) {
    if (loadAllEmployees != null) {
      return loadAllEmployees(this);
    }
    return orElse();
  }
}

abstract class _LoadAllEmployees implements EmployeeEvent {
  const factory _LoadAllEmployees() = _$LoadAllEmployeesImpl;
}

/// @nodoc
mixin _$EmployeeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<EmployeeModel> employees) loaded,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<EmployeeModel> employees)? loaded,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<EmployeeModel> employees)? loaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeStateCopyWith<$Res> {
  factory $EmployeeStateCopyWith(
          EmployeeState value, $Res Function(EmployeeState) then) =
      _$EmployeeStateCopyWithImpl<$Res, EmployeeState>;
}

/// @nodoc
class _$EmployeeStateCopyWithImpl<$Res, $Val extends EmployeeState>
    implements $EmployeeStateCopyWith<$Res> {
  _$EmployeeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmployeeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$EmployeeStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'EmployeeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<EmployeeModel> employees) loaded,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<EmployeeModel> employees)? loaded,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<EmployeeModel> employees)? loaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements EmployeeState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<EmployeeModel> employees});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$EmployeeStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employees = null,
  }) {
    return _then(_$LoadedImpl(
      employees: null == employees
          ? _value._employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<EmployeeModel>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required final List<EmployeeModel> employees})
      : _employees = employees;

  final List<EmployeeModel> _employees;
  @override
  List<EmployeeModel> get employees {
    if (_employees is EqualUnmodifiableListView) return _employees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_employees);
  }

  @override
  String toString() {
    return 'EmployeeState.loaded(employees: $employees)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._employees, _employees));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_employees));

  /// Create a copy of EmployeeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<EmployeeModel> employees) loaded,
    required TResult Function(String message) failure,
  }) {
    return loaded(employees);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<EmployeeModel> employees)? loaded,
    TResult? Function(String message)? failure,
  }) {
    return loaded?.call(employees);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<EmployeeModel> employees)? loaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(employees);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements EmployeeState {
  const factory _Loaded({required final List<EmployeeModel> employees}) =
      _$LoadedImpl;

  List<EmployeeModel> get employees;

  /// Create a copy of EmployeeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$EmployeeStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'EmployeeState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of EmployeeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<EmployeeModel> employees) loaded,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<EmployeeModel> employees)? loaded,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<EmployeeModel> employees)? loaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements EmployeeState {
  const factory _Failure({required final String message}) = _$FailureImpl;

  String get message;

  /// Create a copy of EmployeeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
