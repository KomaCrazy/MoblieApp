import 'package:flutter/material.dart';

class IconInto extends StatefulWidget {
  double w = 0;
  double h = 0;
  IconInto({super.key, required this.w, required this.h});

  @override
  State<IconInto> createState() => _IconIntoState();
}

class _IconIntoState extends State<IconInto> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.w,
        height: widget.h,
        child: Image.asset("assets/bill.png"));
  }
}
