import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task_2/models/task.dart';

class TaskDetail extends StatefulWidget {
  final Task task;
  const TaskDetail({
    super.key,
    required this.task,
  });

  @override
  State<TaskDetail> createState() => _TaskDetailState();
}

class _TaskDetailState extends State<TaskDetail> {
  var nameController = TextEditingController();
  
  var dateController = TextEditingController();
  var descriptionController = TextEditingController();
  @override
  void initState() {
    super.initState();

    nameController = TextEditingController(text: widget.task.name);
    dateController = TextEditingController(text: widget.task.date);
    descriptionController = TextEditingController(
      text: widget.task.description,
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    dateController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Task Detail'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/task_detail.png',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Title'),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        filled: true,

                        fillColor: const Color.fromARGB(255, 255, 253, 253),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        hintText: widget.task.name,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text('Description'),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: SizedBox(
                      height: 100,
                      child: TextField(
                        controller: descriptionController,
                        maxLines: null,
                        expands: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          hintText: widget.task.description,
                          alignLabelWithHint: true,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Text('Deadline'),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: TextField(
                      controller: dateController,
                      decoration: InputDecoration(
                        filled: true,

                        fillColor: const Color.fromARGB(
                          255,
                          255,
                          253,
                          253,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        hintText: widget.task.date,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3,
            ),
            ElevatedButton(
              onPressed: () {
                if (nameController.text.trim().isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Please enter a task name'),
                    ),
                  );
                  return;
                }

                final updateTask = Task(
                  name: nameController.text.trim(),
                  date: dateController.text.trim(),
                  description: descriptionController.text.trim(),
                );

                context.pop(updateTask);
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
