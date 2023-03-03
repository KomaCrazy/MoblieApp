import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

TextEditingController user = TextEditingController();
TextEditingController password = TextEditingController();
TextEditingController set = TextEditingController();

final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
void call() async {}
void login() {
  String _user = user.text;
  String _pass = password.text;
}

void SetData() async {
  final SharedPreferences prefs = await _prefs;
  prefs.setString("text1", set.text);
}

void ShowData() async {
  final SharedPreferences prefs = await _prefs;
  print(prefs.getString("text1"));
}
