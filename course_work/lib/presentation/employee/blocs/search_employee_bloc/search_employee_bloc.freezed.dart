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
    required TResult Function(String query) search,
    required TResult Function() resetSearch,
    required TResult Function() updateStateLoading,
    required TResult Function(List<EmployeeModel> employees) updateStateLoaded,
    required TResult Function(String message) updateStateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function()? resetSearch,
    TResult? Function()? updateStateLoading,
    TResult? Function(List<EmployeeModel> employees)? updateStateLoaded,
    TResult? Function(String message)? updateStateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function()? resetSearch,
    TResult Function()? updateStateLoading,
    TResult Function(List<EmployeeModel> employees)? updateStateLoaded,
    TResult Function(String message)? updateStateFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_ResetSearch value) resetSearch,
    required TResult Function(_UpdateStateLoading value) updateStateLoading,
    required TResult Function(_UpdateStateLoaded value) updateStateLoaded,
    required TResult Function(_UpdateStateFailure value) updateStateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_ResetSearch value)? resetSearch,
    TResult? Function(_UpdateStateLoading value)? updateStateLoading,
    TResult? Function(_UpdateStateLoaded value)? updateStateLoaded,
    TResult? Function(_UpdateStateFailure value)? updateStateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ResetSearch value)? resetSearch,
    TResult Function(_UpdateStateLoading value)? updateStateLoading,
    TResult Function(_UpdateStateLoaded value)? updateStateLoaded,
    TResult Function(_UpdateStateFailure value)? updateStateFailure,
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
abstract class _$$SearchImplCopyWith<$Res> {
  factory _$$SearchImplCopyWith(
          _$SearchImpl value, $Res Function(_$SearchImpl) then) =
      __$$SearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res>
    extends _$SearchEmployeeEventCopyWithImpl<$Res, _$SearchImpl>
    implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(
      _$SearchImpl _value, $Res Function(_$SearchImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchImpl implements _Search {
  const _$SearchImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEmployeeEvent.search(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of SearchEmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      __$$SearchImplCopyWithImpl<_$SearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function() resetSearch,
    required TResult Function() updateStateLoading,
    required TResult Function(List<EmployeeModel> employees) updateStateLoaded,
    required TResult Function(String message) updateStateFailure,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function()? resetSearch,
    TResult? Function()? updateStateLoading,
    TResult? Function(List<EmployeeModel> employees)? updateStateLoaded,
    TResult? Function(String message)? updateStateFailure,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function()? resetSearch,
    TResult Function()? updateStateLoading,
    TResult Function(List<EmployeeModel> employees)? updateStateLoaded,
    TResult Function(String message)? updateStateFailure,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_ResetSearch value) resetSearch,
    required TResult Function(_UpdateStateLoading value) updateStateLoading,
    required TResult Function(_UpdateStateLoaded value) updateStateLoaded,
    required TResult Function(_UpdateStateFailure value) updateStateFailure,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_ResetSearch value)? resetSearch,
    TResult? Function(_UpdateStateLoading value)? updateStateLoading,
    TResult? Function(_UpdateStateLoaded value)? updateStateLoaded,
    TResult? Function(_UpdateStateFailure value)? updateStateFailure,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ResetSearch value)? resetSearch,
    TResult Function(_UpdateStateLoading value)? updateStateLoading,
    TResult Function(_UpdateStateLoaded value)? updateStateLoaded,
    TResult Function(_UpdateStateFailure value)? updateStateFailure,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements SearchEmployeeEvent {
  const factory _Search({required final String query}) = _$SearchImpl;

  String get query;

  /// Create a copy of SearchEmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetSearchImplCopyWith<$Res> {
  factory _$$ResetSearchImplCopyWith(
          _$ResetSearchImpl value, $Res Function(_$ResetSearchImpl) then) =
      __$$ResetSearchImplCopyWithImpl<$Res>;
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
}

/// @nodoc

class _$ResetSearchImpl implements _ResetSearch {
  const _$ResetSearchImpl();

  @override
  String toString() {
    return 'SearchEmployeeEvent.resetSearch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetSearchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function() resetSearch,
    required TResult Function() updateStateLoading,
    required TResult Function(List<EmployeeModel> employees) updateStateLoaded,
    required TResult Function(String message) updateStateFailure,
  }) {
    return resetSearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function()? resetSearch,
    TResult? Function()? updateStateLoading,
    TResult? Function(List<EmployeeModel> employees)? updateStateLoaded,
    TResult? Function(String message)? updateStateFailure,
  }) {
    return resetSearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function()? resetSearch,
    TResult Function()? updateStateLoading,
    TResult Function(List<EmployeeModel> employees)? updateStateLoaded,
    TResult Function(String message)? updateStateFailure,
    required TResult orElse(),
  }) {
    if (resetSearch != null) {
      return resetSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_ResetSearch value) resetSearch,
    required TResult Function(_UpdateStateLoading value) updateStateLoading,
    required TResult Function(_UpdateStateLoaded value) updateStateLoaded,
    required TResult Function(_UpdateStateFailure value) updateStateFailure,
  }) {
    return resetSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_ResetSearch value)? resetSearch,
    TResult? Function(_UpdateStateLoading value)? updateStateLoading,
    TResult? Function(_UpdateStateLoaded value)? updateStateLoaded,
    TResult? Function(_UpdateStateFailure value)? updateStateFailure,
  }) {
    return resetSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ResetSearch value)? resetSearch,
    TResult Function(_UpdateStateLoading value)? updateStateLoading,
    TResult Function(_UpdateStateLoaded value)? updateStateLoaded,
    TResult Function(_UpdateStateFailure value)? updateStateFailure,
    required TResult orElse(),
  }) {
    if (resetSearch != null) {
      return resetSearch(this);
    }
    return orElse();
  }
}

