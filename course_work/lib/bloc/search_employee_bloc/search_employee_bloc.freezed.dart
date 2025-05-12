// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_employee_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchEmployeeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchEmployee,
    required TResult Function(int taskId, int departmentId) resetSearch,
    required TResult Function(int taskId, int departmentId) loadEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchEmployee,
    TResult? Function(int taskId, int departmentId)? resetSearch,
    TResult? Function(int taskId, int departmentId)? loadEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchEmployee,
    TResult Function(int taskId, int departmentId)? resetSearch,
    TResult Function(int taskId, int departmentId)? loadEmployee,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchEmployee value) searchEmployee,
    required TResult Function(_ResetSearch value) resetSearch,
    required TResult Function(_LoadEmployee value) loadEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchEmployee value)? searchEmployee,
    TResult? Function(_ResetSearch value)? resetSearch,
    TResult? Function(_LoadEmployee value)? loadEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchEmployee value)? searchEmployee,
    TResult Function(_ResetSearch value)? resetSearch,
    TResult Function(_LoadEmployee value)? loadEmployee,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEmployeeEventCopyWith<$Res> {
  factory $SearchEmployeeEventCopyWith(
          SearchEmployeeEvent value, $Res Function(SearchEmployeeEvent) then) =
      _$SearchEmployeeEventCopyWithImpl<$Res, SearchEmployeeEvent>;
}

/// @nodoc
class _$SearchEmployeeEventCopyWithImpl<$Res, $Val extends SearchEmployeeEvent>
    implements $SearchEmployeeEventCopyWith<$Res> {
  _$SearchEmployeeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchEmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SearchEmployeeImplCopyWith<$Res> {
  factory _$$SearchEmployeeImplCopyWith(_$SearchEmployeeImpl value,
          $Res Function(_$SearchEmployeeImpl) then) =
      __$$SearchEmployeeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchEmployeeImplCopyWithImpl<$Res>
    extends _$SearchEmployeeEventCopyWithImpl<$Res, _$SearchEmployeeImpl>
    implements _$$SearchEmployeeImplCopyWith<$Res> {
  __$$SearchEmployeeImplCopyWithImpl(
      _$SearchEmployeeImpl _value, $Res Function(_$SearchEmployeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchEmployeeImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchEmployeeImpl implements _SearchEmployee {
  const _$SearchEmployeeImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEmployeeEvent.searchEmployee(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchEmployeeImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of SearchEmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchEmployeeImplCopyWith<_$SearchEmployeeImpl> get copyWith =>
      __$$SearchEmployeeImplCopyWithImpl<_$SearchEmployeeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchEmployee,
    required TResult Function(int taskId, int departmentId) resetSearch,
    required TResult Function(int taskId, int departmentId) loadEmployee,
  }) {
    return searchEmployee(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchEmployee,
    TResult? Function(int taskId, int departmentId)? resetSearch,
    TResult? Function(int taskId, int departmentId)? loadEmployee,
  }) {
    return searchEmployee?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchEmployee,
    TResult Function(int taskId, int departmentId)? resetSearch,
    TResult Function(int taskId, int departmentId)? loadEmployee,
    required TResult orElse(),
  }) {
    if (searchEmployee != null) {
      return searchEmployee(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchEmployee value) searchEmployee,
    required TResult Function(_ResetSearch value) resetSearch,
    required TResult Function(_LoadEmployee value) loadEmployee,
  }) {
    return searchEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchEmployee value)? searchEmployee,
    TResult? Function(_ResetSearch value)? resetSearch,
    TResult? Function(_LoadEmployee value)? loadEmployee,
  }) {
    return searchEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchEmployee value)? searchEmployee,
    TResult Function(_ResetSearch value)? resetSearch,
    TResult Function(_LoadEmployee value)? loadEmployee,
    required TResult orElse(),
  }) {
    if (searchEmployee != null) {
      return searchEmployee(this);
    }
    return orElse();
  }
}

abstract class _SearchEmployee implements SearchEmployeeEvent {
  const factory _SearchEmployee({required final String query}) =
      _$SearchEmployeeImpl;

  String get query;

  /// Create a copy of SearchEmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchEmployeeImplCopyWith<_$SearchEmployeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetSearchImplCopyWith<$Res> {
  factory _$$ResetSearchImplCopyWith(
          _$ResetSearchImpl value, $Res Function(_$ResetSearchImpl) then) =
      __$$ResetSearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int taskId, int departmentId});
}

