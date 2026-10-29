import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task_2/create_task.dart';
import 'package:task_2/cubit/todo_cubit.dart';

import 'package:task_2/firstpage.dart';
import 'package:task_2/models/task.dart';
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
      builder: (context, state) => TodoList(),
    ),

    GoRoute(
      path: '/create-task',
      builder: (context, state) => CreateTask(),
    ),

    GoRoute(
      path: '/task-detail',
      builder: (context, state) {
        final task = state.extra as Task;
        return TaskDetail(
          task: task,
        );
      },
    ),
  ],
);

void main() {
  runApp(
    BlocProvider(
      create: (_) => TodoCubit(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router,
      ),
    ),
  );
}