abstract class _ResetSearch implements SearchEmployeeEvent {
  const factory _ResetSearch() = _$ResetSearchImpl;
}

/// @nodoc
abstract class _$$UpdateStateLoadingImplCopyWith<$Res> {
  factory _$$UpdateStateLoadingImplCopyWith(_$UpdateStateLoadingImpl value,
          $Res Function(_$UpdateStateLoadingImpl) then) =
      __$$UpdateStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateStateLoadingImplCopyWithImpl<$Res>
    extends _$SearchEmployeeEventCopyWithImpl<$Res, _$UpdateStateLoadingImpl>
    implements _$$UpdateStateLoadingImplCopyWith<$Res> {
  __$$UpdateStateLoadingImplCopyWithImpl(_$UpdateStateLoadingImpl _value,
      $Res Function(_$UpdateStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateStateLoadingImpl implements _UpdateStateLoading {
  const _$UpdateStateLoadingImpl();

  @override
  String toString() {
    return 'SearchEmployeeEvent.updateStateLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function() resetSearch,
    required TResult Function() updateStateLoading,
    required TResult Function(List<EmployeeModel> employees) updateStateLoaded,
    required TResult Function(String message) updateStateFailure,
  }) {
    return updateStateLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function()? resetSearch,
    TResult? Function()? updateStateLoading,
    TResult? Function(List<EmployeeModel> employees)? updateStateLoaded,
    TResult? Function(String message)? updateStateFailure,
  }) {
    return updateStateLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function()? resetSearch,
    TResult Function()? updateStateLoading,
    TResult Function(List<EmployeeModel> employees)? updateStateLoaded,
    TResult Function(String message)? updateStateFailure,
    required TResult orElse(),
  }) {
    if (updateStateLoading != null) {
      return updateStateLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_ResetSearch value) resetSearch,
    required TResult Function(_UpdateStateLoading value) updateStateLoading,
    required TResult Function(_UpdateStateLoaded value) updateStateLoaded,
    required TResult Function(_UpdateStateFailure value) updateStateFailure,
  }) {
    return updateStateLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_ResetSearch value)? resetSearch,
    TResult? Function(_UpdateStateLoading value)? updateStateLoading,
    TResult? Function(_UpdateStateLoaded value)? updateStateLoaded,
    TResult? Function(_UpdateStateFailure value)? updateStateFailure,
  }) {
    return updateStateLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ResetSearch value)? resetSearch,
    TResult Function(_UpdateStateLoading value)? updateStateLoading,
    TResult Function(_UpdateStateLoaded value)? updateStateLoaded,
    TResult Function(_UpdateStateFailure value)? updateStateFailure,
    required TResult orElse(),
  }) {
    if (updateStateLoading != null) {
      return updateStateLoading(this);
    }
    return orElse();
  }
}

