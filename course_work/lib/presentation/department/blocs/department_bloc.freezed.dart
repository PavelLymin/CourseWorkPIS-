// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'department_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DepartmentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DepartmentModel department) addDepartment,
    required TResult Function() loadDepartments,
    required TResult Function(DepartmentModel department) updateDepartment,
    required TResult Function(int departmentId) deleteDepartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DepartmentModel department)? addDepartment,
    TResult? Function()? loadDepartments,
    TResult? Function(DepartmentModel department)? updateDepartment,
    TResult? Function(int departmentId)? deleteDepartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DepartmentModel department)? addDepartment,
    TResult Function()? loadDepartments,
    TResult Function(DepartmentModel department)? updateDepartment,
    TResult Function(int departmentId)? deleteDepartment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddDepartment value) addDepartment,
    required TResult Function(_LoadDepartments value) loadDepartments,
    required TResult Function(_UpdateDepartment value) updateDepartment,
    required TResult Function(_DeleteDepartment value) deleteDepartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddDepartment value)? addDepartment,
    TResult? Function(_LoadDepartments value)? loadDepartments,
    TResult? Function(_UpdateDepartment value)? updateDepartment,
    TResult? Function(_DeleteDepartment value)? deleteDepartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddDepartment value)? addDepartment,
    TResult Function(_LoadDepartments value)? loadDepartments,
    TResult Function(_UpdateDepartment value)? updateDepartment,
    TResult Function(_DeleteDepartment value)? deleteDepartment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentEventCopyWith<$Res> {
  factory $DepartmentEventCopyWith(
          DepartmentEvent value, $Res Function(DepartmentEvent) then) =
      _$DepartmentEventCopyWithImpl<$Res, DepartmentEvent>;
}

/// @nodoc
class _$DepartmentEventCopyWithImpl<$Res, $Val extends DepartmentEvent>
    implements $DepartmentEventCopyWith<$Res> {
  _$DepartmentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddDepartmentImplCopyWith<$Res> {
  factory _$$AddDepartmentImplCopyWith(
          _$AddDepartmentImpl value, $Res Function(_$AddDepartmentImpl) then) =
      __$$AddDepartmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DepartmentModel department});

  $DepartmentModelCopyWith<$Res> get department;
}

/// @nodoc
class __$$AddDepartmentImplCopyWithImpl<$Res>
    extends _$DepartmentEventCopyWithImpl<$Res, _$AddDepartmentImpl>
    implements _$$AddDepartmentImplCopyWith<$Res> {
  __$$AddDepartmentImplCopyWithImpl(
      _$AddDepartmentImpl _value, $Res Function(_$AddDepartmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? department = null,
  }) {
    return _then(_$AddDepartmentImpl(
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as DepartmentModel,
    ));
  }

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DepartmentModelCopyWith<$Res> get department {
    return $DepartmentModelCopyWith<$Res>(_value.department, (value) {
      return _then(_value.copyWith(department: value));
    });
  }
}

/// @nodoc

class _$AddDepartmentImpl implements _AddDepartment {
  const _$AddDepartmentImpl({required this.department});

  @override
  final DepartmentModel department;

  @override
  String toString() {
    return 'DepartmentEvent.addDepartment(department: $department)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDepartmentImpl &&
            (identical(other.department, department) ||
                other.department == department));
  }

  @override
  int get hashCode => Object.hash(runtimeType, department);

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDepartmentImplCopyWith<_$AddDepartmentImpl> get copyWith =>
      __$$AddDepartmentImplCopyWithImpl<_$AddDepartmentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DepartmentModel department) addDepartment,
    required TResult Function() loadDepartments,
    required TResult Function(DepartmentModel department) updateDepartment,
    required TResult Function(int departmentId) deleteDepartment,
  }) {
    return addDepartment(department);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DepartmentModel department)? addDepartment,
    TResult? Function()? loadDepartments,
    TResult? Function(DepartmentModel department)? updateDepartment,
    TResult? Function(int departmentId)? deleteDepartment,
  }) {
    return addDepartment?.call(department);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DepartmentModel department)? addDepartment,
    TResult Function()? loadDepartments,
    TResult Function(DepartmentModel department)? updateDepartment,
    TResult Function(int departmentId)? deleteDepartment,
    required TResult orElse(),
  }) {
    if (addDepartment != null) {
      return addDepartment(department);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddDepartment value) addDepartment,
    required TResult Function(_LoadDepartments value) loadDepartments,
    required TResult Function(_UpdateDepartment value) updateDepartment,
    required TResult Function(_DeleteDepartment value) deleteDepartment,
  }) {
    return addDepartment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddDepartment value)? addDepartment,
    TResult? Function(_LoadDepartments value)? loadDepartments,
    TResult? Function(_UpdateDepartment value)? updateDepartment,
    TResult? Function(_DeleteDepartment value)? deleteDepartment,
  }) {
    return addDepartment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddDepartment value)? addDepartment,
    TResult Function(_LoadDepartments value)? loadDepartments,
    TResult Function(_UpdateDepartment value)? updateDepartment,
    TResult Function(_DeleteDepartment value)? deleteDepartment,
    required TResult orElse(),
  }) {
    if (addDepartment != null) {
      return addDepartment(this);
    }
    return orElse();
  }
}

