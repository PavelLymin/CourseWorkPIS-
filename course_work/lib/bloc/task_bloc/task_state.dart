part of 'task_bloc.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState.initial() = _Initial;

  const factory TaskState.loading() = _Loading;

  const factory TaskState.load({
    required List<TaskModel> tasks,
  }) = _Load;

  const factory TaskState.loadTask({
    required TaskModel task,
  }) = _LoadTask;

  const factory TaskState.failure({
    required String message,
  }) = _Failure;
}
