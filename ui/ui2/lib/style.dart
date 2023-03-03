import 'package:flutter/material.dart';

class StyleClass {
  static Color primaryback = Color(0xff1E232C);
}

Text Topic(text) {
  return Text(
    "$text",
    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
  );
}

Text inputText(text) {
  return Text("$text", style: TextStyle(fontSize: 16, color: Colors.grey[500]));
}

OutlineInputBorder inputBorder() {
  return OutlineInputBorder(borderSide: BorderSide(color: Colors.grey));
}
