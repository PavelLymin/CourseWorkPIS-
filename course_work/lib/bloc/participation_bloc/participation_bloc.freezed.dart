// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'participation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParticipationEvent {
  int get departmentId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int departmentId, DateTime? date)
        loadParticipation,
    required TResult Function(int departmentId, int employeeId)
        loadParticipationForEmployee,
    required TResult Function(int departmentId, String status)
        loadFilteredParticipation,
    required TResult Function(int departmentId, int employeeId, String status)
        loadFilteredParticipationForEmployee,
    required TResult Function(List<EmployeeModel> employees, int taskId,
            int departmentId, String? status, DateTime? date)
        addParticipation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int departmentId, DateTime? date)? loadParticipation,
    TResult? Function(int departmentId, int employeeId)?
        loadParticipationForEmployee,
    TResult? Function(int departmentId, String status)?
        loadFilteredParticipation,
    TResult? Function(int departmentId, int employeeId, String status)?
        loadFilteredParticipationForEmployee,
    TResult? Function(List<EmployeeModel> employees, int taskId,
            int departmentId, String? status, DateTime? date)?
        addParticipation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int departmentId, DateTime? date)? loadParticipation,
    TResult Function(int departmentId, int employeeId)?
        loadParticipationForEmployee,
    TResult Function(int departmentId, String status)?
        loadFilteredParticipation,
    TResult Function(int departmentId, int employeeId, String status)?
        loadFilteredParticipationForEmployee,
    TResult Function(List<EmployeeModel> employees, int taskId,
            int departmentId, String? status, DateTime? date)?
        addParticipation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadParticipation value) loadParticipation,
    required TResult Function(_LoadParticipationForEmployee value)
        loadParticipationForEmployee,
    required TResult Function(_LoadFilteredParticipation value)
        loadFilteredParticipation,
    required TResult Function(_LoadFilteredParticipationForEmployee value)
        loadFilteredParticipationForEmployee,
    required TResult Function(_AddParticipation value) addParticipation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadParticipation value)? loadParticipation,
    TResult? Function(_LoadParticipationForEmployee value)?
        loadParticipationForEmployee,
    TResult? Function(_LoadFilteredParticipation value)?
        loadFilteredParticipation,
    TResult? Function(_LoadFilteredParticipationForEmployee value)?
        loadFilteredParticipationForEmployee,
    TResult? Function(_AddParticipation value)? addParticipation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadParticipation value)? loadParticipation,
    TResult Function(_LoadParticipationForEmployee value)?
        loadParticipationForEmployee,
    TResult Function(_LoadFilteredParticipation value)?
        loadFilteredParticipation,
    TResult Function(_LoadFilteredParticipationForEmployee value)?
        loadFilteredParticipationForEmployee,
    TResult Function(_AddParticipation value)? addParticipation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ParticipationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParticipationEventCopyWith<ParticipationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipationEventCopyWith<$Res> {
  factory $ParticipationEventCopyWith(
          ParticipationEvent value, $Res Function(ParticipationEvent) then) =
      _$ParticipationEventCopyWithImpl<$Res, ParticipationEvent>;
  @useResult
  $Res call({int departmentId});
}

