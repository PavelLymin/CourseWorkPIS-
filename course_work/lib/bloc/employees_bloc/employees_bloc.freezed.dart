// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employees_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmployeesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeeModel employee, int departmentId)
        addEmployee,
    required TResult Function(int employeeId, int departmentId) deleteEmployee,
    required TResult Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int departmentId)
        updateEmployee,
    required TResult Function(int departmentId) loadEmployeesByDepartmentId,
    required TResult Function() loadAllEmployees,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeModel employee, int departmentId)? addEmployee,
    TResult? Function(int employeeId, int departmentId)? deleteEmployee,
    TResult? Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int departmentId)?
        updateEmployee,
    TResult? Function(int departmentId)? loadEmployeesByDepartmentId,
    TResult? Function()? loadAllEmployees,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeModel employee, int departmentId)? addEmployee,
    TResult Function(int employeeId, int departmentId)? deleteEmployee,
    TResult Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int departmentId)?
        updateEmployee,
    TResult Function(int departmentId)? loadEmployeesByDepartmentId,
    TResult Function()? loadAllEmployees,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddEmployee value) addEmployee,
    required TResult Function(_DeleteEmployee value) deleteEmployee,
    required TResult Function(_UpdateEmployee value) updateEmployee,
    required TResult Function(_LoadEmployeesByDepartmentId value)
        loadEmployeesByDepartmentId,
    required TResult Function(_LoadAllEmployees value) loadAllEmployees,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddEmployee value)? addEmployee,
    TResult? Function(_DeleteEmployee value)? deleteEmployee,
    TResult? Function(_UpdateEmployee value)? updateEmployee,
    TResult? Function(_LoadEmployeesByDepartmentId value)?
        loadEmployeesByDepartmentId,
    TResult? Function(_LoadAllEmployees value)? loadAllEmployees,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddEmployee value)? addEmployee,
    TResult Function(_DeleteEmployee value)? deleteEmployee,
    TResult Function(_UpdateEmployee value)? updateEmployee,
    TResult Function(_LoadEmployeesByDepartmentId value)?
        loadEmployeesByDepartmentId,
    TResult Function(_LoadAllEmployees value)? loadAllEmployees,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeesEventCopyWith<$Res> {
  factory $EmployeesEventCopyWith(
          EmployeesEvent value, $Res Function(EmployeesEvent) then) =
      _$EmployeesEventCopyWithImpl<$Res, EmployeesEvent>;
}

/// @nodoc
class _$EmployeesEventCopyWithImpl<$Res, $Val extends EmployeesEvent>
    implements $EmployeesEventCopyWith<$Res> {
  _$EmployeesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmployeesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddEmployeeImplCopyWith<$Res> {
  factory _$$AddEmployeeImplCopyWith(
          _$AddEmployeeImpl value, $Res Function(_$AddEmployeeImpl) then) =
      __$$AddEmployeeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EmployeeModel employee, int departmentId});

  $EmployeeModelCopyWith<$Res> get employee;
}

