import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void success(String text) {
  EasyLoading.showSuccess('$text Success!');
}

class ClassColors {
  static Color prired = Color(0xffCF0D5E);
}

class fontThem extends StatefulWidget {
  String text;
  double size;
  fontThem({super.key, required this.text, required this.size});

  @override
  State<fontThem> createState() => _fontThemState();
}

class _fontThemState extends State<fontThem> {
  @override
  Widget build(BuildContext context) {
    return Text(
        style: TextStyle(color: ClassColors.prired, fontSize: widget.size),
        "${widget.text}");
  }
}

class fontWhite extends StatefulWidget {
  String text;
  double size;

  fontWhite({super.key, required this.text, required this.size});

  @override
  State<fontWhite> createState() => _fontWhiteState();
}

class _fontWhiteState extends State<fontWhite> {
  @override
  Widget build(BuildContext context) {
    return Text(
      style: TextStyle(fontSize: widget.size, color: Colors.white),
      "${widget.text}",
    );
  }
}

class Position {
  static MainAxisAlignment start = MainAxisAlignment.start;
  static MainAxisAlignment spaceBetween = MainAxisAlignment.spaceBetween;
  static MainAxisAlignment spaceAround = MainAxisAlignment.spaceAround;
  static MainAxisAlignment center = MainAxisAlignment.center;
}