/// @nodoc
class _$ParticipationEventCopyWithImpl<$Res, $Val extends ParticipationEvent>
    implements $ParticipationEventCopyWith<$Res> {
  _$ParticipationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParticipationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departmentId = null,
  }) {
    return _then(_value.copyWith(
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadParticipationImplCopyWith<$Res>
    implements $ParticipationEventCopyWith<$Res> {
  factory _$$LoadParticipationImplCopyWith(_$LoadParticipationImpl value,
          $Res Function(_$LoadParticipationImpl) then) =
      __$$LoadParticipationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int departmentId, DateTime? date});
}

/// @nodoc
class __$$LoadParticipationImplCopyWithImpl<$Res>
    extends _$ParticipationEventCopyWithImpl<$Res, _$LoadParticipationImpl>
    implements _$$LoadParticipationImplCopyWith<$Res> {
  __$$LoadParticipationImplCopyWithImpl(_$LoadParticipationImpl _value,
      $Res Function(_$LoadParticipationImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParticipationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departmentId = null,
    Object? date = freezed,
  }) {
    return _then(_$LoadParticipationImpl(
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$LoadParticipationImpl implements _LoadParticipation {
  const _$LoadParticipationImpl({required this.departmentId, this.date});

  @override
  final int departmentId;
  @override
  final DateTime? date;

  @override
  String toString() {
    return 'ParticipationEvent.loadParticipation(departmentId: $departmentId, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadParticipationImpl &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, departmentId, date);

  /// Create a copy of ParticipationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadParticipationImplCopyWith<_$LoadParticipationImpl> get copyWith =>
      __$$LoadParticipationImplCopyWithImpl<_$LoadParticipationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int departmentId, DateTime? date)
        loadParticipation,
    required TResult Function(int departmentId, int employeeId)
        loadParticipationForEmployee,
    required TResult Function(int departmentId, String status)
        loadFilteredParticipation,
    required TResult Function(int departmentId, int employeeId, String status)
        loadFilteredParticipationForEmployee,
    required TResult Function(List<EmployeeModel> employees, int taskId,
            int departmentId, String? status, DateTime? date)
        addParticipation,
  }) {
    return loadParticipation(departmentId, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int departmentId, DateTime? date)? loadParticipation,
    TResult? Function(int departmentId, int employeeId)?
        loadParticipationForEmployee,
    TResult? Function(int departmentId, String status)?
        loadFilteredParticipation,
    TResult? Function(int departmentId, int employeeId, String status)?
        loadFilteredParticipationForEmployee,
    TResult? Function(List<EmployeeModel> employees, int taskId,
            int departmentId, String? status, DateTime? date)?
        addParticipation,
  }) {
    return loadParticipation?.call(departmentId, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int departmentId, DateTime? date)? loadParticipation,
    TResult Function(int departmentId, int employeeId)?
        loadParticipationForEmployee,
    TResult Function(int departmentId, String status)?
        loadFilteredParticipation,
    TResult Function(int departmentId, int employeeId, String status)?
        loadFilteredParticipationForEmployee,
    TResult Function(List<EmployeeModel> employees, int taskId,
            int departmentId, String? status, DateTime? date)?
        addParticipation,
    required TResult orElse(),
  }) {
    if (loadParticipation != null) {
      return loadParticipation(departmentId, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadParticipation value) loadParticipation,
    required TResult Function(_LoadParticipationForEmployee value)
        loadParticipationForEmployee,
    required TResult Function(_LoadFilteredParticipation value)
        loadFilteredParticipation,
    required TResult Function(_LoadFilteredParticipationForEmployee value)
        loadFilteredParticipationForEmployee,
    required TResult Function(_AddParticipation value) addParticipation,
  }) {
    return loadParticipation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadParticipation value)? loadParticipation,
    TResult? Function(_LoadParticipationForEmployee value)?
        loadParticipationForEmployee,
    TResult? Function(_LoadFilteredParticipation value)?
        loadFilteredParticipation,
    TResult? Function(_LoadFilteredParticipationForEmployee value)?
        loadFilteredParticipationForEmployee,
    TResult? Function(_AddParticipation value)? addParticipation,
  }) {
    return loadParticipation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadParticipation value)? loadParticipation,
    TResult Function(_LoadParticipationForEmployee value)?
        loadParticipationForEmployee,
    TResult Function(_LoadFilteredParticipation value)?
        loadFilteredParticipation,
    TResult Function(_LoadFilteredParticipationForEmployee value)?
        loadFilteredParticipationForEmployee,
    TResult Function(_AddParticipation value)? addParticipation,
    required TResult orElse(),
  }) {
    if (loadParticipation != null) {
      return loadParticipation(this);
    }
    return orElse();
  }
}

abstract class _LoadParticipation implements ParticipationEvent {
  const factory _LoadParticipation(
      {required final int departmentId,
      final DateTime? date}) = _$LoadParticipationImpl;

  @override
  int get departmentId;
  DateTime? get date;

  /// Create a copy of ParticipationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadParticipationImplCopyWith<_$LoadParticipationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadParticipationForEmployeeImplCopyWith<$Res>
    implements $ParticipationEventCopyWith<$Res> {
  factory _$$LoadParticipationForEmployeeImplCopyWith(
          _$LoadParticipationForEmployeeImpl value,
          $Res Function(_$LoadParticipationForEmployeeImpl) then) =
      __$$LoadParticipationForEmployeeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int departmentId, int employeeId});
}

