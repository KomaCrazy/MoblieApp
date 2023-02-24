import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String role = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => setState(() {
                        role = "student";
                      }),
                  child: Text("student")),
              SizedBox(width: 10),
              ElevatedButton(
                  onPressed: () => setState(() {
                        role = "doctor";
                      }),
                  child: Text("doctor")),
            ],
          ),
          SizedBox(height: 10),
          Text("user : "),
          Text("password : "),
          role == "student" ? Text("hello อาการ") : SizedBox(),
        ],
      )),
    );
  }
}
