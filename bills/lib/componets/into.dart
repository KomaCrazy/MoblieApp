import 'package:flutter/material.dart';

class Into extends StatefulWidget {
  const Into({super.key});

  @override
  State<Into> createState() => _IntoState();
}

class _IntoState extends State<Into> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Column(children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Container(
                    child: Column(children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/login");
                          },
                          child: Center(child: Text("Login"))),
                      SizedBox(height: 10),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/register");
                          },
                          child: Center(child: Text("Register")))
                    ]),
                  ),
                )
              ]),
            )
          ]),
        ),
      ),
    );
  }
}