/// @nodoc
class __$$AddEmployeeImplCopyWithImpl<$Res>
    extends _$EmployeesEventCopyWithImpl<$Res, _$AddEmployeeImpl>
    implements _$$AddEmployeeImplCopyWith<$Res> {
  __$$AddEmployeeImplCopyWithImpl(
      _$AddEmployeeImpl _value, $Res Function(_$AddEmployeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee = null,
    Object? departmentId = null,
  }) {
    return _then(_$AddEmployeeImpl(
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as EmployeeModel,
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of EmployeesEvent
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
  const _$AddEmployeeImpl({required this.employee, required this.departmentId});

  @override
  final EmployeeModel employee;
  @override
  final int departmentId;

  @override
  String toString() {
    return 'EmployeesEvent.addEmployee(employee: $employee, departmentId: $departmentId)';
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

  /// Create a copy of EmployeesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddEmployeeImplCopyWith<_$AddEmployeeImpl> get copyWith =>
      __$$AddEmployeeImplCopyWithImpl<_$AddEmployeeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeeModel employee, int departmentId)
        addEmployee,
    required TResult Function(int employeeId, int departmentId) deleteEmployee,
    required TResult Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int departmentId)
        updateEmployee,
    required TResult Function(int departmentId) loadEmployeesByDepartmentId,
    required TResult Function() loadAllEmployees,
  }) {
    return addEmployee(employee, departmentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeModel employee, int departmentId)? addEmployee,
    TResult? Function(int employeeId, int departmentId)? deleteEmployee,
    TResult? Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int departmentId)?
        updateEmployee,
    TResult? Function(int departmentId)? loadEmployeesByDepartmentId,
    TResult? Function()? loadAllEmployees,
  }) {
    return addEmployee?.call(employee, departmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeModel employee, int departmentId)? addEmployee,
    TResult Function(int employeeId, int departmentId)? deleteEmployee,
    TResult Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int departmentId)?
        updateEmployee,
    TResult Function(int departmentId)? loadEmployeesByDepartmentId,
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
    required TResult Function(_LoadEmployeesByDepartmentId value)
        loadEmployeesByDepartmentId,
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
    TResult? Function(_LoadEmployeesByDepartmentId value)?
        loadEmployeesByDepartmentId,
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
    TResult Function(_LoadEmployeesByDepartmentId value)?
        loadEmployeesByDepartmentId,
    TResult Function(_LoadAllEmployees value)? loadAllEmployees,
    required TResult orElse(),
  }) {
    if (addEmployee != null) {
      return addEmployee(this);
    }
    return orElse();
  }
}

abstract class _AddEmployee implements EmployeesEvent {
  const factory _AddEmployee(
      {required final EmployeeModel employee,
      required final int departmentId}) = _$AddEmployeeImpl;

  EmployeeModel get employee;
  int get departmentId;

  /// Create a copy of EmployeesEvent
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
  $Res call({int employeeId, int departmentId});
}

/// @nodoc
class __$$DeleteEmployeeImplCopyWithImpl<$Res>
    extends _$EmployeesEventCopyWithImpl<$Res, _$DeleteEmployeeImpl>
    implements _$$DeleteEmployeeImplCopyWith<$Res> {
  __$$DeleteEmployeeImplCopyWithImpl(
      _$DeleteEmployeeImpl _value, $Res Function(_$DeleteEmployeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeId = null,
    Object? departmentId = null,
  }) {
    return _then(_$DeleteEmployeeImpl(
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int,
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteEmployeeImpl implements _DeleteEmployee {
  const _$DeleteEmployeeImpl(
      {required this.employeeId, required this.departmentId});

  @override
  final int employeeId;
  @override
  final int departmentId;

  @override
  String toString() {
    return 'EmployeesEvent.deleteEmployee(employeeId: $employeeId, departmentId: $departmentId)';
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

  /// Create a copy of EmployeesEvent
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
    required TResult Function(EmployeeModel employee, int departmentId)
        addEmployee,
    required TResult Function(int employeeId, int departmentId) deleteEmployee,
    required TResult Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int departmentId)
        updateEmployee,
    required TResult Function(int departmentId) loadEmployeesByDepartmentId,
    required TResult Function() loadAllEmployees,
  }) {
    return deleteEmployee(employeeId, departmentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeModel employee, int departmentId)? addEmployee,
    TResult? Function(int employeeId, int departmentId)? deleteEmployee,
    TResult? Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int departmentId)?
        updateEmployee,
    TResult? Function(int departmentId)? loadEmployeesByDepartmentId,
    TResult? Function()? loadAllEmployees,
  }) {
    return deleteEmployee?.call(employeeId, departmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeModel employee, int departmentId)? addEmployee,
    TResult Function(int employeeId, int departmentId)? deleteEmployee,
    TResult Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int departmentId)?
        updateEmployee,
    TResult Function(int departmentId)? loadEmployeesByDepartmentId,
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
    required TResult Function(_LoadEmployeesByDepartmentId value)
        loadEmployeesByDepartmentId,
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
    TResult? Function(_LoadEmployeesByDepartmentId value)?
        loadEmployeesByDepartmentId,
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
    TResult Function(_LoadEmployeesByDepartmentId value)?
        loadEmployeesByDepartmentId,
    TResult Function(_LoadAllEmployees value)? loadAllEmployees,
    required TResult orElse(),
  }) {
    if (deleteEmployee != null) {
      return deleteEmployee(this);
    }
    return orElse();
  }
}

