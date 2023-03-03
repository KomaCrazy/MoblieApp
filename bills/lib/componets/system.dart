import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:bills/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

bool cookies = true;
String cookietoken = "eXtTxW";

String _chars =
    'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
Random _rnd = Random();
String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
    length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

int status = 0;

void initFirebase() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}

class Profile {
  String user;
  String name;
  Profile({required this.user, required this.name});
}

class Register {
  String id;
  String user;
  String password;
  Register({required this.id, required this.user, required this.password});
}

void regisFirebase(user, pass) async {
  Register regis = Register(id: getRandomString(6), user: user, password: pass);

  CollectionReference users = FirebaseFirestore.instance.collection('users');
  print(regis.id);
  print(regis.user);
  print(regis.password);
  users.doc(regis.id).set({
    "id": regis.id,
    "user": regis.user,
    "password": regis.password,
    "name": regis.user
  });
}

void login(user, pass) {
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  users
      .where('user', isEqualTo: user)
      .where('password', isEqualTo: pass)
      .get()
      .then((QuerySnapshot querySnapshot) {
    querySnapshot.docs.forEach((val) {});
  });
}

void cookiecall() {
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  users
      .where('id', isEqualTo: cookietoken)
      .get()
      .then((QuerySnapshot querySnapshot) {
    querySnapshot.docs.forEach((val) {});
  });
}


// เราเรียนจบ บริหารธุรกิจมา อนุปริญา
// ปัจจุบันกำลังเรียน comsci ใช่ : >