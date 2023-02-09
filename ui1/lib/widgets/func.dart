import 'dart:js';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class reqDB {
  String user;
  String password;
  reqDB({required this.user, required this.password});
}



class FullDB {
  int id;
  String user;
  String password;
  FullDB({required this.id, required this.user, required this.password});
}

void login(context) async {
  try {
    var _db = reqDB(user: box1.text, password: box2.text);
    Response res;
    res = await Dio().get('http://127.0.0.1:5000/login', queryParameters: {
      'user': "${_db.user}",
      'password': '${_db.password}'
    });
    var _raw = res.data;
    var __db =
        FullDB(id: _raw["id"], user: _raw["user"], password: _raw["password"]);
    Navigator.pushNamed(context, '/about');
  } catch (e) {
    print("error");
  }
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

TextButton btnLogin(context) {
  return TextButton(
      onPressed: (() => login(context)),
      child: Text("Login", style: const TextStyle(fontSize: 18)));
}

TextButton btnRegister(context) {
  return TextButton(
      onPressed: (() => login(context)),
      child: Text("Register", style: TextStyle(fontSize: 18)));
}
