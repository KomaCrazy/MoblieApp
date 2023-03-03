import 'package:flutter/material.dart';
import 'package:test/componets/system.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            child: TextField(
                controller: user,
                decoration: InputDecoration(label: Text("User"))),
          ),
          SizedBox(height: 20),
          Container(
            width: 200,
            child: TextField(
                controller: password,
                decoration: InputDecoration(label: Text("Password"))),
          ),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                login();
              },
              child: Text("Login")),
        ],
      )),
    );
  }
}
