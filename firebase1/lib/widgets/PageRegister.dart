import 'package:firebase1/Fuc/firebase.dart';
import 'package:flutter/material.dart';

TextEditingController user = TextEditingController();
TextEditingController age = TextEditingController();

class PageRegister extends StatefulWidget {
  const PageRegister({super.key});

  @override
  State<PageRegister> createState() => _PageRegisterState();
}

class _PageRegisterState extends State<PageRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register")),
      body: Column(children: [
        FieldUser(),
        Padding(padding: const EdgeInsets.all(8.0), child: FieldAge()),
        ElevatedButton(
            onPressed: () => firebaseWrite(user.text, age.text, context),
            child: Text("Save"))
      ], mainAxisAlignment: MainAxisAlignment.center),
    );
  }
}

class FieldUser extends StatelessWidget {
  const FieldUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 36,
        width: 160,
        child: TextField(
            controller: user,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "User")),
      ),
    );
  }
}

class FieldAge extends StatelessWidget {
  const FieldAge({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 36,
        width: 160,
        child: TextField(
            controller: age,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "Age")),
      ),
    );
  }
}