/// @nodoc
class __$$ResetSearchImplCopyWithImpl<$Res>
    extends _$SearchEmployeeEventCopyWithImpl<$Res, _$ResetSearchImpl>
    implements _$$ResetSearchImplCopyWith<$Res> {
  __$$ResetSearchImplCopyWithImpl(
      _$ResetSearchImpl _value, $Res Function(_$ResetSearchImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? departmentId = null,
  }) {
    return _then(_$ResetSearchImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ResetSearchImpl implements _ResetSearch {
  const _$ResetSearchImpl({required this.taskId, required this.departmentId});

  @override
  final int taskId;
  @override
  final int departmentId;

  @override
  String toString() {
    return 'SearchEmployeeEvent.resetSearch(taskId: $taskId, departmentId: $departmentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetSearchImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId, departmentId);

  /// Create a copy of SearchEmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetSearchImplCopyWith<_$ResetSearchImpl> get copyWith =>
      __$$ResetSearchImplCopyWithImpl<_$ResetSearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchEmployee,
    required TResult Function(int taskId, int departmentId) resetSearch,
    required TResult Function(int taskId, int departmentId) loadEmployee,
  }) {
    return resetSearch(taskId, departmentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchEmployee,
    TResult? Function(int taskId, int departmentId)? resetSearch,
    TResult? Function(int taskId, int departmentId)? loadEmployee,
  }) {
    return resetSearch?.call(taskId, departmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchEmployee,
    TResult Function(int taskId, int departmentId)? resetSearch,
    TResult Function(int taskId, int departmentId)? loadEmployee,
    required TResult orElse(),
  }) {
    if (resetSearch != null) {
      return resetSearch(taskId, departmentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchEmployee value) searchEmployee,
    required TResult Function(_ResetSearch value) resetSearch,
    required TResult Function(_LoadEmployee value) loadEmployee,
  }) {
    return resetSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchEmployee value)? searchEmployee,
    TResult? Function(_ResetSearch value)? resetSearch,
    TResult? Function(_LoadEmployee value)? loadEmployee,
  }) {
    return resetSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchEmployee value)? searchEmployee,
    TResult Function(_ResetSearch value)? resetSearch,
    TResult Function(_LoadEmployee value)? loadEmployee,
    required TResult orElse(),
  }) {
    if (resetSearch != null) {
      return resetSearch(this);
    }
    return orElse();
  }
}

abstract class _ResetSearch implements SearchEmployeeEvent {
  const factory _ResetSearch(
      {required final int taskId,
      required final int departmentId}) = _$ResetSearchImpl;

  int get taskId;
  int get departmentId;

  /// Create a copy of SearchEmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetSearchImplCopyWith<_$ResetSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadEmployeeImplCopyWith<$Res> {
  factory _$$LoadEmployeeImplCopyWith(
          _$LoadEmployeeImpl value, $Res Function(_$LoadEmployeeImpl) then) =
      __$$LoadEmployeeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int taskId, int departmentId});
}

