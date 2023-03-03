import 'package:flutter/material.dart';
import 'package:testfirebase/componets/system.dart';

class Read extends StatefulWidget {
  const Read({super.key});

  @override
  State<Read> createState() => _ReadState();
}

class _ReadState extends State<Read> {
  @override
  void initState() {
    // TODO: implement initState
    initFirebase();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [],
      )),
    );
  }
}
