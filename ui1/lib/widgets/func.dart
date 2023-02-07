import 'package:flutter/material.dart';

void login() {
  print("${box1.text}");
}

TextEditingController box1 = TextEditingController();
TextEditingController box2 = TextEditingController();

Container btnField1() {
  return Container(
      width: 220,
      child: TextField(style: TextStyle(fontSize: 18), controller: box1));
}

Container btnField2() {
  return Container(
      width: 220,
      child: TextField(style: TextStyle(fontSize: 18), controller: box2));
}

TextButton btnLogin(text) {
  return TextButton(
      onPressed: (() => login()),
      child: Text("${text}", style: const TextStyle(fontSize: 18)));
}

TextButton btnRegister(text) {
  return TextButton(
      onPressed: (() => login()),
      child: Text("${text}", style: TextStyle(fontSize: 18)));
}
