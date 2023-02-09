import 'package:flutter/material.dart';

import 'func.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Flutter UI", style: TextStyle(fontSize: 24)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                btnField1(),
              ],
            ),
            btnField2(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                btnLogin(context),
                btnRegister(context),
              ],
            )
          ],
        ),
      ),
    );
  }
}
