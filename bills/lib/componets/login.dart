import 'package:bills/componetslib/system/firebase.dart';
import 'package:flutter/material.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();
  bool hipass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.6,
          // color: Colors.amber,
          child: Column(children: [
            const SizedBox(height: 40),
            Row(children: [
              Column(children: [
                Text("Sign In",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold))
              ])
            ]),
            Container(
                child: Row(children: [
              Column(children: [
                Text("New Experience"),
              ])
            ])),
            Container(
                child: Row(children: [
              Column(children: [Text("for Easy check Debtor")])
            ])),
            TextField(
              controller: user,
              decoration: InputDecoration(label: Text("User")),
            ),
            TextField(
              controller: pass,
              obscureText: hipass,
              decoration: InputDecoration(
                  label: Text("Password"),
                  suffixIcon: IconButton(
                      onPressed: () => setState(() {
                            hipass = !hipass;
                          }),
                      icon: hipass
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility))),
            ),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  login(user.text, pass.text);
                },
                child: Text("Log In"))
          ]),
        ),
      ),
    );
  }
}