abstract class _UpdateStateLoading implements SearchEmployeeEvent {
  const factory _UpdateStateLoading() = _$UpdateStateLoadingImpl;
}

/// @nodoc
abstract class _$$UpdateStateLoadedImplCopyWith<$Res> {
  factory _$$UpdateStateLoadedImplCopyWith(_$UpdateStateLoadedImpl value,
          $Res Function(_$UpdateStateLoadedImpl) then) =
      __$$UpdateStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<EmployeeModel> employees});
}

/// @nodoc
class __$$UpdateStateLoadedImplCopyWithImpl<$Res>
    extends _$SearchEmployeeEventCopyWithImpl<$Res, _$UpdateStateLoadedImpl>
    implements _$$UpdateStateLoadedImplCopyWith<$Res> {
  __$$UpdateStateLoadedImplCopyWithImpl(_$UpdateStateLoadedImpl _value,
      $Res Function(_$UpdateStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employees = null,
  }) {
    return _then(_$UpdateStateLoadedImpl(
      employees: null == employees
          ? _value._employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<EmployeeModel>,
    ));
  }
}

/// @nodoc

class _$UpdateStateLoadedImpl implements _UpdateStateLoaded {
  const _$UpdateStateLoadedImpl({required final List<EmployeeModel> employees})
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
    return 'SearchEmployeeEvent.updateStateLoaded(employees: $employees)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStateLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._employees, _employees));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_employees));

  /// Create a copy of SearchEmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStateLoadedImplCopyWith<_$UpdateStateLoadedImpl> get copyWith =>
      __$$UpdateStateLoadedImplCopyWithImpl<_$UpdateStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function() resetSearch,
    required TResult Function() updateStateLoading,
    required TResult Function(List<EmployeeModel> employees) updateStateLoaded,
    required TResult Function(String message) updateStateFailure,
  }) {
    return updateStateLoaded(employees);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function()? resetSearch,
    TResult? Function()? updateStateLoading,
    TResult? Function(List<EmployeeModel> employees)? updateStateLoaded,
    TResult? Function(String message)? updateStateFailure,
  }) {
    return updateStateLoaded?.call(employees);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function()? resetSearch,
    TResult Function()? updateStateLoading,
    TResult Function(List<EmployeeModel> employees)? updateStateLoaded,
    TResult Function(String message)? updateStateFailure,
    required TResult orElse(),
  }) {
    if (updateStateLoaded != null) {
      return updateStateLoaded(employees);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_ResetSearch value) resetSearch,
    required TResult Function(_UpdateStateLoading value) updateStateLoading,
    required TResult Function(_UpdateStateLoaded value) updateStateLoaded,
    required TResult Function(_UpdateStateFailure value) updateStateFailure,
  }) {
    return updateStateLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_ResetSearch value)? resetSearch,
    TResult? Function(_UpdateStateLoading value)? updateStateLoading,
    TResult? Function(_UpdateStateLoaded value)? updateStateLoaded,
    TResult? Function(_UpdateStateFailure value)? updateStateFailure,
  }) {
    return updateStateLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ResetSearch value)? resetSearch,
    TResult Function(_UpdateStateLoading value)? updateStateLoading,
    TResult Function(_UpdateStateLoaded value)? updateStateLoaded,
    TResult Function(_UpdateStateFailure value)? updateStateFailure,
    required TResult orElse(),
  }) {
    if (updateStateLoaded != null) {
      return updateStateLoaded(this);
    }
    return orElse();
  }
}