/// @nodoc
class __$$LoadParticipationForEmployeeImplCopyWithImpl<$Res>
    extends _$ParticipationEventCopyWithImpl<$Res,
        _$LoadParticipationForEmployeeImpl>
    implements _$$LoadParticipationForEmployeeImplCopyWith<$Res> {
  __$$LoadParticipationForEmployeeImplCopyWithImpl(
      _$LoadParticipationForEmployeeImpl _value,
      $Res Function(_$LoadParticipationForEmployeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParticipationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departmentId = null,
    Object? employeeId = null,
  }) {
    return _then(_$LoadParticipationForEmployeeImpl(
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadParticipationForEmployeeImpl
    implements _LoadParticipationForEmployee {
  const _$LoadParticipationForEmployeeImpl(
      {required this.departmentId, required this.employeeId});

  @override
  final int departmentId;
  @override
  final int employeeId;

  @override
  String toString() {
    return 'ParticipationEvent.loadParticipationForEmployee(departmentId: $departmentId, employeeId: $employeeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadParticipationForEmployeeImpl &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, departmentId, employeeId);

  /// Create a copy of ParticipationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadParticipationForEmployeeImplCopyWith<
          _$LoadParticipationForEmployeeImpl>
      get copyWith => __$$LoadParticipationForEmployeeImplCopyWithImpl<
          _$LoadParticipationForEmployeeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int departmentId, DateTime? date)
        loadParticipation,
    required TResult Function(int departmentId, int employeeId)
        loadParticipationForEmployee,
    required TResult Function(int departmentId, String status)
        loadFilteredParticipation,
    required TResult Function(int departmentId, int employeeId, String status)
        loadFilteredParticipationForEmployee,
    required TResult Function(List<EmployeeModel> employees, int taskId,
            int departmentId, String? status, DateTime? date)
        addParticipation,
  }) {
    return loadParticipationForEmployee(departmentId, employeeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int departmentId, DateTime? date)? loadParticipation,
    TResult? Function(int departmentId, int employeeId)?
        loadParticipationForEmployee,
    TResult? Function(int departmentId, String status)?
        loadFilteredParticipation,
    TResult? Function(int departmentId, int employeeId, String status)?
        loadFilteredParticipationForEmployee,
    TResult? Function(List<EmployeeModel> employees, int taskId,
            int departmentId, String? status, DateTime? date)?
        addParticipation,
  }) {
    return loadParticipationForEmployee?.call(departmentId, employeeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int departmentId, DateTime? date)? loadParticipation,
    TResult Function(int departmentId, int employeeId)?
        loadParticipationForEmployee,
    TResult Function(int departmentId, String status)?
        loadFilteredParticipation,
    TResult Function(int departmentId, int employeeId, String status)?
        loadFilteredParticipationForEmployee,
    TResult Function(List<EmployeeModel> employees, int taskId,
            int departmentId, String? status, DateTime? date)?
        addParticipation,
    required TResult orElse(),
  }) {
    if (loadParticipationForEmployee != null) {
      return loadParticipationForEmployee(departmentId, employeeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadParticipation value) loadParticipation,
    required TResult Function(_LoadParticipationForEmployee value)
        loadParticipationForEmployee,
    required TResult Function(_LoadFilteredParticipation value)
        loadFilteredParticipation,
    required TResult Function(_LoadFilteredParticipationForEmployee value)
        loadFilteredParticipationForEmployee,
    required TResult Function(_AddParticipation value) addParticipation,
  }) {
    return loadParticipationForEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadParticipation value)? loadParticipation,
    TResult? Function(_LoadParticipationForEmployee value)?
        loadParticipationForEmployee,
    TResult? Function(_LoadFilteredParticipation value)?
        loadFilteredParticipation,
    TResult? Function(_LoadFilteredParticipationForEmployee value)?
        loadFilteredParticipationForEmployee,
    TResult? Function(_AddParticipation value)? addParticipation,
  }) {
    return loadParticipationForEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadParticipation value)? loadParticipation,
    TResult Function(_LoadParticipationForEmployee value)?
        loadParticipationForEmployee,
    TResult Function(_LoadFilteredParticipation value)?
        loadFilteredParticipation,
    TResult Function(_LoadFilteredParticipationForEmployee value)?
        loadFilteredParticipationForEmployee,
    TResult Function(_AddParticipation value)? addParticipation,
    required TResult orElse(),
  }) {
    if (loadParticipationForEmployee != null) {
      return loadParticipationForEmployee(this);
    }
    return orElse();
  }
}

