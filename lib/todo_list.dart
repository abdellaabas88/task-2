import 'package:flutter/material.dart';
import 'package:task_2/userInfo.dart';

class TodoList extends StatefulWidget {
  const TodoList({
    super.key,
    required this.name,
    required this.date,
    required this.description,
  });
  final String name;
  final String date;
  final String description;

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  // List toDoList = [
  //   ["UI?app", "ll"],
  //   ["Abdes com", "hhhh"],
  //   ["abdkn", " jsdkcj "],
  //   ["abbbb", "skdnclkn"],
  // ];

  List<List<String>> toDoList = [
    ["UI/UX App", "April 29", "Design"],
    ["Abdes com", "April 29", "Design"],
  ];

  void addTask(List<String> task) {
    setState(() {
      toDoList.add(task);
    });
  }
  // @override
  // void initState() {
  //   super.initState();

  //   addTask();
  // }

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
            child: ListView.builder(
              itemCount: toDoList.length,
              itemBuilder: (BuildContext context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    bottom: 7,
                    top: 8,
                    left: 8,
                    right: 8,
                  ),
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
                            toDoList[index][0][0],
                            style: TextStyle(fontSize: 22),
                          ),
                        ),

                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  toDoList[index][0],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 110),
                                  child: Text(
                                    toDoList[index][1],
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(toDoList[index][2]),
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Container(
                            height: 52,
                            width: 5,
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserInfo(addTask),
                      ),
                    );
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
