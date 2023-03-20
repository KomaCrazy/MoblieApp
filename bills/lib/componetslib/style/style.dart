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
