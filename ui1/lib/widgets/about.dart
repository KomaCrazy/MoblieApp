import 'package:flutter/material.dart';
import 'package:ui1/widgets/func.dart';

class about extends StatefulWidget {
  const about({super.key});

  @override
  State<about> createState() => _aboutState();
}



class _aboutState extends State<about> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Welcome to Flutter ")),
    );
  }
}
