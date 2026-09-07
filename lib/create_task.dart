import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreateTask extends StatefulWidget {
  const CreateTask(
    this.addTask, {
    super.key,
  });

  //is a function that receives a List<String> task.

  final void Function(List<String>)? addTask;

  @override
  State<CreateTask> createState() => _CreateTask();
}

class _CreateTask extends State<CreateTask> {
  final nameController = TextEditingController();
  final dateController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Create new task',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: Divider(
                color: const Color.fromARGB(255, 216, 211, 211),
                thickness: 1,
              ),
            ),
            SizedBox(height: 20),
            SizedBox(width: 30),
            Text(
              "Main task name",
              style: TextStyle(
                color: Colors.redAccent,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              width: 358,
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "UI/UX App Design",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2),
                    borderSide: BorderSide(color: Colors.redAccent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2),
                    borderSide: BorderSide(color: Colors.redAccent),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 233, 224, 224),
                    ),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Due date",
              style: TextStyle(
                color: Colors.redAccent,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              width: 358,
              child: Expanded(
                child: TextField(
                  controller: dateController,
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.calendar_month,
                      color: Colors.redAccent,
                    ),
                    hintText: "April 29,2023 12:30 AM",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2),
                      borderSide: BorderSide(color: Colors.redAccent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2),
                      borderSide: BorderSide(color: Colors.redAccent),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 233, 224, 224),
                      ),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),
            Text(
              "Description",
              style: TextStyle(
                color: Colors.redAccent,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              width: 358,
              height: 132,
              child: Expanded(
                child: TextField(
                  controller: descriptionController,
                  textAlignVertical: TextAlignVertical.top,
                  maxLines: null,
                  expands: true,
                  decoration: InputDecoration(
                    hintText:
                        "First i have to animate the logo the late prototyping my design it's very important",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2),
                      borderSide: BorderSide(color: Colors.redAccent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2),
                      borderSide: BorderSide(color: Colors.redAccent),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 233, 224, 224),
                      ),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                ),
                // onPressed: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder:
                //           (context) => TodoList(
                //             name: nameController.toString(),
                //             date: dateController.toString(),
                //             description: descriptionController.toString(),
                //           ),
                //     ),
                //   );
                // },
                onPressed: () {
                  context.pop([
                    nameController.text,
                    dateController.text,
                    descriptionController.text,
                  ]);

               
                },
                child: Text(
                  'Add task',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
