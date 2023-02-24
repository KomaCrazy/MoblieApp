import 'package:basiccrud/system.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class RawData {
  int id;
  int age;
  String user;
  RawData({required this.id, required this.user, required this.age});
}

class Provi with ChangeNotifier {
  List ListData = [];

  int i = 0;

  void num() {
    i += 1;
    notifyListeners();
  }

  Provi() {
    notifyListeners();
  }
  inithttp() async {
    print("inithttp");
    final dio = Dio();
    final res = await dio.get('http://localhost:5000/read');
    final data = res.data;
    List<dynamic> map = (data);
    map.forEach((val) {
      var raw = RawData(id: val["id"], user: val["user"], age: val["age"]);
      ListData.add({"id": raw.id, "user": raw.user, "age": raw.age});
    });
  }
}
