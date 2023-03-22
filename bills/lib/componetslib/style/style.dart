import 'package:flutter/material.dart';

class Alert extends StatefulWidget {
  String lable;
  double size;
  Alert({super.key, required this.lable, required this.size});

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "${widget.lable}",
      style: TextStyle(color: Colors.red, fontSize: widget.size),
    );
  }
}

class ColorClass {
  static Color purple = Color(0xffF0EFFF);
  static Color purple2 = Color(0xffA7A3FF);
  static Color purple3 = Color(0xff4D47C3);

  //
}
