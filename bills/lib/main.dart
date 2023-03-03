import 'package:bills/componets/into.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'componets/home.dart';
import 'componets/system.dart';

void main() {
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: cookies == false ? Into() : Home(),
      builder: EasyLoading.init(),
      debugShowCheckedModeBanner: false,
    );
  }
}
