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
  DateTime get date => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int departmentId, DateTime date)
        loadParticipation,
    required TResult Function(List<EmployeeModel> employees, int taskId,
            int departmentId, DateTime date)
        addParticipation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int departmentId, DateTime date)? loadParticipation,
    TResult? Function(List<EmployeeModel> employees, int taskId,
            int departmentId, DateTime date)?
        addParticipation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int departmentId, DateTime date)? loadParticipation,
    TResult Function(List<EmployeeModel> employees, int taskId,
            int departmentId, DateTime date)?
        addParticipation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadParticipation value) loadParticipation,
    required TResult Function(_AddParticipation value) addParticipation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadParticipation value)? loadParticipation,
    TResult? Function(_AddParticipation value)? addParticipation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadParticipation value)? loadParticipation,
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
  $Res call({int departmentId, DateTime date});
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
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
  $Res call({int departmentId, DateTime date});
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
    Object? date = null,
  }) {
    return _then(_$LoadParticipationImpl(
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$LoadParticipationImpl implements _LoadParticipation {
  const _$LoadParticipationImpl(
      {required this.departmentId, required this.date});

  @override
  final int departmentId;
  @override
  final DateTime date;

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
    required TResult Function(int departmentId, DateTime date)
        loadParticipation,
    required TResult Function(List<EmployeeModel> employees, int taskId,
            int departmentId, DateTime date)
        addParticipation,
  }) {
    return loadParticipation(departmentId, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int departmentId, DateTime date)? loadParticipation,
    TResult? Function(List<EmployeeModel> employees, int taskId,
            int departmentId, DateTime date)?
        addParticipation,
  }) {
    return loadParticipation?.call(departmentId, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int departmentId, DateTime date)? loadParticipation,
    TResult Function(List<EmployeeModel> employees, int taskId,
            int departmentId, DateTime date)?
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
    required TResult Function(_AddParticipation value) addParticipation,
  }) {
    return loadParticipation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadParticipation value)? loadParticipation,
    TResult? Function(_AddParticipation value)? addParticipation,
  }) {
    return loadParticipation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadParticipation value)? loadParticipation,
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
      required final DateTime date}) = _$LoadParticipationImpl;

  @override
  int get departmentId;
  @override
  DateTime get date;

  /// Create a copy of ParticipationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadParticipationImplCopyWith<_$LoadParticipationImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
      DateTime date});
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
    Object? date = null,
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
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$AddParticipationImpl implements _AddParticipation {
  const _$AddParticipationImpl(
      {required final List<EmployeeModel> employees,
      required this.taskId,
      required this.departmentId,
      required this.date})
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
  final DateTime date;

  @override
  String toString() {
    return 'ParticipationEvent.addParticipation(employees: $employees, taskId: $taskId, departmentId: $departmentId, date: $date)';
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
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_employees),
      taskId,
      departmentId,
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
    required TResult Function(int departmentId, DateTime date)
        loadParticipation,
    required TResult Function(List<EmployeeModel> employees, int taskId,
            int departmentId, DateTime date)
        addParticipation,
  }) {
    return addParticipation(employees, taskId, departmentId, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int departmentId, DateTime date)? loadParticipation,
    TResult? Function(List<EmployeeModel> employees, int taskId,
            int departmentId, DateTime date)?
        addParticipation,
  }) {
    return addParticipation?.call(employees, taskId, departmentId, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int departmentId, DateTime date)? loadParticipation,
    TResult Function(List<EmployeeModel> employees, int taskId,
            int departmentId, DateTime date)?
        addParticipation,
    required TResult orElse(),
  }) {
    if (addParticipation != null) {
      return addParticipation(employees, taskId, departmentId, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadParticipation value) loadParticipation,
    required TResult Function(_AddParticipation value) addParticipation,
  }) {
    return addParticipation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadParticipation value)? loadParticipation,
    TResult? Function(_AddParticipation value)? addParticipation,
  }) {
    return addParticipation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadParticipation value)? loadParticipation,
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
      required final DateTime date}) = _$AddParticipationImpl;

  List<EmployeeModel> get employees;
  int get taskId;
  @override
  int get departmentId;
  @override
  DateTime get date;

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