abstract class _DeleteEmployee implements EmployeesEvent {
  const factory _DeleteEmployee(
      {required final int employeeId,
      required final int departmentId}) = _$DeleteEmployeeImpl;

  int get employeeId;
  int get departmentId;

  /// Create a copy of EmployeesEvent
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
      int departmentId});

  $EmployeeModelCopyWith<$Res> get originalEmployee;
  $EmployeeModelCopyWith<$Res> get changedEmployee;
}

/// @nodoc
class __$$UpdateEmployeeImplCopyWithImpl<$Res>
    extends _$EmployeesEventCopyWithImpl<$Res, _$UpdateEmployeeImpl>
    implements _$$UpdateEmployeeImplCopyWith<$Res> {
  __$$UpdateEmployeeImplCopyWithImpl(
      _$UpdateEmployeeImpl _value, $Res Function(_$UpdateEmployeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originalEmployee = null,
    Object? changedEmployee = null,
    Object? departmentId = null,
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
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of EmployeesEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmployeeModelCopyWith<$Res> get originalEmployee {
    return $EmployeeModelCopyWith<$Res>(_value.originalEmployee, (value) {
      return _then(_value.copyWith(originalEmployee: value));
    });
  }

  /// Create a copy of EmployeesEvent
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
      required this.departmentId});

  @override
  final EmployeeModel originalEmployee;
  @override
  final EmployeeModel changedEmployee;
  @override
  final int departmentId;

  @override
  String toString() {
    return 'EmployeesEvent.updateEmployee(originalEmployee: $originalEmployee, changedEmployee: $changedEmployee, departmentId: $departmentId)';
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

  /// Create a copy of EmployeesEvent
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
    required TResult Function(EmployeeModel employee, int departmentId)
        addEmployee,
    required TResult Function(int employeeId, int departmentId) deleteEmployee,
    required TResult Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int departmentId)
        updateEmployee,
    required TResult Function(int departmentId) loadEmployeesByDepartmentId,
    required TResult Function() loadAllEmployees,
  }) {
    return updateEmployee(originalEmployee, changedEmployee, departmentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeModel employee, int departmentId)? addEmployee,
    TResult? Function(int employeeId, int departmentId)? deleteEmployee,
    TResult? Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int departmentId)?
        updateEmployee,
    TResult? Function(int departmentId)? loadEmployeesByDepartmentId,
    TResult? Function()? loadAllEmployees,
  }) {
    return updateEmployee?.call(
        originalEmployee, changedEmployee, departmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeModel employee, int departmentId)? addEmployee,
    TResult Function(int employeeId, int departmentId)? deleteEmployee,
    TResult Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int departmentId)?
        updateEmployee,
    TResult Function(int departmentId)? loadEmployeesByDepartmentId,
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
    required TResult Function(_LoadEmployeesByDepartmentId value)
        loadEmployeesByDepartmentId,
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
    TResult? Function(_LoadEmployeesByDepartmentId value)?
        loadEmployeesByDepartmentId,
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
    TResult Function(_LoadEmployeesByDepartmentId value)?
        loadEmployeesByDepartmentId,
    TResult Function(_LoadAllEmployees value)? loadAllEmployees,
    required TResult orElse(),
  }) {
    if (updateEmployee != null) {
      return updateEmployee(this);
    }
    return orElse();
  }
}

