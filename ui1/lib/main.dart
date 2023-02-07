import 'package:flutter/material.dart';
import 'package:ui1/widgets/func.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Flutter UI", style: TextStyle(fontSize: 24)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  btnField1(),
                ],
              ),
              btnField2(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  btnLogin("Login"),
                  btnRegister("Register"),
                ],
              )
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
