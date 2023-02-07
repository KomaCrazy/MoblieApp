import 'package:app3/widgets/infoDB.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<InfoDb> list = [];

  void getHttp() async {
    try {
      var res = await Dio().get('http://127.0.0.1:5000/read');
      List<dynamic> raw = res.data;
      raw.forEach((val) {
        list.add(InfoDb(
            id: val["id"], password: val["password"], user: val["user"]));
      });
    } catch (e) {
      print(e);
    }
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    getHttp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Column(
                  children: List.generate(
                      list.length, (index) => Text(" ${list[index].user}"))),
            )));
  }
}
