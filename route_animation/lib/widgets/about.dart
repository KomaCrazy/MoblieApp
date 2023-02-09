import 'package:flutter/material.dart';
import 'package:route_animation/widgets/tab.dart';

class about extends StatefulWidget {
  const about({super.key});

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [Text("About"), Menu(context)],
        mainAxisAlignment: MainAxisAlignment.center,
      )),
    );
  }
}
