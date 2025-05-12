import 'package:bloc/bloc.dart';
import 'package:course_work/domain/repositories/task_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/task/task.dart';

part 'task_bloc.freezed.dart';
part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final ITaskRepository repository;
  TaskBloc({required this.repository}) : super(const TaskState.loading()) {
    on<TaskEvent>((event, emit) async {
      await event.map(
          addTask: (event) => _addTask(emit, event),
          deleteTask: (event) => _deleteTask(emit, event),
          updateTask: (event) => _updateTask(emit, event),
          loadTaskByDepartmentId: (event) =>
              _loadTaskByDepartmentId(emit, event),
          loadTaskById: (event) => _loadTaskById(emit, event));
    });
  }

  Future<void> _addTask(Emitter<TaskState> emit, _AddTask event) async {
    emit(TaskState.loading());

    final result = await repository.addTask(
        task: event.task, departmentId: event.departmentId);

    result.fold((failure) => emit(TaskState.failure(message: failure.message)),
        (_) => add(_LoadTaskByDepartmentId(departmentId: event.departmentId)));
  }

  Future<void> _deleteTask(Emitter<TaskState> emit, _DeleteTask event) async {
    emit(TaskState.loading());

    final result = await repository.deleteTask(taskId: event.taskId);

    result.fold((failure) => emit(TaskState.failure(message: failure.message)),
        (_) => add(_LoadTaskByDepartmentId(departmentId: event.departmentId)));
  }

  Future<void> _updateTask(Emitter<TaskState> emit, _UpdateTask event) async {
    emit(TaskState.loading());

    final result = await repository.updateTask(
        originalTask: event.originalTask, changedTask: event.changedTask);

    result.fold((failure) => emit(TaskState.failure(message: failure.message)),
        (_) => add(_LoadTaskByDepartmentId(departmentId: event.departmentId)));
  }

  Future<void> _loadTaskByDepartmentId(
      Emitter<TaskState> emit, _LoadTaskByDepartmentId event) async {
    emit(TaskState.loading());

    final result = await repository.getTaskByDepartmentId(
        departmentId: event.departmentId);

    result.fold((failure) => emit(TaskState.failure(message: failure.message)),
        (tasks) => emit(TaskState.load(tasks: tasks)));
  }

  Future<void> _loadTaskById(
      Emitter<TaskState> emit, _LoadTaskById event) async {
    emit(TaskState.loading());

    final result = await repository.getTaskById(taskId: event.taskId);

    result.fold((failure) => emit(TaskState.failure(message: failure.message)),
        (task) => emit(TaskState.loadTask(task: task)));
  }
}
