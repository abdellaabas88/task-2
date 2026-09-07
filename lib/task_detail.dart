import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TaskDetail extends StatefulWidget {
  final String name;
  final String date;
  final String description;

  const TaskDetail({
    super.key,
    required this.name,
    required this.date,
    required this.description,
    // this.oldTask,
  });

  //  final List<String>? oldTask;

  @override
  State<TaskDetail> createState() => _TaskDetailState();
}

class _TaskDetailState extends State<TaskDetail> {
  final _nameController = TextEditingController();
  final dateController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _nameController.text = widget.name;
    dateController.text = widget.date;
    descriptionController.text = widget.description;
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
                      controller: _nameController,
                      decoration: InputDecoration(
                        filled: true,

                        fillColor: const Color.fromARGB(255, 255, 253, 253),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        hintText: widget.name,
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
                          hintText: widget.description,
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
                        hintText: widget.date,
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
                List<String> task = [
                  _nameController.text,
                  dateController.text,
                  descriptionController.text,
                ];
                context.pop(task);
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