abstract class _AddDepartment implements DepartmentEvent {
  const factory _AddDepartment({required final DepartmentModel department}) =
      _$AddDepartmentImpl;

  DepartmentModel get department;

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddDepartmentImplCopyWith<_$AddDepartmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadDepartmentsImplCopyWith<$Res> {
  factory _$$LoadDepartmentsImplCopyWith(_$LoadDepartmentsImpl value,
          $Res Function(_$LoadDepartmentsImpl) then) =
      __$$LoadDepartmentsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadDepartmentsImplCopyWithImpl<$Res>
    extends _$DepartmentEventCopyWithImpl<$Res, _$LoadDepartmentsImpl>
    implements _$$LoadDepartmentsImplCopyWith<$Res> {
  __$$LoadDepartmentsImplCopyWithImpl(
      _$LoadDepartmentsImpl _value, $Res Function(_$LoadDepartmentsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadDepartmentsImpl implements _LoadDepartments {
  const _$LoadDepartmentsImpl();

  @override
  String toString() {
    return 'DepartmentEvent.loadDepartments()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadDepartmentsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DepartmentModel department) addDepartment,
    required TResult Function() loadDepartments,
    required TResult Function(DepartmentModel department) updateDepartment,
    required TResult Function(int departmentId) deleteDepartment,
  }) {
    return loadDepartments();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DepartmentModel department)? addDepartment,
    TResult? Function()? loadDepartments,
    TResult? Function(DepartmentModel department)? updateDepartment,
    TResult? Function(int departmentId)? deleteDepartment,
  }) {
    return loadDepartments?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DepartmentModel department)? addDepartment,
    TResult Function()? loadDepartments,
    TResult Function(DepartmentModel department)? updateDepartment,
    TResult Function(int departmentId)? deleteDepartment,
    required TResult orElse(),
  }) {
    if (loadDepartments != null) {
      return loadDepartments();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddDepartment value) addDepartment,
    required TResult Function(_LoadDepartments value) loadDepartments,
    required TResult Function(_UpdateDepartment value) updateDepartment,
    required TResult Function(_DeleteDepartment value) deleteDepartment,
  }) {
    return loadDepartments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddDepartment value)? addDepartment,
    TResult? Function(_LoadDepartments value)? loadDepartments,
    TResult? Function(_UpdateDepartment value)? updateDepartment,
    TResult? Function(_DeleteDepartment value)? deleteDepartment,
  }) {
    return loadDepartments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddDepartment value)? addDepartment,
    TResult Function(_LoadDepartments value)? loadDepartments,
    TResult Function(_UpdateDepartment value)? updateDepartment,
    TResult Function(_DeleteDepartment value)? deleteDepartment,
    required TResult orElse(),
  }) {
    if (loadDepartments != null) {
      return loadDepartments(this);
    }
    return orElse();
  }
}

abstract class _LoadDepartments implements DepartmentEvent {
  const factory _LoadDepartments() = _$LoadDepartmentsImpl;
}

/// @nodoc
abstract class _$$UpdateDepartmentImplCopyWith<$Res> {
  factory _$$UpdateDepartmentImplCopyWith(_$UpdateDepartmentImpl value,
          $Res Function(_$UpdateDepartmentImpl) then) =
      __$$UpdateDepartmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DepartmentModel department});

  $DepartmentModelCopyWith<$Res> get department;
}

/// @nodoc
class __$$UpdateDepartmentImplCopyWithImpl<$Res>
    extends _$DepartmentEventCopyWithImpl<$Res, _$UpdateDepartmentImpl>
    implements _$$UpdateDepartmentImplCopyWith<$Res> {
  __$$UpdateDepartmentImplCopyWithImpl(_$UpdateDepartmentImpl _value,
      $Res Function(_$UpdateDepartmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? department = null,
  }) {
    return _then(_$UpdateDepartmentImpl(
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as DepartmentModel,
    ));
  }

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DepartmentModelCopyWith<$Res> get department {
    return $DepartmentModelCopyWith<$Res>(_value.department, (value) {
      return _then(_value.copyWith(department: value));
    });
  }
}

/// @nodoc

