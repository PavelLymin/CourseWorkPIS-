// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'participation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParticipationModel {
  TaskModel get task => throw _privateConstructorUsedError;
  List<EmployeeModel> get employees => throw _privateConstructorUsedError;

  /// Create a copy of ParticipationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParticipationModelCopyWith<ParticipationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipationModelCopyWith<$Res> {
  factory $ParticipationModelCopyWith(
          ParticipationModel value, $Res Function(ParticipationModel) then) =
      _$ParticipationModelCopyWithImpl<$Res, ParticipationModel>;
  @useResult
  $Res call({TaskModel task, List<EmployeeModel> employees});

  $TaskModelCopyWith<$Res> get task;
}

/// @nodoc
class _$ParticipationModelCopyWithImpl<$Res, $Val extends ParticipationModel>
    implements $ParticipationModelCopyWith<$Res> {
  _$ParticipationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParticipationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? employees = null,
  }) {
    return _then(_value.copyWith(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel,
      employees: null == employees
          ? _value.employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<EmployeeModel>,
    ) as $Val);
  }

  /// Create a copy of ParticipationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskModelCopyWith<$Res> get task {
    return $TaskModelCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ParticipationModelImplCopyWith<$Res>
    implements $ParticipationModelCopyWith<$Res> {
  factory _$$ParticipationModelImplCopyWith(_$ParticipationModelImpl value,
          $Res Function(_$ParticipationModelImpl) then) =
      __$$ParticipationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TaskModel task, List<EmployeeModel> employees});

  @override
  $TaskModelCopyWith<$Res> get task;
}

/// @nodoc
class __$$ParticipationModelImplCopyWithImpl<$Res>
    extends _$ParticipationModelCopyWithImpl<$Res, _$ParticipationModelImpl>
    implements _$$ParticipationModelImplCopyWith<$Res> {
  __$$ParticipationModelImplCopyWithImpl(_$ParticipationModelImpl _value,
      $Res Function(_$ParticipationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParticipationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? employees = null,
  }) {
    return _then(_$ParticipationModelImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel,
      employees: null == employees
          ? _value._employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<EmployeeModel>,
    ));
  }
}

/// @nodoc

class _$ParticipationModelImpl implements _ParticipationModel {
  const _$ParticipationModelImpl(
      {required this.task, required final List<EmployeeModel> employees})
      : _employees = employees;

  @override
  final TaskModel task;
  final List<EmployeeModel> _employees;
  @override
  List<EmployeeModel> get employees {
    if (_employees is EqualUnmodifiableListView) return _employees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_employees);
  }

  @override
  String toString() {
    return 'ParticipationModel(task: $task, employees: $employees)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParticipationModelImpl &&
            (identical(other.task, task) || other.task == task) &&
            const DeepCollectionEquality()
                .equals(other._employees, _employees));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, task, const DeepCollectionEquality().hash(_employees));

  /// Create a copy of ParticipationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParticipationModelImplCopyWith<_$ParticipationModelImpl> get copyWith =>
      __$$ParticipationModelImplCopyWithImpl<_$ParticipationModelImpl>(
          this, _$identity);
}

abstract class _ParticipationModel implements ParticipationModel {
  const factory _ParticipationModel(
      {required final TaskModel task,
      required final List<EmployeeModel> employees}) = _$ParticipationModelImpl;

  @override
  TaskModel get task;
  @override
  List<EmployeeModel> get employees;

  /// Create a copy of ParticipationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParticipationModelImplCopyWith<_$ParticipationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