abstract class _UpdateEmployee implements EmployeesEvent {
  const factory _UpdateEmployee(
      {required final EmployeeModel originalEmployee,
      required final EmployeeModel changedEmployee,
      required final int departmentId}) = _$UpdateEmployeeImpl;

  EmployeeModel get originalEmployee;
  EmployeeModel get changedEmployee;
  int get departmentId;

  /// Create a copy of EmployeesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateEmployeeImplCopyWith<_$UpdateEmployeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadEmployeesByDepartmentIdImplCopyWith<$Res> {
  factory _$$LoadEmployeesByDepartmentIdImplCopyWith(
          _$LoadEmployeesByDepartmentIdImpl value,
          $Res Function(_$LoadEmployeesByDepartmentIdImpl) then) =
      __$$LoadEmployeesByDepartmentIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int departmentId});
}

/// @nodoc
class __$$LoadEmployeesByDepartmentIdImplCopyWithImpl<$Res>
    extends _$EmployeesEventCopyWithImpl<$Res,
        _$LoadEmployeesByDepartmentIdImpl>
    implements _$$LoadEmployeesByDepartmentIdImplCopyWith<$Res> {
  __$$LoadEmployeesByDepartmentIdImplCopyWithImpl(
      _$LoadEmployeesByDepartmentIdImpl _value,
      $Res Function(_$LoadEmployeesByDepartmentIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departmentId = null,
  }) {
    return _then(_$LoadEmployeesByDepartmentIdImpl(
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadEmployeesByDepartmentIdImpl
    implements _LoadEmployeesByDepartmentId {
  const _$LoadEmployeesByDepartmentIdImpl({required this.departmentId});

  @override
  final int departmentId;

  @override
  String toString() {
    return 'EmployeesEvent.loadEmployeesByDepartmentId(departmentId: $departmentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadEmployeesByDepartmentIdImpl &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, departmentId);

  /// Create a copy of EmployeesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadEmployeesByDepartmentIdImplCopyWith<_$LoadEmployeesByDepartmentIdImpl>
      get copyWith => __$$LoadEmployeesByDepartmentIdImplCopyWithImpl<
          _$LoadEmployeesByDepartmentIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeeModel employee, int departmentId)
        addEmployee,
    required TResult Function(int employeeId, int departmentId) deleteEmployee,
    required TResult Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int departmentId)
        updateEmployee,
    required TResult Function(int departmentId) loadEmployeesByDepartmentId,
    required TResult Function() loadAllEmployees,
  }) {
    return loadEmployeesByDepartmentId(departmentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeModel employee, int departmentId)? addEmployee,
    TResult? Function(int employeeId, int departmentId)? deleteEmployee,
    TResult? Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int departmentId)?
        updateEmployee,
    TResult? Function(int departmentId)? loadEmployeesByDepartmentId,
    TResult? Function()? loadAllEmployees,
  }) {
    return loadEmployeesByDepartmentId?.call(departmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeModel employee, int departmentId)? addEmployee,
    TResult Function(int employeeId, int departmentId)? deleteEmployee,
    TResult Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int departmentId)?
        updateEmployee,
    TResult Function(int departmentId)? loadEmployeesByDepartmentId,
    TResult Function()? loadAllEmployees,
    required TResult orElse(),
  }) {
    if (loadEmployeesByDepartmentId != null) {
      return loadEmployeesByDepartmentId(departmentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddEmployee value) addEmployee,
    required TResult Function(_DeleteEmployee value) deleteEmployee,
    required TResult Function(_UpdateEmployee value) updateEmployee,
    required TResult Function(_LoadEmployeesByDepartmentId value)
        loadEmployeesByDepartmentId,
    required TResult Function(_LoadAllEmployees value) loadAllEmployees,
  }) {
    return loadEmployeesByDepartmentId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddEmployee value)? addEmployee,
    TResult? Function(_DeleteEmployee value)? deleteEmployee,
    TResult? Function(_UpdateEmployee value)? updateEmployee,
    TResult? Function(_LoadEmployeesByDepartmentId value)?
        loadEmployeesByDepartmentId,
    TResult? Function(_LoadAllEmployees value)? loadAllEmployees,
  }) {
    return loadEmployeesByDepartmentId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddEmployee value)? addEmployee,
    TResult Function(_DeleteEmployee value)? deleteEmployee,
    TResult Function(_UpdateEmployee value)? updateEmployee,
    TResult Function(_LoadEmployeesByDepartmentId value)?
        loadEmployeesByDepartmentId,
    TResult Function(_LoadAllEmployees value)? loadAllEmployees,
    required TResult orElse(),
  }) {
    if (loadEmployeesByDepartmentId != null) {
      return loadEmployeesByDepartmentId(this);
    }
    return orElse();
  }
}

