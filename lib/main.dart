import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task_2/create_task.dart';

import 'package:task_2/firstpage.dart';
import 'package:task_2/todo_list.dart';
import 'package:task_2/task_detail.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',

  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => Firstpage(),
    ),

    GoRoute(
      path: '/todo-list',
      builder:
          (context, state) => TodoList(
            name: '',
            date: '',
            description: '',
          ),
    ),

    GoRoute(
      path: '/create-task',
      builder: (context, state) => CreateTask(null),
    ),

    GoRoute(
      path: '/task-detail',
      builder: (context, state) {
        final task = state.extra as List<String>;
        return TaskDetail(
          name: task[0],
          date: task[1],
          description: task[2],
        );
      },
    ),
  ],
);

void main() {
  runApp(
    MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    ),
  );
}
