import 'package:bills/componets/system.dart';
import 'package:bills/icon.dart';
import 'package:bills/style.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();

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
        child: Column(mainAxisAlignment: Position.center, children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(children: [
              IconInto(w: 120, h: 120),
              Container(
                child: TextField(
                    controller: user,
                    decoration: InputDecoration(label: Text("User"))),
              ),
              SizedBox(height: 20),
              Container(
                child: TextField(
                    controller: pass,
                    decoration: InputDecoration(label: Text("Password"))),
              ),
              SizedBox(height: 20),
              Container(
                color: ClassColors.prired,
                child: MaterialButton(
                  onPressed: () {
                    login(user.text, pass.text);
                  },
                  child: Text(
                    "Log In",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ]),
          )
        ]),
      ),
    );
  }
}
