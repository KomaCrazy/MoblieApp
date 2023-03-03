import 'dart:math';

import 'package:bills/componets/system.dart';
import 'package:bills/style.dart';
import 'package:flutter/material.dart';


class Register extends StatefulWidget {
  const Register({super.key});
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController reuser = TextEditingController();
  TextEditingController repassword = TextEditingController();
  TextEditingController reconfirm = TextEditingController();
  bool vipass = true;
  bool vicon = true;

  @override
  void initState() {
    initFirebase();
    super.initState();
  }

  void register() async {
    String _repass = repassword.text;
    String _recon = reconfirm.text;

    if (_repass == _recon) {
      success("Register");
      regisFirebase(reuser.text, repassword.text);
      status = 0;
    } else {
      status = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60),
              const Text("Register",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
              TextField(
                controller: reuser,
                decoration: const InputDecoration(label: Text("User")),
              ),
              TextField(
                  controller: repassword,
                  obscureText: vipass,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: InputDecoration(
                      label: Text("Password"),
                      suffixIcon: IconButton(
                          onPressed: () {
                            vipass = !vipass;
                            setState(() {});
                          },
                          icon: vipass == true
                              ? const Icon(Icons.visibility_off)
                              : const Icon(Icons.visibility)))),
              TextField(
                controller: reconfirm,
                obscureText: vicon,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  label: const Text("Confirm Password"),
                  suffixIcon: IconButton(
                    onPressed: () {
                      vicon = !vicon;
                      setState(() {});
                    },
                    icon: vicon == true
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility),
                  ),
                ),
              ),
              SizedBox(height: 10),
              status == 0
                  ? const Text("")
                  : status == 1
                      ? const Text(
                          "confirm password worrning",
                          style: TextStyle(color: Colors.red),
                        )
                      : Text(""),
              const SizedBox(height: 10),
              Center(
                  child: Container(
                      child: ElevatedButton(
                          onPressed: () {
                            register();
                            setState(() {});
                            Navigator.pop(context);
                          },
                          child: Text("Register"))))
            ],
          ),
        ),
      )),
    );
  }
}