abstract class _LoadParticipationForEmployee implements ParticipationEvent {
  const factory _LoadParticipationForEmployee(
      {required final int departmentId,
      required final int employeeId}) = _$LoadParticipationForEmployeeImpl;

  @override
  int get departmentId;
  int get employeeId;

  /// Create a copy of ParticipationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadParticipationForEmployeeImplCopyWith<
          _$LoadParticipationForEmployeeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadFilteredParticipationImplCopyWith<$Res>
    implements $ParticipationEventCopyWith<$Res> {
  factory _$$LoadFilteredParticipationImplCopyWith(
          _$LoadFilteredParticipationImpl value,
          $Res Function(_$LoadFilteredParticipationImpl) then) =
      __$$LoadFilteredParticipationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int departmentId, String status});
}

/// @nodoc
class __$$LoadFilteredParticipationImplCopyWithImpl<$Res>
    extends _$ParticipationEventCopyWithImpl<$Res,
        _$LoadFilteredParticipationImpl>
    implements _$$LoadFilteredParticipationImplCopyWith<$Res> {
  __$$LoadFilteredParticipationImplCopyWithImpl(
      _$LoadFilteredParticipationImpl _value,
      $Res Function(_$LoadFilteredParticipationImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParticipationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departmentId = null,
    Object? status = null,
  }) {
    return _then(_$LoadFilteredParticipationImpl(
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadFilteredParticipationImpl implements _LoadFilteredParticipation {
  const _$LoadFilteredParticipationImpl(
      {required this.departmentId, required this.status});

  @override
  final int departmentId;
  @override
  final String status;

  @override
  String toString() {
    return 'ParticipationEvent.loadFilteredParticipation(departmentId: $departmentId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFilteredParticipationImpl &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, departmentId, status);

  /// Create a copy of ParticipationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFilteredParticipationImplCopyWith<_$LoadFilteredParticipationImpl>
      get copyWith => __$$LoadFilteredParticipationImplCopyWithImpl<
          _$LoadFilteredParticipationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int departmentId, DateTime? date)
        loadParticipation,
    required TResult Function(int departmentId, int employeeId)
        loadParticipationForEmployee,
    required TResult Function(int departmentId, String status)
        loadFilteredParticipation,
    required TResult Function(int departmentId, int employeeId, String status)
        loadFilteredParticipationForEmployee,
    required TResult Function(List<EmployeeModel> employees, int taskId,
            int departmentId, String? status, DateTime? date)
        addParticipation,
  }) {
    return loadFilteredParticipation(departmentId, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int departmentId, DateTime? date)? loadParticipation,
    TResult? Function(int departmentId, int employeeId)?
        loadParticipationForEmployee,
    TResult? Function(int departmentId, String status)?
        loadFilteredParticipation,
    TResult? Function(int departmentId, int employeeId, String status)?
        loadFilteredParticipationForEmployee,
    TResult? Function(List<EmployeeModel> employees, int taskId,
            int departmentId, String? status, DateTime? date)?
        addParticipation,
  }) {
    return loadFilteredParticipation?.call(departmentId, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int departmentId, DateTime? date)? loadParticipation,
    TResult Function(int departmentId, int employeeId)?
        loadParticipationForEmployee,
    TResult Function(int departmentId, String status)?
        loadFilteredParticipation,
    TResult Function(int departmentId, int employeeId, String status)?
        loadFilteredParticipationForEmployee,
    TResult Function(List<EmployeeModel> employees, int taskId,
            int departmentId, String? status, DateTime? date)?
        addParticipation,
    required TResult orElse(),
  }) {
    if (loadFilteredParticipation != null) {
      return loadFilteredParticipation(departmentId, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadParticipation value) loadParticipation,
    required TResult Function(_LoadParticipationForEmployee value)
        loadParticipationForEmployee,
    required TResult Function(_LoadFilteredParticipation value)
        loadFilteredParticipation,
    required TResult Function(_LoadFilteredParticipationForEmployee value)
        loadFilteredParticipationForEmployee,
    required TResult Function(_AddParticipation value) addParticipation,
  }) {
    return loadFilteredParticipation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadParticipation value)? loadParticipation,
    TResult? Function(_LoadParticipationForEmployee value)?
        loadParticipationForEmployee,
    TResult? Function(_LoadFilteredParticipation value)?
        loadFilteredParticipation,
    TResult? Function(_LoadFilteredParticipationForEmployee value)?
        loadFilteredParticipationForEmployee,
    TResult? Function(_AddParticipation value)? addParticipation,
  }) {
    return loadFilteredParticipation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadParticipation value)? loadParticipation,
    TResult Function(_LoadParticipationForEmployee value)?
        loadParticipationForEmployee,
    TResult Function(_LoadFilteredParticipation value)?
        loadFilteredParticipation,
    TResult Function(_LoadFilteredParticipationForEmployee value)?
        loadFilteredParticipationForEmployee,
    TResult Function(_AddParticipation value)? addParticipation,
    required TResult orElse(),
  }) {
    if (loadFilteredParticipation != null) {
      return loadFilteredParticipation(this);
    }
    return orElse();
  }
}

