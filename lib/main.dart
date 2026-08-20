import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: UserInfo());
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 250,
              height: 450,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/personImage.png',
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 150),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Get Started',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),

              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Text(
                  'Create new task',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(width: 30),
              Text("Main task name"),
              SizedBox(
                width: 200,
                child: TextField(
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
              SizedBox(height: 5),
              Text("Due date"),
              SizedBox(
                width: 200,
                child: TextField(
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

              SizedBox(height: 20),
              Text("Description"),
              SizedBox(
                width: 200,
                height: 150,
                child: TextField(
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
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                  ),
                  onPressed: () {},
                  child: Text(
                    'Add task',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
