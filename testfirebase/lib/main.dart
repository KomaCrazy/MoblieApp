import 'package:flutter/material.dart';
import 'package:testfirebase/componets/read.dart';

import 'componets/write.dart';

void main() {
  runApp(Main());
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: Read(),
      home: Write(),
      debugShowCheckedModeBanner: false,
    );
  }
}
