import 'package:flutter/material.dart';
import 'package:route_animation/widgets/tab.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [Text("Home"), Menu(context)],
        mainAxisAlignment: MainAxisAlignment.center,
      )),
    );
  }
}