abstract class _UpdateStateLoaded implements SearchEmployeeEvent {
  const factory _UpdateStateLoaded(
      {required final List<EmployeeModel> employees}) = _$UpdateStateLoadedImpl;

  List<EmployeeModel> get employees;

  /// Create a copy of SearchEmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateStateLoadedImplCopyWith<_$UpdateStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateStateFailureImplCopyWith<$Res> {
  factory _$$UpdateStateFailureImplCopyWith(_$UpdateStateFailureImpl value,
          $Res Function(_$UpdateStateFailureImpl) then) =
      __$$UpdateStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UpdateStateFailureImplCopyWithImpl<$Res>
    extends _$SearchEmployeeEventCopyWithImpl<$Res, _$UpdateStateFailureImpl>
    implements _$$UpdateStateFailureImplCopyWith<$Res> {
  __$$UpdateStateFailureImplCopyWithImpl(_$UpdateStateFailureImpl _value,
      $Res Function(_$UpdateStateFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UpdateStateFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateStateFailureImpl implements _UpdateStateFailure {
  const _$UpdateStateFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'SearchEmployeeEvent.updateStateFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStateFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SearchEmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStateFailureImplCopyWith<_$UpdateStateFailureImpl> get copyWith =>
      __$$UpdateStateFailureImplCopyWithImpl<_$UpdateStateFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function() resetSearch,
    required TResult Function() updateStateLoading,
    required TResult Function(List<EmployeeModel> employees) updateStateLoaded,
    required TResult Function(String message) updateStateFailure,
  }) {
    return updateStateFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function()? resetSearch,
    TResult? Function()? updateStateLoading,
    TResult? Function(List<EmployeeModel> employees)? updateStateLoaded,
    TResult? Function(String message)? updateStateFailure,
  }) {
    return updateStateFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function()? resetSearch,
    TResult Function()? updateStateLoading,
    TResult Function(List<EmployeeModel> employees)? updateStateLoaded,
    TResult Function(String message)? updateStateFailure,
    required TResult orElse(),
  }) {
    if (updateStateFailure != null) {
      return updateStateFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_ResetSearch value) resetSearch,
    required TResult Function(_UpdateStateLoading value) updateStateLoading,
    required TResult Function(_UpdateStateLoaded value) updateStateLoaded,
    required TResult Function(_UpdateStateFailure value) updateStateFailure,
  }) {
    return updateStateFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_ResetSearch value)? resetSearch,
    TResult? Function(_UpdateStateLoading value)? updateStateLoading,
    TResult? Function(_UpdateStateLoaded value)? updateStateLoaded,
    TResult? Function(_UpdateStateFailure value)? updateStateFailure,
  }) {
    return updateStateFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ResetSearch value)? resetSearch,
    TResult Function(_UpdateStateLoading value)? updateStateLoading,
    TResult Function(_UpdateStateLoaded value)? updateStateLoaded,
    TResult Function(_UpdateStateFailure value)? updateStateFailure,
    required TResult orElse(),
  }) {
    if (updateStateFailure != null) {
      return updateStateFailure(this);
    }
    return orElse();
  }
}

abstract class _UpdateStateFailure implements SearchEmployeeEvent {
  const factory _UpdateStateFailure({required final String message}) =
      _$UpdateStateFailureImpl;

  String get message;

  /// Create a copy of SearchEmployeeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateStateFailureImplCopyWith<_$UpdateStateFailureImpl> get copyWith =>
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
