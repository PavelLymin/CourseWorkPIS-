// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskEvent {
  int get departmentId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskModel task, int departmentId) addTask,
    required TResult Function(int taskId, int departmentId) deleteTask,
    required TResult Function(
            TaskModel originalTask, TaskModel changedTask, int departmentId)
        update,
    required TResult Function(int departmentId) loadTaskByDepartmentId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskModel task, int departmentId)? addTask,
    TResult? Function(int taskId, int departmentId)? deleteTask,
    TResult? Function(
            TaskModel originalTask, TaskModel changedTask, int departmentId)?
        update,
    TResult? Function(int departmentId)? loadTaskByDepartmentId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskModel task, int departmentId)? addTask,
    TResult Function(int taskId, int departmentId)? deleteTask,
    TResult Function(
            TaskModel originalTask, TaskModel changedTask, int departmentId)?
        update,
    TResult Function(int departmentId)? loadTaskByDepartmentId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTaskAndLoadSomeTask value) addTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_UpdateTask value) update,
    required TResult Function(_LoadTaskByDepartmentId value)
        loadTaskByDepartmentId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTaskAndLoadSomeTask value)? addTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_UpdateTask value)? update,
    TResult? Function(_LoadTaskByDepartmentId value)? loadTaskByDepartmentId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTaskAndLoadSomeTask value)? addTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_UpdateTask value)? update,
    TResult Function(_LoadTaskByDepartmentId value)? loadTaskByDepartmentId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskEventCopyWith<TaskEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEventCopyWith<$Res> {
  factory $TaskEventCopyWith(TaskEvent value, $Res Function(TaskEvent) then) =
      _$TaskEventCopyWithImpl<$Res, TaskEvent>;
  @useResult
  $Res call({int departmentId});
}

/// @nodoc
class _$TaskEventCopyWithImpl<$Res, $Val extends TaskEvent>
    implements $TaskEventCopyWith<$Res> {
  _$TaskEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskEvent
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
abstract class _$$AddTaskAndLoadSomeTaskImplCopyWith<$Res>
    implements $TaskEventCopyWith<$Res> {
  factory _$$AddTaskAndLoadSomeTaskImplCopyWith(
          _$AddTaskAndLoadSomeTaskImpl value,
          $Res Function(_$AddTaskAndLoadSomeTaskImpl) then) =
      __$$AddTaskAndLoadSomeTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TaskModel task, int departmentId});

  $TaskModelCopyWith<$Res> get task;
}

/// @nodoc
class __$$AddTaskAndLoadSomeTaskImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$AddTaskAndLoadSomeTaskImpl>
    implements _$$AddTaskAndLoadSomeTaskImplCopyWith<$Res> {
  __$$AddTaskAndLoadSomeTaskImplCopyWithImpl(
      _$AddTaskAndLoadSomeTaskImpl _value,
      $Res Function(_$AddTaskAndLoadSomeTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? departmentId = null,
  }) {
    return _then(_$AddTaskAndLoadSomeTaskImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel,
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskModelCopyWith<$Res> get task {
    return $TaskModelCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$AddTaskAndLoadSomeTaskImpl implements _AddTaskAndLoadSomeTask {
  const _$AddTaskAndLoadSomeTaskImpl(
      {required this.task, required this.departmentId});

  @override
  final TaskModel task;
  @override
  final int departmentId;

  @override
  String toString() {
    return 'TaskEvent.addTask(task: $task, departmentId: $departmentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTaskAndLoadSomeTaskImpl &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task, departmentId);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTaskAndLoadSomeTaskImplCopyWith<_$AddTaskAndLoadSomeTaskImpl>
      get copyWith => __$$AddTaskAndLoadSomeTaskImplCopyWithImpl<
          _$AddTaskAndLoadSomeTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskModel task, int departmentId) addTask,
    required TResult Function(int taskId, int departmentId) deleteTask,
    required TResult Function(
            TaskModel originalTask, TaskModel changedTask, int departmentId)
        update,
    required TResult Function(int departmentId) loadTaskByDepartmentId,
  }) {
    return addTask(task, departmentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskModel task, int departmentId)? addTask,
    TResult? Function(int taskId, int departmentId)? deleteTask,
    TResult? Function(
            TaskModel originalTask, TaskModel changedTask, int departmentId)?
        update,
    TResult? Function(int departmentId)? loadTaskByDepartmentId,
  }) {
    return addTask?.call(task, departmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskModel task, int departmentId)? addTask,
    TResult Function(int taskId, int departmentId)? deleteTask,
    TResult Function(
            TaskModel originalTask, TaskModel changedTask, int departmentId)?
        update,
    TResult Function(int departmentId)? loadTaskByDepartmentId,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(task, departmentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTaskAndLoadSomeTask value) addTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_UpdateTask value) update,
    required TResult Function(_LoadTaskByDepartmentId value)
        loadTaskByDepartmentId,
  }) {
    return addTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTaskAndLoadSomeTask value)? addTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_UpdateTask value)? update,
    TResult? Function(_LoadTaskByDepartmentId value)? loadTaskByDepartmentId,
  }) {
    return addTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTaskAndLoadSomeTask value)? addTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_UpdateTask value)? update,
    TResult Function(_LoadTaskByDepartmentId value)? loadTaskByDepartmentId,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(this);
    }
    return orElse();
  }
}

