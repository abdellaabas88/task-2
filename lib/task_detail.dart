import 'package:flutter/material.dart';

class TaskDetail extends StatefulWidget {
  final String name;
  final String date;
  final String description;

  const TaskDetail({
    super.key,
    required this.name,
    required this.date,
    required this.description,
  });

  @override
  State<TaskDetail> createState() => _TaskDetailState();
}

class _TaskDetailState extends State<TaskDetail> {
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
                      readOnly: true,
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
                        readOnly: true,
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
                      readOnly: true,
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
          ],
        ),
      ),
    );
  }
}
