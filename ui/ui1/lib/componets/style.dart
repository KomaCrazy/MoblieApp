import 'package:flutter/material.dart';

class ColorStlye {
  // static Color primarygold = const Color(0xff948B6F);
  static Color primarygold = const Color(0xff8F8A6C);

  //
  static Color primaryblack = Color(0xff707382);
}

class LoginZone extends StatelessWidget {
  String text;
  LoginZone({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text("$text", style: TextStyle(color: Colors.grey[500]));
  }
}

UnderlineInputBorder lineColor() {
  return UnderlineInputBorder(
      borderSide: BorderSide(color: ColorStlye.primaryblack));
}

UnderlineInputBorder lienFocus() {
  return UnderlineInputBorder(
      borderSide: BorderSide(color: ColorStlye.primarygold));
}
