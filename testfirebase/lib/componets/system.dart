import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

TextEditingController wruser = TextEditingController();
TextEditingController wrpassword = TextEditingController();
TextEditingController wrname = TextEditingController();

void initFirebase() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  print("initFirebase");
  readFirebase();
}

class rawData {
  final String user;
  final String password;
  final String name;
  rawData({required this.user, required this.password, required this.name});
}

class WriteClass {
  String id;
  String user;
  String name;
  WriteClass({required this.id, required this.user, required this.name});
}

void readFirebase() {
  FirebaseFirestore db = FirebaseFirestore.instance;
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  // users.get().then((QuerySnapshot querySnapshot) {
  //   querySnapshot.docs.forEach((doc) {
  //     print(doc["user"]);
  //   });
  // });

  users.get().then((QuerySnapshot querySnapshot) {
    print(querySnapshot.docs);
  });
}

String _chars =
    'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
Random _rnd = Random();
String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
    length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

void writeFirrbase() {
  String _id = getRandomString(6);
  String _user = wruser.text;
  String _pass = wrpassword.text;
  String _name = wrname.text;
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  users
      .doc(_id)
      .set({"id": _id, "user": _user, "password": _pass, "name": _name});
  print("OK");
}