class _$UpdateDepartmentImpl implements _UpdateDepartment {
  const _$UpdateDepartmentImpl({required this.department});

  @override
  final DepartmentModel department;

  @override
  String toString() {
    return 'DepartmentEvent.updateDepartment(department: $department)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDepartmentImpl &&
            (identical(other.department, department) ||
                other.department == department));
  }

  @override
  int get hashCode => Object.hash(runtimeType, department);

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDepartmentImplCopyWith<_$UpdateDepartmentImpl> get copyWith =>
      __$$UpdateDepartmentImplCopyWithImpl<_$UpdateDepartmentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DepartmentModel department) addDepartment,
    required TResult Function() loadDepartments,
    required TResult Function(DepartmentModel department) updateDepartment,
    required TResult Function(int departmentId) deleteDepartment,
  }) {
    return updateDepartment(department);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DepartmentModel department)? addDepartment,
    TResult? Function()? loadDepartments,
    TResult? Function(DepartmentModel department)? updateDepartment,
    TResult? Function(int departmentId)? deleteDepartment,
  }) {
    return updateDepartment?.call(department);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DepartmentModel department)? addDepartment,
    TResult Function()? loadDepartments,
    TResult Function(DepartmentModel department)? updateDepartment,
    TResult Function(int departmentId)? deleteDepartment,
    required TResult orElse(),
  }) {
    if (updateDepartment != null) {
      return updateDepartment(department);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddDepartment value) addDepartment,
    required TResult Function(_LoadDepartments value) loadDepartments,
    required TResult Function(_UpdateDepartment value) updateDepartment,
    required TResult Function(_DeleteDepartment value) deleteDepartment,
  }) {
    return updateDepartment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddDepartment value)? addDepartment,
    TResult? Function(_LoadDepartments value)? loadDepartments,
    TResult? Function(_UpdateDepartment value)? updateDepartment,
    TResult? Function(_DeleteDepartment value)? deleteDepartment,
  }) {
    return updateDepartment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddDepartment value)? addDepartment,
    TResult Function(_LoadDepartments value)? loadDepartments,
    TResult Function(_UpdateDepartment value)? updateDepartment,
    TResult Function(_DeleteDepartment value)? deleteDepartment,
    required TResult orElse(),
  }) {
    if (updateDepartment != null) {
      return updateDepartment(this);
    }
    return orElse();
  }
}

abstract class _UpdateDepartment implements DepartmentEvent {
  const factory _UpdateDepartment({required final DepartmentModel department}) =
      _$UpdateDepartmentImpl;

  DepartmentModel get department;

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateDepartmentImplCopyWith<_$UpdateDepartmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteDepartmentImplCopyWith<$Res> {
  factory _$$DeleteDepartmentImplCopyWith(_$DeleteDepartmentImpl value,
          $Res Function(_$DeleteDepartmentImpl) then) =
      __$$DeleteDepartmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int departmentId});
}

/// @nodoc
class __$$DeleteDepartmentImplCopyWithImpl<$Res>
    extends _$DepartmentEventCopyWithImpl<$Res, _$DeleteDepartmentImpl>
    implements _$$DeleteDepartmentImplCopyWith<$Res> {
  __$$DeleteDepartmentImplCopyWithImpl(_$DeleteDepartmentImpl _value,
      $Res Function(_$DeleteDepartmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departmentId = null,
  }) {
    return _then(_$DeleteDepartmentImpl(
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteDepartmentImpl implements _DeleteDepartment {
  const _$DeleteDepartmentImpl({required this.departmentId});

  @override
  final int departmentId;

  @override
  String toString() {
    return 'DepartmentEvent.deleteDepartment(departmentId: $departmentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteDepartmentImpl &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, departmentId);

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteDepartmentImplCopyWith<_$DeleteDepartmentImpl> get copyWith =>
      __$$DeleteDepartmentImplCopyWithImpl<_$DeleteDepartmentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DepartmentModel department) addDepartment,
    required TResult Function() loadDepartments,
    required TResult Function(DepartmentModel department) updateDepartment,
    required TResult Function(int departmentId) deleteDepartment,
  }) {
    return deleteDepartment(departmentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DepartmentModel department)? addDepartment,
    TResult? Function()? loadDepartments,
    TResult? Function(DepartmentModel department)? updateDepartment,
    TResult? Function(int departmentId)? deleteDepartment,
  }) {
    return deleteDepartment?.call(departmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DepartmentModel department)? addDepartment,
    TResult Function()? loadDepartments,
    TResult Function(DepartmentModel department)? updateDepartment,
    TResult Function(int departmentId)? deleteDepartment,
    required TResult orElse(),
  }) {
    if (deleteDepartment != null) {
      return deleteDepartment(departmentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddDepartment value) addDepartment,
    required TResult Function(_LoadDepartments value) loadDepartments,
    required TResult Function(_UpdateDepartment value) updateDepartment,
    required TResult Function(_DeleteDepartment value) deleteDepartment,
  }) {
    return deleteDepartment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddDepartment value)? addDepartment,
    TResult? Function(_LoadDepartments value)? loadDepartments,
    TResult? Function(_UpdateDepartment value)? updateDepartment,
    TResult? Function(_DeleteDepartment value)? deleteDepartment,
  }) {
    return deleteDepartment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddDepartment value)? addDepartment,
    TResult Function(_LoadDepartments value)? loadDepartments,
    TResult Function(_UpdateDepartment value)? updateDepartment,
    TResult Function(_DeleteDepartment value)? deleteDepartment,
    required TResult orElse(),
  }) {
    if (deleteDepartment != null) {
      return deleteDepartment(this);
    }
    return orElse();
  }
}

