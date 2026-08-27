import 'package:flutter/material.dart';

class TaskDetail extends StatefulWidget {
  const TaskDetail({super.key});

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
      body: Column(
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
                    decoration: InputDecoration(
                      filled: true,

                      fillColor: const Color.fromARGB(255, 255, 253, 253),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      hintText: 'UI/UX App Design',
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
                      maxLines: null,
                      expands: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        hintText:
                            'First i have to animate the logo and prototyping my design',
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
                      hintText: 'April 29 2023',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
