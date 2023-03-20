import 'package:bills/componetslib/system/cookies.dart';
import 'package:bills/componetslib/system/random.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import '../../firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RegisterClass {
  String id;
  String user;
  String password;
  RegisterClass({required this.id, required this.user, required this.password});
}

void register(user, pass) {
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  String id = getRandom(6);
  RegisterClass regis = RegisterClass(id: id, user: user, password: pass);
  users.doc(regis.id).set({
    'id': regis.id,
    'user': regis.user,
    'password': regis.password,
    'name': regis.user
  });
}

void initfirebase() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}

login(user, pass) {
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  users
      .where('user', isEqualTo: user)
      .where('password', isEqualTo: pass)
      .get()
      .then((QuerySnapshot querySnapshot) => querySnapshot.docs.forEach((val) {
            print(val['id']);
            print(val['user']);
            print(val['name']);
            cookieset(val['id'], val['user'], val['name']);
          }));
}