abstract class _AddTaskAndLoadSomeTask implements TaskEvent {
  const factory _AddTaskAndLoadSomeTask(
      {required final TaskModel task,
      required final int departmentId}) = _$AddTaskAndLoadSomeTaskImpl;

  TaskModel get task;
  @override
  int get departmentId;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddTaskAndLoadSomeTaskImplCopyWith<_$AddTaskAndLoadSomeTaskImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTaskImplCopyWith<$Res>
    implements $TaskEventCopyWith<$Res> {
  factory _$$DeleteTaskImplCopyWith(
          _$DeleteTaskImpl value, $Res Function(_$DeleteTaskImpl) then) =
      __$$DeleteTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int taskId, int departmentId});
}

/// @nodoc
class __$$DeleteTaskImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$DeleteTaskImpl>
    implements _$$DeleteTaskImplCopyWith<$Res> {
  __$$DeleteTaskImplCopyWithImpl(
      _$DeleteTaskImpl _value, $Res Function(_$DeleteTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? departmentId = null,
  }) {
    return _then(_$DeleteTaskImpl(
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

class _$DeleteTaskImpl implements _DeleteTask {
  const _$DeleteTaskImpl({required this.taskId, required this.departmentId});

  @override
  final int taskId;
  @override
  final int departmentId;

  @override
  String toString() {
    return 'TaskEvent.deleteTask(taskId: $taskId, departmentId: $departmentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTaskImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId, departmentId);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTaskImplCopyWith<_$DeleteTaskImpl> get copyWith =>
      __$$DeleteTaskImplCopyWithImpl<_$DeleteTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskModel task, int departmentId) addTask,
    required TResult Function(int taskId, int departmentId) deleteTask,
    required TResult Function(
            TaskModel originalTask, TaskModel changedTask, int departmentId)
        update,
    required TResult Function(int departmentId) loadTaskByDepartmentId,
  }) {
    return deleteTask(taskId, departmentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskModel task, int departmentId)? addTask,
    TResult? Function(int taskId, int departmentId)? deleteTask,
    TResult? Function(
            TaskModel originalTask, TaskModel changedTask, int departmentId)?
        update,
    TResult? Function(int departmentId)? loadTaskByDepartmentId,
  }) {
    return deleteTask?.call(taskId, departmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskModel task, int departmentId)? addTask,
    TResult Function(int taskId, int departmentId)? deleteTask,
    TResult Function(
            TaskModel originalTask, TaskModel changedTask, int departmentId)?
        update,
    TResult Function(int departmentId)? loadTaskByDepartmentId,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(taskId, departmentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTaskAndLoadSomeTask value) addTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_UpdateTask value) update,
    required TResult Function(_LoadTaskByDepartmentId value)
        loadTaskByDepartmentId,
  }) {
    return deleteTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTaskAndLoadSomeTask value)? addTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_UpdateTask value)? update,
    TResult? Function(_LoadTaskByDepartmentId value)? loadTaskByDepartmentId,
  }) {
    return deleteTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTaskAndLoadSomeTask value)? addTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_UpdateTask value)? update,
    TResult Function(_LoadTaskByDepartmentId value)? loadTaskByDepartmentId,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(this);
    }
    return orElse();
  }
}

abstract class _DeleteTask implements TaskEvent {
  const factory _DeleteTask(
      {required final int taskId,
      required final int departmentId}) = _$DeleteTaskImpl;

  int get taskId;
  @override
  int get departmentId;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteTaskImplCopyWith<_$DeleteTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTaskImplCopyWith<$Res>
    implements $TaskEventCopyWith<$Res> {
  factory _$$UpdateTaskImplCopyWith(
          _$UpdateTaskImpl value, $Res Function(_$UpdateTaskImpl) then) =
      __$$UpdateTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TaskModel originalTask, TaskModel changedTask, int departmentId});

  $TaskModelCopyWith<$Res> get originalTask;
  $TaskModelCopyWith<$Res> get changedTask;
}

