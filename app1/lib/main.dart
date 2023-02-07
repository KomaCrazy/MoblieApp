import 'dart:async';
import 'dart:convert';

import 'package:app1/widgets/infoModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<InfoDb> list = [];

  void call() async {
    final response = await http.get(Uri.parse('http://127.0.0.1:5000/'));
    if (response.statusCode == 200) {
      // List<dynamic> raw = jsonDecode(response.body);
      list = infoDbFromJson(response.body);

      setState(() {});
    } else {
      throw Exception('Failed to load');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    call();
    list.forEach((element) {
      print("${element.user}");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Row(
              children: List.generate(
                  list.length, (index) => Text("${list[index].user}"))),
        ),
      ),
    );
  }
}
