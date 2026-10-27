import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:task_2/cubit/todo_cubit.dart';
import 'package:task_2/cubit/todo_state.dart';
import 'package:task_2/models/task.dart';

class TodoList extends StatefulWidget {
  const TodoList({
    super.key,
  });

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Todo List'))),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              fit: BoxFit.contain,
              'assets/Todo_list.png',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Text(
              'Task list',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: BlocBuilder<TodoCubit, TodoState>(
              builder: (context, state) {
                return ListView.builder(
                  itemCount: state.tasks.length,
                  itemBuilder: (BuildContext context, index) {
                    final task = state.tasks[index];
                    return Padding(
                      padding: const EdgeInsets.only(
                        bottom: 7,
                        top: 8,
                        left: 8,
                        right: 8,
                      ),
                      child: InkWell(
                        onTap: () async {
                          final editedTask = await context.push<Task>(
                            '/task-detail',
                            extra: state.tasks[index],
                          );

                          if (editedTask != null) {
                            setState(() {
                              context.read<TodoCubit>().updateTask(
                                index,
                                editedTask,
                              );
                            });
                          }
                        },
                        child: Container(
                          width: double.infinity,
                          height: 82,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(31, 115, 114, 114),
                                blurRadius: 10,
                                spreadRadius: 0.2,
                                offset: const Offset(0, 5),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white70),
                            color: Colors.white,
                          ),

                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  task.name.isNotEmpty
                                      ? task.name[0].toUpperCase()
                                      : '?',
                                  style: TextStyle(fontSize: 22),
                                ),
                              ),

                              const SizedBox(width: 20),

                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            task.name,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        Flexible(
                                          child: Text(
                                            task.date,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                    const SizedBox(height: 5),

                                    Text(
                                      task.description,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                  right: 15,
                                ),
                                child: Container(
                                  height: 52,
                                  width: 5,
                                  color: Colors.redAccent,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          // Center(
          //   child: SizedBox(
          //     width: 250,
          //     height: 80,
          //     child: Padding(
          //       padding: const EdgeInsets.only(bottom: 30),
          //       child: ElevatedButton(
          //         onPressed: () {
          //           Navigator.push(
          //             context,
          //             MaterialPageRoute(builder: (context) => UserInfo()),
          //           );
          //         },

          //         style: ElevatedButton.styleFrom(
          //           backgroundColor: Colors.redAccent,
          //           shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadiusGeometry.circular(4),
          //           ),
          //         ),
          //         child: Text(
          //           'Create task',
          //           style: TextStyle(color: Colors.white),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          Center(
            child: SizedBox(
              width: 250,
              height: 80,

              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 30,
                ),

                child: ElevatedButton(
                  onPressed: () async {
                    final newTask = await context.push<Task>(
                      '/create-task',
                    );

                    if (newTask != null) {
                      setState(() {
                        context.read<TodoCubit>().addTask(newTask);
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),

                  child: Text(
                    'Create task',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
