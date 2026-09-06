import 'package:flutter/material.dart';
import 'package:task_2/todo_list.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 850,
          decoration: BoxDecoration(
            color: Colors.redAccent,
          ),
          child: Column(
            children: [
              SizedBox(height: 150),
              Image.asset(
                'assets/personImage.png',
                width: 270,
                height: 360,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 150),
              SizedBox(
                width: 256,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => TodoList(
                              name: '',
                              date: '',
                              description: '',
                            ),
                      ),
                    );
                  },
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