abstract class _DeleteDepartment implements DepartmentEvent {
  const factory _DeleteDepartment({required final int departmentId}) =
      _$DeleteDepartmentImpl;

  int get departmentId;

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteDepartmentImplCopyWith<_$DeleteDepartmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DepartmentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<DepartmentModel> departments) load,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<DepartmentModel> departments)? load,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<DepartmentModel> departments)? load,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Load value) load,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Load value)? load,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Load value)? load,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentStateCopyWith<$Res> {
  factory $DepartmentStateCopyWith(
          DepartmentState value, $Res Function(DepartmentState) then) =
      _$DepartmentStateCopyWithImpl<$Res, DepartmentState>;
}

/// @nodoc
class _$DepartmentStateCopyWithImpl<$Res, $Val extends DepartmentState>
    implements $DepartmentStateCopyWith<$Res> {
  _$DepartmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DepartmentState
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
    extends _$DepartmentStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'DepartmentState.loading()';
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
    required TResult Function(List<DepartmentModel> departments) load,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<DepartmentModel> departments)? load,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<DepartmentModel> departments)? load,
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
    required TResult Function(_Load value) load,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Load value)? load,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Load value)? load,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DepartmentState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadImplCopyWith<$Res> {
  factory _$$LoadImplCopyWith(
          _$LoadImpl value, $Res Function(_$LoadImpl) then) =
      __$$LoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DepartmentModel> departments});
}

/// @nodoc
class __$$LoadImplCopyWithImpl<$Res>
    extends _$DepartmentStateCopyWithImpl<$Res, _$LoadImpl>
    implements _$$LoadImplCopyWith<$Res> {
  __$$LoadImplCopyWithImpl(_$LoadImpl _value, $Res Function(_$LoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departments = null,
  }) {
    return _then(_$LoadImpl(
      departments: null == departments
          ? _value._departments
          : departments // ignore: cast_nullable_to_non_nullable
              as List<DepartmentModel>,
    ));
  }
}

/// @nodoc

class _$LoadImpl implements _Load {
  const _$LoadImpl({required final List<DepartmentModel> departments})
      : _departments = departments;

  final List<DepartmentModel> _departments;
  @override
  List<DepartmentModel> get departments {
    if (_departments is EqualUnmodifiableListView) return _departments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_departments);
  }

  @override
  String toString() {
    return 'DepartmentState.load(departments: $departments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadImpl &&
            const DeepCollectionEquality()
                .equals(other._departments, _departments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_departments));

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadImplCopyWith<_$LoadImpl> get copyWith =>
      __$$LoadImplCopyWithImpl<_$LoadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<DepartmentModel> departments) load,
    required TResult Function(String message) failure,
  }) {
    return load(departments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<DepartmentModel> departments)? load,
    TResult? Function(String message)? failure,
  }) {
    return load?.call(departments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<DepartmentModel> departments)? load,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(departments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Load value) load,
    required TResult Function(_Failure value) failure,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Load value)? load,
    TResult? Function(_Failure value)? failure,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Load value)? load,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements DepartmentState {
  const factory _Load({required final List<DepartmentModel> departments}) =
      _$LoadImpl;

  List<DepartmentModel> get departments;

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadImplCopyWith<_$LoadImpl> get copyWith =>
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
    extends _$DepartmentStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentState
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
    return 'DepartmentState.failure(message: $message)';
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

  /// Create a copy of DepartmentState
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
    required TResult Function(List<DepartmentModel> departments) load,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<DepartmentModel> departments)? load,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<DepartmentModel> departments)? load,
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
    required TResult Function(_Load value) load,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Load value)? load,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Load value)? load,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements DepartmentState {
  const factory _Failure({required final String message}) = _$FailureImpl;

  String get message;

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