/// @nodoc
class __$$UpdateTaskImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$UpdateTaskImpl>
    implements _$$UpdateTaskImplCopyWith<$Res> {
  __$$UpdateTaskImplCopyWithImpl(
      _$UpdateTaskImpl _value, $Res Function(_$UpdateTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originalTask = null,
    Object? changedTask = null,
    Object? departmentId = null,
  }) {
    return _then(_$UpdateTaskImpl(
      originalTask: null == originalTask
          ? _value.originalTask
          : originalTask // ignore: cast_nullable_to_non_nullable
              as TaskModel,
      changedTask: null == changedTask
          ? _value.changedTask
          : changedTask // ignore: cast_nullable_to_non_nullable
              as TaskModel,
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskModelCopyWith<$Res> get originalTask {
    return $TaskModelCopyWith<$Res>(_value.originalTask, (value) {
      return _then(_value.copyWith(originalTask: value));
    });
  }

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskModelCopyWith<$Res> get changedTask {
    return $TaskModelCopyWith<$Res>(_value.changedTask, (value) {
      return _then(_value.copyWith(changedTask: value));
    });
  }
}

/// @nodoc

class _$UpdateTaskImpl implements _UpdateTask {
  const _$UpdateTaskImpl(
      {required this.originalTask,
      required this.changedTask,
      required this.departmentId});

  @override
  final TaskModel originalTask;
  @override
  final TaskModel changedTask;
  @override
  final int departmentId;

  @override
  String toString() {
    return 'TaskEvent.update(originalTask: $originalTask, changedTask: $changedTask, departmentId: $departmentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskImpl &&
            (identical(other.originalTask, originalTask) ||
                other.originalTask == originalTask) &&
            (identical(other.changedTask, changedTask) ||
                other.changedTask == changedTask) &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, originalTask, changedTask, departmentId);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTaskImplCopyWith<_$UpdateTaskImpl> get copyWith =>
      __$$UpdateTaskImplCopyWithImpl<_$UpdateTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskModel task, int departmentId) addTask,
    required TResult Function(int taskId, int departmentId) deleteTask,
    required TResult Function(
            TaskModel originalTask, TaskModel changedTask, int departmentId)
        update,
    required TResult Function(int departmentId) loadTaskByDepartmentId,
  }) {
    return update(originalTask, changedTask, departmentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskModel task, int departmentId)? addTask,
    TResult? Function(int taskId, int departmentId)? deleteTask,
    TResult? Function(
            TaskModel originalTask, TaskModel changedTask, int departmentId)?
        update,
    TResult? Function(int departmentId)? loadTaskByDepartmentId,
  }) {
    return update?.call(originalTask, changedTask, departmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskModel task, int departmentId)? addTask,
    TResult Function(int taskId, int departmentId)? deleteTask,
    TResult Function(
            TaskModel originalTask, TaskModel changedTask, int departmentId)?
        update,
    TResult Function(int departmentId)? loadTaskByDepartmentId,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(originalTask, changedTask, departmentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTaskAndLoadSomeTask value) addTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_UpdateTask value) update,
    required TResult Function(_LoadTaskByDepartmentId value)
        loadTaskByDepartmentId,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTaskAndLoadSomeTask value)? addTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_UpdateTask value)? update,
    TResult? Function(_LoadTaskByDepartmentId value)? loadTaskByDepartmentId,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTaskAndLoadSomeTask value)? addTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_UpdateTask value)? update,
    TResult Function(_LoadTaskByDepartmentId value)? loadTaskByDepartmentId,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateTask implements TaskEvent {
  const factory _UpdateTask(
      {required final TaskModel originalTask,
      required final TaskModel changedTask,
      required final int departmentId}) = _$UpdateTaskImpl;

  TaskModel get originalTask;
  TaskModel get changedTask;
  @override
  int get departmentId;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTaskImplCopyWith<_$UpdateTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadTaskByDepartmentIdImplCopyWith<$Res>
    implements $TaskEventCopyWith<$Res> {
  factory _$$LoadTaskByDepartmentIdImplCopyWith(
          _$LoadTaskByDepartmentIdImpl value,
          $Res Function(_$LoadTaskByDepartmentIdImpl) then) =
      __$$LoadTaskByDepartmentIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int departmentId});
}