abstract class _LoadFilteredParticipation implements ParticipationEvent {
  const factory _LoadFilteredParticipation(
      {required final int departmentId,
      required final String status}) = _$LoadFilteredParticipationImpl;

  @override
  int get departmentId;
  String get status;

  /// Create a copy of ParticipationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadFilteredParticipationImplCopyWith<_$LoadFilteredParticipationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadFilteredParticipationForEmployeeImplCopyWith<$Res>
    implements $ParticipationEventCopyWith<$Res> {
  factory _$$LoadFilteredParticipationForEmployeeImplCopyWith(
          _$LoadFilteredParticipationForEmployeeImpl value,
          $Res Function(_$LoadFilteredParticipationForEmployeeImpl) then) =
      __$$LoadFilteredParticipationForEmployeeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int departmentId, int employeeId, String status});
}

/// @nodoc
class __$$LoadFilteredParticipationForEmployeeImplCopyWithImpl<$Res>
    extends _$ParticipationEventCopyWithImpl<$Res,
        _$LoadFilteredParticipationForEmployeeImpl>
    implements _$$LoadFilteredParticipationForEmployeeImplCopyWith<$Res> {
  __$$LoadFilteredParticipationForEmployeeImplCopyWithImpl(
      _$LoadFilteredParticipationForEmployeeImpl _value,
      $Res Function(_$LoadFilteredParticipationForEmployeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParticipationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departmentId = null,
    Object? employeeId = null,
    Object? status = null,
  }) {
    return _then(_$LoadFilteredParticipationForEmployeeImpl(
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadFilteredParticipationForEmployeeImpl
    implements _LoadFilteredParticipationForEmployee {
  const _$LoadFilteredParticipationForEmployeeImpl(
      {required this.departmentId,
      required this.employeeId,
      required this.status});

  @override
  final int departmentId;
  @override
  final int employeeId;
  @override
  final String status;

  @override
  String toString() {
    return 'ParticipationEvent.loadFilteredParticipationForEmployee(departmentId: $departmentId, employeeId: $employeeId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFilteredParticipationForEmployeeImpl &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, departmentId, employeeId, status);

  /// Create a copy of ParticipationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFilteredParticipationForEmployeeImplCopyWith<
          _$LoadFilteredParticipationForEmployeeImpl>
      get copyWith => __$$LoadFilteredParticipationForEmployeeImplCopyWithImpl<
          _$LoadFilteredParticipationForEmployeeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int departmentId, DateTime? date)
        loadParticipation,
    required TResult Function(int departmentId, int employeeId)
        loadParticipationForEmployee,
    required TResult Function(int departmentId, String status)
        loadFilteredParticipation,
    required TResult Function(int departmentId, int employeeId, String status)
        loadFilteredParticipationForEmployee,
    required TResult Function(List<EmployeeModel> employees, int taskId,
            int departmentId, String? status, DateTime? date)
        addParticipation,
  }) {
    return loadFilteredParticipationForEmployee(
        departmentId, employeeId, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int departmentId, DateTime? date)? loadParticipation,
    TResult? Function(int departmentId, int employeeId)?
        loadParticipationForEmployee,
    TResult? Function(int departmentId, String status)?
        loadFilteredParticipation,
    TResult? Function(int departmentId, int employeeId, String status)?
        loadFilteredParticipationForEmployee,
    TResult? Function(List<EmployeeModel> employees, int taskId,
            int departmentId, String? status, DateTime? date)?
        addParticipation,
  }) {
    return loadFilteredParticipationForEmployee?.call(
        departmentId, employeeId, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int departmentId, DateTime? date)? loadParticipation,
    TResult Function(int departmentId, int employeeId)?
        loadParticipationForEmployee,
    TResult Function(int departmentId, String status)?
        loadFilteredParticipation,
    TResult Function(int departmentId, int employeeId, String status)?
        loadFilteredParticipationForEmployee,
    TResult Function(List<EmployeeModel> employees, int taskId,
            int departmentId, String? status, DateTime? date)?
        addParticipation,
    required TResult orElse(),
  }) {
    if (loadFilteredParticipationForEmployee != null) {
      return loadFilteredParticipationForEmployee(
          departmentId, employeeId, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadParticipation value) loadParticipation,
    required TResult Function(_LoadParticipationForEmployee value)
        loadParticipationForEmployee,
    required TResult Function(_LoadFilteredParticipation value)
        loadFilteredParticipation,
    required TResult Function(_LoadFilteredParticipationForEmployee value)
        loadFilteredParticipationForEmployee,
    required TResult Function(_AddParticipation value) addParticipation,
  }) {
    return loadFilteredParticipationForEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadParticipation value)? loadParticipation,
    TResult? Function(_LoadParticipationForEmployee value)?
        loadParticipationForEmployee,
    TResult? Function(_LoadFilteredParticipation value)?
        loadFilteredParticipation,
    TResult? Function(_LoadFilteredParticipationForEmployee value)?
        loadFilteredParticipationForEmployee,
    TResult? Function(_AddParticipation value)? addParticipation,
  }) {
    return loadFilteredParticipationForEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadParticipation value)? loadParticipation,
    TResult Function(_LoadParticipationForEmployee value)?
        loadParticipationForEmployee,
    TResult Function(_LoadFilteredParticipation value)?
        loadFilteredParticipation,
    TResult Function(_LoadFilteredParticipationForEmployee value)?
        loadFilteredParticipationForEmployee,
    TResult Function(_AddParticipation value)? addParticipation,
    required TResult orElse(),
  }) {
    if (loadFilteredParticipationForEmployee != null) {
      return loadFilteredParticipationForEmployee(this);
    }
    return orElse();
  }
}

