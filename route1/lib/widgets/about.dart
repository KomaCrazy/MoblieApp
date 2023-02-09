import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        child: Text("about"),
      ),
    );
  }
}
