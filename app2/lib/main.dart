import 'package:app2/widgets/str2json.dart';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

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

  void call() async {
    final res = await http.get(Uri.parse('http://127.0.0.1:5000/read'));
    if (res.statusCode == 200) {
      list = infoDbFromJson(res.body);
      setState(() {});
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    call();
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
                  list.length, (index) => Text("${list[index].user}"))),
        ),
      ),
    );
  }
}