abstract class _LoadFilteredParticipationForEmployee
    implements ParticipationEvent {
  const factory _LoadFilteredParticipationForEmployee(
          {required final int departmentId,
          required final int employeeId,
          required final String status}) =
      _$LoadFilteredParticipationForEmployeeImpl;

  @override
  int get departmentId;
  int get employeeId;
  String get status;

  /// Create a copy of ParticipationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadFilteredParticipationForEmployeeImplCopyWith<
          _$LoadFilteredParticipationForEmployeeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddParticipationImplCopyWith<$Res>
    implements $ParticipationEventCopyWith<$Res> {
  factory _$$AddParticipationImplCopyWith(_$AddParticipationImpl value,
          $Res Function(_$AddParticipationImpl) then) =
      __$$AddParticipationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<EmployeeModel> employees,
      int taskId,
      int departmentId,
      String? status,
      DateTime? date});
}

/// @nodoc
class __$$AddParticipationImplCopyWithImpl<$Res>
    extends _$ParticipationEventCopyWithImpl<$Res, _$AddParticipationImpl>
    implements _$$AddParticipationImplCopyWith<$Res> {
  __$$AddParticipationImplCopyWithImpl(_$AddParticipationImpl _value,
      $Res Function(_$AddParticipationImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParticipationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employees = null,
    Object? taskId = null,
    Object? departmentId = null,
    Object? status = freezed,
    Object? date = freezed,
  }) {
    return _then(_$AddParticipationImpl(
      employees: null == employees
          ? _value._employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<EmployeeModel>,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$AddParticipationImpl implements _AddParticipation {
  const _$AddParticipationImpl(
      {required final List<EmployeeModel> employees,
      required this.taskId,
      required this.departmentId,
      this.status,
      this.date})
      : _employees = employees;

  final List<EmployeeModel> _employees;
  @override
  List<EmployeeModel> get employees {
    if (_employees is EqualUnmodifiableListView) return _employees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_employees);
  }

  @override
  final int taskId;
  @override
  final int departmentId;
  @override
  final String? status;
  @override
  final DateTime? date;

  @override
  String toString() {
    return 'ParticipationEvent.addParticipation(employees: $employees, taskId: $taskId, departmentId: $departmentId, status: $status, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddParticipationImpl &&
            const DeepCollectionEquality()
                .equals(other._employees, _employees) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_employees),
      taskId,
      departmentId,
      status,
      date);

  /// Create a copy of ParticipationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddParticipationImplCopyWith<_$AddParticipationImpl> get copyWith =>
      __$$AddParticipationImplCopyWithImpl<_$AddParticipationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int departmentId, DateTime? date)
        loadParticipation,
    required TResult Function(int departmentId, int employeeId)
        loadParticipationForEmployee,
    required TResult Function(int departmentId, String status)
        loadFilteredParticipation,
    required TResult Function(int departmentId, int employeeId, String status)
        loadFilteredParticipationForEmployee,
    required TResult Function(List<EmployeeModel> employees, int taskId,
            int departmentId, String? status, DateTime? date)
        addParticipation,
  }) {
    return addParticipation(employees, taskId, departmentId, status, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int departmentId, DateTime? date)? loadParticipation,
    TResult? Function(int departmentId, int employeeId)?
        loadParticipationForEmployee,
    TResult? Function(int departmentId, String status)?
        loadFilteredParticipation,
    TResult? Function(int departmentId, int employeeId, String status)?
        loadFilteredParticipationForEmployee,
    TResult? Function(List<EmployeeModel> employees, int taskId,
            int departmentId, String? status, DateTime? date)?
        addParticipation,
  }) {
    return addParticipation?.call(
        employees, taskId, departmentId, status, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int departmentId, DateTime? date)? loadParticipation,
    TResult Function(int departmentId, int employeeId)?
        loadParticipationForEmployee,
    TResult Function(int departmentId, String status)?
        loadFilteredParticipation,
    TResult Function(int departmentId, int employeeId, String status)?
        loadFilteredParticipationForEmployee,
    TResult Function(List<EmployeeModel> employees, int taskId,
            int departmentId, String? status, DateTime? date)?
        addParticipation,
    required TResult orElse(),
  }) {
    if (addParticipation != null) {
      return addParticipation(employees, taskId, departmentId, status, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadParticipation value) loadParticipation,
    required TResult Function(_LoadParticipationForEmployee value)
        loadParticipationForEmployee,
    required TResult Function(_LoadFilteredParticipation value)
        loadFilteredParticipation,
    required TResult Function(_LoadFilteredParticipationForEmployee value)
        loadFilteredParticipationForEmployee,
    required TResult Function(_AddParticipation value) addParticipation,
  }) {
    return addParticipation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadParticipation value)? loadParticipation,
    TResult? Function(_LoadParticipationForEmployee value)?
        loadParticipationForEmployee,
    TResult? Function(_LoadFilteredParticipation value)?
        loadFilteredParticipation,
    TResult? Function(_LoadFilteredParticipationForEmployee value)?
        loadFilteredParticipationForEmployee,
    TResult? Function(_AddParticipation value)? addParticipation,
  }) {
    return addParticipation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadParticipation value)? loadParticipation,
    TResult Function(_LoadParticipationForEmployee value)?
        loadParticipationForEmployee,
    TResult Function(_LoadFilteredParticipation value)?
        loadFilteredParticipation,
    TResult Function(_LoadFilteredParticipationForEmployee value)?
        loadFilteredParticipationForEmployee,
    TResult Function(_AddParticipation value)? addParticipation,
    required TResult orElse(),
  }) {
    if (addParticipation != null) {
      return addParticipation(this);
    }
    return orElse();
  }
}

