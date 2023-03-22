import 'package:bills/componetslib/style/style.dart';
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
            SizedBox(height: 30),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      child: Image.asset("assets/bill.png"),
                    ),
                    Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          child: Image.asset("assets/man.png"),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              child: Image.asset("assets/worker.png"),
                            ),
                            Container(
                              width: 60,
                              height: 60,
                              child: Image.asset("assets/hippie.png"),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            TextField(
              controller: user,
              decoration: InputDecoration(
                filled: true,
                fillColor: ColorClass.purple,
                label: Text(
                  "Enter eamil or user name",
                  style: TextStyle(color: ColorClass.purple2),
                ),
                enabledBorder: outline,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: pass,
              obscureText: hipass,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: ColorClass.purple,
                  label: Text(
                    "Password",
                    style: TextStyle(color: ColorClass.purple2),
                  ),
                  enabledBorder: outline,
                  suffixIcon: IconButton(
                      onPressed: () => setState(() {
                            hipass = !hipass;
                          }),
                      icon: hipass
                          ? Icon(
                              Icons.visibility_off,
                              color: ColorClass.purple2,
                            )
                          : Icon(
                              Icons.visibility,
                              color: ColorClass.purple2,
                            ))),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("You can "),
                Text(
                  "Resgier here",
                  style: TextStyle(color: ColorClass.purple3),
                )
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 1,
              child: MaterialButton(
                color: ColorClass.purple3,
                onPressed: () {
                  login(user.text, pass.text);
                },
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

OutlineInputBorder outline =
    OutlineInputBorder(borderSide: BorderSide(color: ColorClass.purple2));
