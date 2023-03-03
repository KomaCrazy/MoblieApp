import 'package:bills/componets/home.dart';
import 'package:bills/componets/system.dart';
import 'package:bills/icon.dart';
import 'package:bills/style.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Into extends StatefulWidget {
  const Into({super.key});

  @override
  State<Into> createState() => _IntoState();
}

class _IntoState extends State<Into> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ClassColors.prired,
      body: Center(
          child: Column(
        mainAxisAlignment: Position.center,
        children: [
          Row(mainAxisAlignment: Position.center, children: [
            fontWhite(text: "Bills ", size: 40),
            IconInto(h: 40, w: 40),
          ]),
          const SizedBox(height: 10),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
            child: Container(
              height: 40,
              width: MediaQuery.of(context).size.width * 0.5,
              color: Colors.white,
              child: Center(child: fontThem(text: "Login", size: 24)),
            ),
          ),
          const SizedBox(height: 15),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
            child: Container(
              height: 40,
              width: MediaQuery.of(context).size.width * 0.5,
              color: Colors.white,
              child: Center(child: fontThem(text: "Register", size: 24)),
            ),
          ),
        ],
      )),
    );
  }
}