abstract class _AddParticipation implements ParticipationEvent {
  const factory _AddParticipation(
      {required final List<EmployeeModel> employees,
      required final int taskId,
      required final int departmentId,
      final String? status,
      final DateTime? date}) = _$AddParticipationImpl;

  List<EmployeeModel> get employees;
  int get taskId;
  @override
  int get departmentId;
  String? get status;
  DateTime? get date;

  /// Create a copy of ParticipationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddParticipationImplCopyWith<_$AddParticipationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ParticipationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ParticipationModel> participation)
        loadedParticipation,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ParticipationModel> participation)?
        loadedParticipation,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ParticipationModel> participation)?
        loadedParticipation,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedParticipation value) loadedParticipation,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedParticipation value)? loadedParticipation,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedParticipation value)? loadedParticipation,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipationStateCopyWith<$Res> {
  factory $ParticipationStateCopyWith(
          ParticipationState value, $Res Function(ParticipationState) then) =
      _$ParticipationStateCopyWithImpl<$Res, ParticipationState>;
}

/// @nodoc
class _$ParticipationStateCopyWithImpl<$Res, $Val extends ParticipationState>
    implements $ParticipationStateCopyWith<$Res> {
  _$ParticipationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParticipationState
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
    extends _$ParticipationStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParticipationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ParticipationState.loading()';
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
    required TResult Function(List<ParticipationModel> participation)
        loadedParticipation,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ParticipationModel> participation)?
        loadedParticipation,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ParticipationModel> participation)?
        loadedParticipation,
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
    required TResult Function(_LoadedParticipation value) loadedParticipation,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedParticipation value)? loadedParticipation,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedParticipation value)? loadedParticipation,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ParticipationState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedParticipationImplCopyWith<$Res> {
  factory _$$LoadedParticipationImplCopyWith(_$LoadedParticipationImpl value,
          $Res Function(_$LoadedParticipationImpl) then) =
      __$$LoadedParticipationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ParticipationModel> participation});
}