abstract class _LoadEmployeesByDepartmentId implements EmployeesEvent {
  const factory _LoadEmployeesByDepartmentId(
      {required final int departmentId}) = _$LoadEmployeesByDepartmentIdImpl;

  int get departmentId;

  /// Create a copy of EmployeesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadEmployeesByDepartmentIdImplCopyWith<_$LoadEmployeesByDepartmentIdImpl>
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
    extends _$EmployeesEventCopyWithImpl<$Res, _$LoadAllEmployeesImpl>
    implements _$$LoadAllEmployeesImplCopyWith<$Res> {
  __$$LoadAllEmployeesImplCopyWithImpl(_$LoadAllEmployeesImpl _value,
      $Res Function(_$LoadAllEmployeesImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadAllEmployeesImpl implements _LoadAllEmployees {
  const _$LoadAllEmployeesImpl();

  @override
  String toString() {
    return 'EmployeesEvent.loadAllEmployees()';
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
    required TResult Function(EmployeeModel employee, int departmentId)
        addEmployee,
    required TResult Function(int employeeId, int departmentId) deleteEmployee,
    required TResult Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int departmentId)
        updateEmployee,
    required TResult Function(int departmentId) loadEmployeesByDepartmentId,
    required TResult Function() loadAllEmployees,
  }) {
    return loadAllEmployees();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeModel employee, int departmentId)? addEmployee,
    TResult? Function(int employeeId, int departmentId)? deleteEmployee,
    TResult? Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int departmentId)?
        updateEmployee,
    TResult? Function(int departmentId)? loadEmployeesByDepartmentId,
    TResult? Function()? loadAllEmployees,
  }) {
    return loadAllEmployees?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeModel employee, int departmentId)? addEmployee,
    TResult Function(int employeeId, int departmentId)? deleteEmployee,
    TResult Function(EmployeeModel originalEmployee,
            EmployeeModel changedEmployee, int departmentId)?
        updateEmployee,
    TResult Function(int departmentId)? loadEmployeesByDepartmentId,
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
    required TResult Function(_LoadEmployeesByDepartmentId value)
        loadEmployeesByDepartmentId,
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
    TResult? Function(_LoadEmployeesByDepartmentId value)?
        loadEmployeesByDepartmentId,
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
    TResult Function(_LoadEmployeesByDepartmentId value)?
        loadEmployeesByDepartmentId,
    TResult Function(_LoadAllEmployees value)? loadAllEmployees,
    required TResult orElse(),
  }) {
    if (loadAllEmployees != null) {
      return loadAllEmployees(this);
    }
    return orElse();
  }
}

abstract class _LoadAllEmployees implements EmployeesEvent {
  const factory _LoadAllEmployees() = _$LoadAllEmployeesImpl;
}

/// @nodoc
mixin _$EmployeesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<EmployeeModel> employees) loadedEmployees,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<EmployeeModel> employees)? loadedEmployees,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<EmployeeModel> employees)? loadedEmployees,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedEmployees value) loadedEmployees,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedEmployees value)? loadedEmployees,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedEmployees value)? loadedEmployees,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeesStateCopyWith<$Res> {
  factory $EmployeesStateCopyWith(
          EmployeesState value, $Res Function(EmployeesState) then) =
      _$EmployeesStateCopyWithImpl<$Res, EmployeesState>;
}

