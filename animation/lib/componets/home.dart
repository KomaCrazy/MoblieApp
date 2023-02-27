import 'dart:html';

import 'package:animation/componets/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:blinking_text/blinking_text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon1(),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DashBoard()));
              },
              child: BlinkText('Click To Start',
                  style: TextStyle(fontSize: 18, color: Colors.grey[800]),
                  endColor: Colors.grey[300],
                  duration: Duration(seconds: 1)),
            ),
          ],
        ),
      )),
    );
  }

  SizedBox Icon1() {
    return SizedBox(
        width: 200,
        height: 200,
        child: Lottie.network(
            'https://assets6.lottiefiles.com/packages/lf20_k0sUtnckyH.json'));
  }
}