/// @nodoc
class __$$LoadedParticipationImplCopyWithImpl<$Res>
    extends _$ParticipationStateCopyWithImpl<$Res, _$LoadedParticipationImpl>
    implements _$$LoadedParticipationImplCopyWith<$Res> {
  __$$LoadedParticipationImplCopyWithImpl(_$LoadedParticipationImpl _value,
      $Res Function(_$LoadedParticipationImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParticipationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? participation = null,
  }) {
    return _then(_$LoadedParticipationImpl(
      participation: null == participation
          ? _value._participation
          : participation // ignore: cast_nullable_to_non_nullable
              as List<ParticipationModel>,
    ));
  }
}

/// @nodoc

class _$LoadedParticipationImpl implements _LoadedParticipation {
  const _$LoadedParticipationImpl(
      {required final List<ParticipationModel> participation})
      : _participation = participation;

  final List<ParticipationModel> _participation;
  @override
  List<ParticipationModel> get participation {
    if (_participation is EqualUnmodifiableListView) return _participation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participation);
  }

  @override
  String toString() {
    return 'ParticipationState.loadedParticipation(participation: $participation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedParticipationImpl &&
            const DeepCollectionEquality()
                .equals(other._participation, _participation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_participation));

  /// Create a copy of ParticipationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedParticipationImplCopyWith<_$LoadedParticipationImpl> get copyWith =>
      __$$LoadedParticipationImplCopyWithImpl<_$LoadedParticipationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ParticipationModel> participation)
        loadedParticipation,
    required TResult Function(String message) failure,
  }) {
    return loadedParticipation(participation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ParticipationModel> participation)?
        loadedParticipation,
    TResult? Function(String message)? failure,
  }) {
    return loadedParticipation?.call(participation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ParticipationModel> participation)?
        loadedParticipation,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loadedParticipation != null) {
      return loadedParticipation(participation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedParticipation value) loadedParticipation,
    required TResult Function(_Failure value) failure,
  }) {
    return loadedParticipation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedParticipation value)? loadedParticipation,
    TResult? Function(_Failure value)? failure,
  }) {
    return loadedParticipation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedParticipation value)? loadedParticipation,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loadedParticipation != null) {
      return loadedParticipation(this);
    }
    return orElse();
  }
}

abstract class _LoadedParticipation implements ParticipationState {
  const factory _LoadedParticipation(
          {required final List<ParticipationModel> participation}) =
      _$LoadedParticipationImpl;

  List<ParticipationModel> get participation;

  /// Create a copy of ParticipationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedParticipationImplCopyWith<_$LoadedParticipationImpl> get copyWith =>
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
    extends _$ParticipationStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParticipationState
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
    return 'ParticipationState.failure(message: $message)';
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

  /// Create a copy of ParticipationState
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
    required TResult Function(List<ParticipationModel> participation)
        loadedParticipation,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ParticipationModel> participation)?
        loadedParticipation,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ParticipationModel> participation)?
        loadedParticipation,
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
    required TResult Function(_LoadedParticipation value) loadedParticipation,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedParticipation value)? loadedParticipation,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedParticipation value)? loadedParticipation,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements ParticipationState {
  const factory _Failure({required final String message}) = _$FailureImpl;

  String get message;

  /// Create a copy of ParticipationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