/// @nodoc
class _$EmployeesStateCopyWithImpl<$Res, $Val extends EmployeesState>
    implements $EmployeesStateCopyWith<$Res> {
  _$EmployeesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmployeesState
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
    extends _$EmployeesStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'EmployeesState.loading()';
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
    required TResult Function(List<EmployeeModel> employees) loadedEmployees,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<EmployeeModel> employees)? loadedEmployees,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<EmployeeModel> employees)? loadedEmployees,
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
    required TResult Function(_LoadedEmployees value) loadedEmployees,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedEmployees value)? loadedEmployees,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedEmployees value)? loadedEmployees,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements EmployeesState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedEmployeesImplCopyWith<$Res> {
  factory _$$LoadedEmployeesImplCopyWith(_$LoadedEmployeesImpl value,
          $Res Function(_$LoadedEmployeesImpl) then) =
      __$$LoadedEmployeesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<EmployeeModel> employees});
}

/// @nodoc
class __$$LoadedEmployeesImplCopyWithImpl<$Res>
    extends _$EmployeesStateCopyWithImpl<$Res, _$LoadedEmployeesImpl>
    implements _$$LoadedEmployeesImplCopyWith<$Res> {
  __$$LoadedEmployeesImplCopyWithImpl(
      _$LoadedEmployeesImpl _value, $Res Function(_$LoadedEmployeesImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employees = null,
  }) {
    return _then(_$LoadedEmployeesImpl(
      employees: null == employees
          ? _value._employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<EmployeeModel>,
    ));
  }
}

/// @nodoc

class _$LoadedEmployeesImpl implements _LoadedEmployees {
  const _$LoadedEmployeesImpl({required final List<EmployeeModel> employees})
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
    return 'EmployeesState.loadedEmployees(employees: $employees)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedEmployeesImpl &&
            const DeepCollectionEquality()
                .equals(other._employees, _employees));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_employees));

  /// Create a copy of EmployeesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedEmployeesImplCopyWith<_$LoadedEmployeesImpl> get copyWith =>
      __$$LoadedEmployeesImplCopyWithImpl<_$LoadedEmployeesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<EmployeeModel> employees) loadedEmployees,
    required TResult Function(String message) failure,
  }) {
    return loadedEmployees(employees);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<EmployeeModel> employees)? loadedEmployees,
    TResult? Function(String message)? failure,
  }) {
    return loadedEmployees?.call(employees);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<EmployeeModel> employees)? loadedEmployees,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loadedEmployees != null) {
      return loadedEmployees(employees);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedEmployees value) loadedEmployees,
    required TResult Function(_Failure value) failure,
  }) {
    return loadedEmployees(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedEmployees value)? loadedEmployees,
    TResult? Function(_Failure value)? failure,
  }) {
    return loadedEmployees?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedEmployees value)? loadedEmployees,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loadedEmployees != null) {
      return loadedEmployees(this);
    }
    return orElse();
  }
}

abstract class _LoadedEmployees implements EmployeesState {
  const factory _LoadedEmployees(
      {required final List<EmployeeModel> employees}) = _$LoadedEmployeesImpl;

  List<EmployeeModel> get employees;

  /// Create a copy of EmployeesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedEmployeesImplCopyWith<_$LoadedEmployeesImpl> get copyWith =>
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
    extends _$EmployeesStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeesState
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
    return 'EmployeesState.failure(message: $message)';
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

  /// Create a copy of EmployeesState
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
    required TResult Function(List<EmployeeModel> employees) loadedEmployees,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<EmployeeModel> employees)? loadedEmployees,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<EmployeeModel> employees)? loadedEmployees,
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
    required TResult Function(_LoadedEmployees value) loadedEmployees,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedEmployees value)? loadedEmployees,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedEmployees value)? loadedEmployees,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements EmployeesState {
  const factory _Failure({required final String message}) = _$FailureImpl;

  String get message;

  /// Create a copy of EmployeesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
