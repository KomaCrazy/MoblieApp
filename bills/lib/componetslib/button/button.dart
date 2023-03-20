import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  String lable;
  double size;
  Color color;
  var fuc;
  Button(
      {super.key,
      required this.lable,
      required this.size,
      required this.color,
      required this.fuc});
  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * widget.size / 100,
      child: MaterialButton(child: Text(widget.lable), onPressed: () {}),
    );
  }
}
