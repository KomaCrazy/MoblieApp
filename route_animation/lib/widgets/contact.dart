import 'package:flutter/material.dart';
import 'package:route_animation/widgets/tab.dart';

class contact extends StatefulWidget {
  const contact({super.key});

  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [Text("Contact"), Menu(context)],
        mainAxisAlignment: MainAxisAlignment.center,
      )),
    );
  }
}