/// @nodoc
class __$$LoadTaskByDepartmentIdImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$LoadTaskByDepartmentIdImpl>
    implements _$$LoadTaskByDepartmentIdImplCopyWith<$Res> {
  __$$LoadTaskByDepartmentIdImplCopyWithImpl(
      _$LoadTaskByDepartmentIdImpl _value,
      $Res Function(_$LoadTaskByDepartmentIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departmentId = null,
  }) {
    return _then(_$LoadTaskByDepartmentIdImpl(
      departmentId: null == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadTaskByDepartmentIdImpl implements _LoadTaskByDepartmentId {
  const _$LoadTaskByDepartmentIdImpl({required this.departmentId});

  @override
  final int departmentId;

  @override
  String toString() {
    return 'TaskEvent.loadTaskByDepartmentId(departmentId: $departmentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadTaskByDepartmentIdImpl &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, departmentId);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadTaskByDepartmentIdImplCopyWith<_$LoadTaskByDepartmentIdImpl>
      get copyWith => __$$LoadTaskByDepartmentIdImplCopyWithImpl<
          _$LoadTaskByDepartmentIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskModel task, int departmentId) addTask,
    required TResult Function(int taskId, int departmentId) deleteTask,
    required TResult Function(
            TaskModel originalTask, TaskModel changedTask, int departmentId)
        update,
    required TResult Function(int departmentId) loadTaskByDepartmentId,
  }) {
    return loadTaskByDepartmentId(departmentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskModel task, int departmentId)? addTask,
    TResult? Function(int taskId, int departmentId)? deleteTask,
    TResult? Function(
            TaskModel originalTask, TaskModel changedTask, int departmentId)?
        update,
    TResult? Function(int departmentId)? loadTaskByDepartmentId,
  }) {
    return loadTaskByDepartmentId?.call(departmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskModel task, int departmentId)? addTask,
    TResult Function(int taskId, int departmentId)? deleteTask,
    TResult Function(
            TaskModel originalTask, TaskModel changedTask, int departmentId)?
        update,
    TResult Function(int departmentId)? loadTaskByDepartmentId,
    required TResult orElse(),
  }) {
    if (loadTaskByDepartmentId != null) {
      return loadTaskByDepartmentId(departmentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTaskAndLoadSomeTask value) addTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_UpdateTask value) update,
    required TResult Function(_LoadTaskByDepartmentId value)
        loadTaskByDepartmentId,
  }) {
    return loadTaskByDepartmentId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTaskAndLoadSomeTask value)? addTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_UpdateTask value)? update,
    TResult? Function(_LoadTaskByDepartmentId value)? loadTaskByDepartmentId,
  }) {
    return loadTaskByDepartmentId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTaskAndLoadSomeTask value)? addTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_UpdateTask value)? update,
    TResult Function(_LoadTaskByDepartmentId value)? loadTaskByDepartmentId,
    required TResult orElse(),
  }) {
    if (loadTaskByDepartmentId != null) {
      return loadTaskByDepartmentId(this);
    }
    return orElse();
  }
}

abstract class _LoadTaskByDepartmentId implements TaskEvent {
  const factory _LoadTaskByDepartmentId({required final int departmentId}) =
      _$LoadTaskByDepartmentIdImpl;

  @override
  int get departmentId;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadTaskByDepartmentIdImplCopyWith<_$LoadTaskByDepartmentIdImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<TaskModel> tasks) load,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TaskModel> tasks)? load,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TaskModel> tasks)? load,
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
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res, TaskState>;
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res, $Val extends TaskState>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskState
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
    extends _$TaskStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'TaskState.loading()';
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
    required TResult Function(List<TaskModel> tasks) load,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TaskModel> tasks)? load,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TaskModel> tasks)? load,
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

abstract class _Loading implements TaskState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadImplCopyWith<$Res> {
  factory _$$LoadImplCopyWith(
          _$LoadImpl value, $Res Function(_$LoadImpl) then) =
      __$$LoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TaskModel> tasks});
}

/// @nodoc
class __$$LoadImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$LoadImpl>
    implements _$$LoadImplCopyWith<$Res> {
  __$$LoadImplCopyWithImpl(_$LoadImpl _value, $Res Function(_$LoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$LoadImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
    ));
  }
}

/// @nodoc

class _$LoadImpl implements _Load {
  const _$LoadImpl({required final List<TaskModel> tasks}) : _tasks = tasks;

  final List<TaskModel> _tasks;
  @override
  List<TaskModel> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TaskState.load(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  /// Create a copy of TaskState
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
    required TResult Function(List<TaskModel> tasks) load,
    required TResult Function(String message) failure,
  }) {
    return load(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TaskModel> tasks)? load,
    TResult? Function(String message)? failure,
  }) {
    return load?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TaskModel> tasks)? load,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(tasks);
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

abstract class _Load implements TaskState {
  const factory _Load({required final List<TaskModel> tasks}) = _$LoadImpl;

  List<TaskModel> get tasks;

  /// Create a copy of TaskState
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
    extends _$TaskStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
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
    return 'TaskState.failure(message: $message)';
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

  /// Create a copy of TaskState
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
    required TResult Function(List<TaskModel> tasks) load,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TaskModel> tasks)? load,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TaskModel> tasks)? load,
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

abstract class _Failure implements TaskState {
  const factory _Failure({required final String message}) = _$FailureImpl;

  String get message;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
