// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_employee_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CurrentEmployeeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadEmployee,
    required TResult Function(
            EmployeeModel originalEmployee, EmployeeModel changedEmployee)
        updateEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadEmployee,
    TResult? Function(
            EmployeeModel originalEmployee, EmployeeModel changedEmployee)?
        updateEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadEmployee,
    TResult Function(
            EmployeeModel originalEmployee, EmployeeModel changedEmployee)?
        updateEmployee,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEmployee value) loadEmployee,
    required TResult Function(_UpdateEmployee value) updateEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEmployee value)? loadEmployee,
    TResult? Function(_UpdateEmployee value)? updateEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEmployee value)? loadEmployee,
    TResult Function(_UpdateEmployee value)? updateEmployee,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentEmployeeEventCopyWith<$Res> {
  factory $CurrentEmployeeEventCopyWith(CurrentEmployeeEvent value,
          $Res Function(CurrentEmployeeEvent) then) =
      _$CurrentEmployeeEventCopyWithImpl<$Res, CurrentEmployeeEvent>;
}

/// @nodoc
class _$CurrentEmployeeEventCopyWithImpl<$Res,
        $Val extends CurrentEmployeeEvent>
    implements $CurrentEmployeeEventCopyWith<$Res> {
  _$CurrentEmployeeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurrentEmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadEmployeeImplCopyWith<$Res> {
  factory _$$LoadEmployeeImplCopyWith(
          _$LoadEmployeeImpl value, $Res Function(_$LoadEmployeeImpl) then) =
      __$$LoadEmployeeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadEmployeeImplCopyWithImpl<$Res>
    extends _$CurrentEmployeeEventCopyWithImpl<$Res, _$LoadEmployeeImpl>
    implements _$$LoadEmployeeImplCopyWith<$Res> {
  __$$LoadEmployeeImplCopyWithImpl(
      _$LoadEmployeeImpl _value, $Res Function(_$LoadEmployeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrentEmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadEmployeeImpl implements _LoadEmployee {
  const _$LoadEmployeeImpl();

  @override
  String toString() {
    return 'CurrentEmployeeEvent.loadEmployee()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadEmployeeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadEmployee,
    required TResult Function(
            EmployeeModel originalEmployee, EmployeeModel changedEmployee)
        updateEmployee,
  }) {
    return loadEmployee();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadEmployee,
    TResult? Function(
            EmployeeModel originalEmployee, EmployeeModel changedEmployee)?
        updateEmployee,
  }) {
    return loadEmployee?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadEmployee,
    TResult Function(
            EmployeeModel originalEmployee, EmployeeModel changedEmployee)?
        updateEmployee,
    required TResult orElse(),
  }) {
    if (loadEmployee != null) {
      return loadEmployee();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEmployee value) loadEmployee,
    required TResult Function(_UpdateEmployee value) updateEmployee,
  }) {
    return loadEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEmployee value)? loadEmployee,
    TResult? Function(_UpdateEmployee value)? updateEmployee,
  }) {
    return loadEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEmployee value)? loadEmployee,
    TResult Function(_UpdateEmployee value)? updateEmployee,
    required TResult orElse(),
  }) {
    if (loadEmployee != null) {
      return loadEmployee(this);
    }
    return orElse();
  }
}

abstract class _LoadEmployee implements CurrentEmployeeEvent {
  const factory _LoadEmployee() = _$LoadEmployeeImpl;
}

/// @nodoc
abstract class _$$UpdateEmployeeImplCopyWith<$Res> {
  factory _$$UpdateEmployeeImplCopyWith(_$UpdateEmployeeImpl value,
          $Res Function(_$UpdateEmployeeImpl) then) =
      __$$UpdateEmployeeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EmployeeModel originalEmployee, EmployeeModel changedEmployee});

  $EmployeeModelCopyWith<$Res> get originalEmployee;
  $EmployeeModelCopyWith<$Res> get changedEmployee;
}