/// @nodoc
class __$$LoadEmployeeImplCopyWithImpl<$Res>
    extends _$SearchEmployeeEventCopyWithImpl<$Res, _$LoadEmployeeImpl>
    implements _$$LoadEmployeeImplCopyWith<$Res> {
  __$$LoadEmployeeImplCopyWithImpl(
      _$LoadEmployeeImpl _value, $Res Function(_$LoadEmployeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? departmentId = null,
  }) {
    return _then(_$LoadEmployeeImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadEmployeeImpl implements _LoadEmployee {
  const _$LoadEmployeeImpl({required this.taskId, required this.departmentId});

  @override
  final int taskId;
  @override
  final int departmentId;

  @override
  String toString() {
    return 'SearchEmployeeEvent.loadEmployee(taskId: $taskId, departmentId: $departmentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadEmployeeImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId, departmentId);

  /// Create a copy of SearchEmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadEmployeeImplCopyWith<_$LoadEmployeeImpl> get copyWith =>
      __$$LoadEmployeeImplCopyWithImpl<_$LoadEmployeeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchEmployee,
    required TResult Function(int taskId, int departmentId) resetSearch,
    required TResult Function(int taskId, int departmentId) loadEmployee,
  }) {
    return loadEmployee(taskId, departmentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchEmployee,
    TResult? Function(int taskId, int departmentId)? resetSearch,
    TResult? Function(int taskId, int departmentId)? loadEmployee,
  }) {
    return loadEmployee?.call(taskId, departmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchEmployee,
    TResult Function(int taskId, int departmentId)? resetSearch,
    TResult Function(int taskId, int departmentId)? loadEmployee,
    required TResult orElse(),
  }) {
    if (loadEmployee != null) {
      return loadEmployee(taskId, departmentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchEmployee value) searchEmployee,
    required TResult Function(_ResetSearch value) resetSearch,
    required TResult Function(_LoadEmployee value) loadEmployee,
  }) {
    return loadEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchEmployee value)? searchEmployee,
    TResult? Function(_ResetSearch value)? resetSearch,
    TResult? Function(_LoadEmployee value)? loadEmployee,
  }) {
    return loadEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchEmployee value)? searchEmployee,
    TResult Function(_ResetSearch value)? resetSearch,
    TResult Function(_LoadEmployee value)? loadEmployee,
    required TResult orElse(),
  }) {
    if (loadEmployee != null) {
      return loadEmployee(this);
    }
    return orElse();
  }
}

abstract class _LoadEmployee implements SearchEmployeeEvent {
  const factory _LoadEmployee(
      {required final int taskId,
      required final int departmentId}) = _$LoadEmployeeImpl;

  int get taskId;
  int get departmentId;

  /// Create a copy of SearchEmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadEmployeeImplCopyWith<_$LoadEmployeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchEmployeeState {
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
    required TResult Function(_loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEmployeeStateCopyWith<$Res> {
  factory $SearchEmployeeStateCopyWith(
          SearchEmployeeState value, $Res Function(SearchEmployeeState) then) =
      _$SearchEmployeeStateCopyWithImpl<$Res, SearchEmployeeState>;
}

/// @nodoc
class _$SearchEmployeeStateCopyWithImpl<$Res, $Val extends SearchEmployeeState>
    implements $SearchEmployeeStateCopyWith<$Res> {
  _$SearchEmployeeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchEmployeeState
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
    extends _$SearchEmployeeStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEmployeeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'SearchEmployeeState.loading()';
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
    required TResult Function(_loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SearchEmployeeState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$loadedImplCopyWith<$Res> {
  factory _$$loadedImplCopyWith(
          _$loadedImpl value, $Res Function(_$loadedImpl) then) =
      __$$loadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<EmployeeModel> employees});
}

/// @nodoc
class __$$loadedImplCopyWithImpl<$Res>
    extends _$SearchEmployeeStateCopyWithImpl<$Res, _$loadedImpl>
    implements _$$loadedImplCopyWith<$Res> {
  __$$loadedImplCopyWithImpl(
      _$loadedImpl _value, $Res Function(_$loadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEmployeeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employees = null,
  }) {
    return _then(_$loadedImpl(
      employees: null == employees
          ? _value._employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<EmployeeModel>,
    ));
  }
}

/// @nodoc

class _$loadedImpl implements _loaded {
  const _$loadedImpl({required final List<EmployeeModel> employees})
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
    return 'SearchEmployeeState.loaded(employees: $employees)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$loadedImpl &&
            const DeepCollectionEquality()
                .equals(other._employees, _employees));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_employees));

  /// Create a copy of SearchEmployeeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$loadedImplCopyWith<_$loadedImpl> get copyWith =>
      __$$loadedImplCopyWithImpl<_$loadedImpl>(this, _$identity);

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
    required TResult Function(_loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _loaded implements SearchEmployeeState {
  const factory _loaded({required final List<EmployeeModel> employees}) =
      _$loadedImpl;

  List<EmployeeModel> get employees;

  /// Create a copy of SearchEmployeeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$loadedImplCopyWith<_$loadedImpl> get copyWith =>
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
    extends _$SearchEmployeeStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEmployeeState
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
    return 'SearchEmployeeState.failure(message: $message)';
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

  /// Create a copy of SearchEmployeeState
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
    required TResult Function(_loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements SearchEmployeeState {
  const factory _Failure({required final String message}) = _$FailureImpl;

  String get message;

  /// Create a copy of SearchEmployeeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
