part of 'task_bloc.dart';

@freezed
class TaskEvent with _$TaskEvent {
  const factory TaskEvent.addTask({
    required TaskModel task,
    required int departmentId,
  }) = _AddTask;

  const factory TaskEvent.deleteTask({
    required int taskId,
    required int departmentId,
  }) = _DeleteTask;

  const factory TaskEvent.updateTask({
    required TaskModel originalTask,
    required TaskModel changedTask,
    required int departmentId,
  }) = _UpdateTask;

  const factory TaskEvent.loadTaskByDepartmentId({
    required int departmentId,
  }) = _LoadTaskByDepartmentId;
}