/// @nodoc
class __$$UpdateEmployeeImplCopyWithImpl<$Res>
    extends _$CurrentEmployeeEventCopyWithImpl<$Res, _$UpdateEmployeeImpl>
    implements _$$UpdateEmployeeImplCopyWith<$Res> {
  __$$UpdateEmployeeImplCopyWithImpl(
      _$UpdateEmployeeImpl _value, $Res Function(_$UpdateEmployeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrentEmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originalEmployee = null,
    Object? changedEmployee = null,
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
    ));
  }

  /// Create a copy of CurrentEmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmployeeModelCopyWith<$Res> get originalEmployee {
    return $EmployeeModelCopyWith<$Res>(_value.originalEmployee, (value) {
      return _then(_value.copyWith(originalEmployee: value));
    });
  }

  /// Create a copy of CurrentEmployeeEvent
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
      {required this.originalEmployee, required this.changedEmployee});

  @override
  final EmployeeModel originalEmployee;
  @override
  final EmployeeModel changedEmployee;

  @override
  String toString() {
    return 'CurrentEmployeeEvent.updateEmployee(originalEmployee: $originalEmployee, changedEmployee: $changedEmployee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateEmployeeImpl &&
            (identical(other.originalEmployee, originalEmployee) ||
                other.originalEmployee == originalEmployee) &&
            (identical(other.changedEmployee, changedEmployee) ||
                other.changedEmployee == changedEmployee));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, originalEmployee, changedEmployee);

  /// Create a copy of CurrentEmployeeEvent
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
    required TResult Function() loadEmployee,
    required TResult Function(
            EmployeeModel originalEmployee, EmployeeModel changedEmployee)
        updateEmployee,
  }) {
    return updateEmployee(originalEmployee, changedEmployee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadEmployee,
    TResult? Function(
            EmployeeModel originalEmployee, EmployeeModel changedEmployee)?
        updateEmployee,
  }) {
    return updateEmployee?.call(originalEmployee, changedEmployee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadEmployee,
    TResult Function(
            EmployeeModel originalEmployee, EmployeeModel changedEmployee)?
        updateEmployee,
    required TResult orElse(),
  }) {
    if (updateEmployee != null) {
      return updateEmployee(originalEmployee, changedEmployee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEmployee value) loadEmployee,
    required TResult Function(_UpdateEmployee value) updateEmployee,
  }) {
    return updateEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEmployee value)? loadEmployee,
    TResult? Function(_UpdateEmployee value)? updateEmployee,
  }) {
    return updateEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEmployee value)? loadEmployee,
    TResult Function(_UpdateEmployee value)? updateEmployee,
    required TResult orElse(),
  }) {
    if (updateEmployee != null) {
      return updateEmployee(this);
    }
    return orElse();
  }
}

abstract class _UpdateEmployee implements CurrentEmployeeEvent {
  const factory _UpdateEmployee(
      {required final EmployeeModel originalEmployee,
      required final EmployeeModel changedEmployee}) = _$UpdateEmployeeImpl;

  EmployeeModel get originalEmployee;
  EmployeeModel get changedEmployee;

  /// Create a copy of CurrentEmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateEmployeeImplCopyWith<_$UpdateEmployeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CurrentEmployeeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(EmployeeModel employee) loaded,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(EmployeeModel employee)? loaded,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(EmployeeModel employee)? loaded,
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
abstract class $CurrentEmployeeStateCopyWith<$Res> {
  factory $CurrentEmployeeStateCopyWith(CurrentEmployeeState value,
          $Res Function(CurrentEmployeeState) then) =
      _$CurrentEmployeeStateCopyWithImpl<$Res, CurrentEmployeeState>;
}

/// @nodoc
class _$CurrentEmployeeStateCopyWithImpl<$Res,
        $Val extends CurrentEmployeeState>
    implements $CurrentEmployeeStateCopyWith<$Res> {
  _$CurrentEmployeeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurrentEmployeeState
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
    extends _$CurrentEmployeeStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrentEmployeeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CurrentEmployeeState.loading()';
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
    required TResult Function(EmployeeModel employee) loaded,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(EmployeeModel employee)? loaded,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(EmployeeModel employee)? loaded,
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

abstract class _Loading implements CurrentEmployeeState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EmployeeModel employee});

  $EmployeeModelCopyWith<$Res> get employee;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$CurrentEmployeeStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrentEmployeeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee = null,
  }) {
    return _then(_$LoadedImpl(
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as EmployeeModel,
    ));
  }

  /// Create a copy of CurrentEmployeeState
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

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required this.employee});

  @override
  final EmployeeModel employee;

  @override
  String toString() {
    return 'CurrentEmployeeState.loaded(employee: $employee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.employee, employee) ||
                other.employee == employee));
  }

  @override
  int get hashCode => Object.hash(runtimeType, employee);

  /// Create a copy of CurrentEmployeeState
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
    required TResult Function(EmployeeModel employee) loaded,
    required TResult Function(String message) failure,
  }) {
    return loaded(employee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(EmployeeModel employee)? loaded,
    TResult? Function(String message)? failure,
  }) {
    return loaded?.call(employee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(EmployeeModel employee)? loaded,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(employee);
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

abstract class _Loaded implements CurrentEmployeeState {
  const factory _Loaded({required final EmployeeModel employee}) = _$LoadedImpl;

  EmployeeModel get employee;

  /// Create a copy of CurrentEmployeeState
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
    extends _$CurrentEmployeeStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrentEmployeeState
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
    return 'CurrentEmployeeState.failure(message: $message)';
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

  /// Create a copy of CurrentEmployeeState
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
    required TResult Function(EmployeeModel employee) loaded,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(EmployeeModel employee)? loaded,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(EmployeeModel employee)? loaded,
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

abstract class _Failure implements CurrentEmployeeState {
  const factory _Failure({required final String message}) = _$FailureImpl;

  String get message;

  /// Create a copy of CurrentEmployeeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
