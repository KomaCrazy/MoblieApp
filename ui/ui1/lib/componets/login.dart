import 'package:flutter/material.dart';
import 'package:ui1/componets/style.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff444756),
      body: Padding(
        padding: const EdgeInsets.only(top: 120),
        child: Column(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [TopicLogin(), SizedBox()]),
            SizedBox(height: 80),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.6,
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      // focusColor: ColorStlye.primarygold,
                      enabledBorder: lineColor(),
                      focusedBorder: lienFocus(),
                      icon: Icon(Icons.person_outline, color: Colors.grey[500]),
                      label: LoginZone(
                        text: "User",
                      )),
                ),
              ),
            ),
            SizedBox(height: 30),
            Center(
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          enabledBorder: lineColor(),
                          focusedBorder: lienFocus(),
                          icon:
                              Icon(Icons.lock_outline, color: Colors.grey[500]),
                          label: LoginZone(text: "Password")),
                    ))),
            SizedBox(height: 12),
            check == true
                ? Text(
                    "Incorrect password.",
                    style: TextStyle(color: Colors.red[300], fontSize: 12),
                  )
                : Text(""),
            SizedBox(height: 80),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(), primary: ColorStlye.primaryblack),
                onPressed: () {
                  check = !check;
                  setState(() {});
                },
                child: Container(
                    height: 52,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: const Center(
                        child: Text("Log In",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w900))))),
            SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("First time here? ",
                    style: TextStyle(color: Colors.white, fontSize: 12)),
                Text(
                  "Sign up",
                  style: TextStyle(color: Color(0xff98ABB6)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Text TopicLogin() {
    return const Text(
      "Log In",
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w900,
        color: Colors.white,
      ),
    );
  }
}
