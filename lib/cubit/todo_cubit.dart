import 'package:bloc/bloc.dart';

import 'package:task_2/cubit/todo_state.dart';
import 'package:task_2/models/task.dart';

class TodoCubit extends Cubit<TodoState> {
  TodoCubit()
    : super(
        TodoState(
          tasks: [
            Task(
              name: 'UI/UX App',
              date: 'April 29',
              description: 'Design',
            ),
          ],
        ),
      );

  void addTask(Task task) {
    emit(TodoState(tasks: [...state.tasks, task]));
  }

  void updateTask(int index, Task task) {
    if (index < 0 || index >= state.tasks.length) return;
    final updatedTasks = [...state.tasks];
    updatedTasks[index] = task;
    emit(TodoState(tasks: updatedTasks));
  }
}
