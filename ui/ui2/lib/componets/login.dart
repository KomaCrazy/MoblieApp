import 'package:flutter/material.dart';
import 'package:ui2/componets/image.dart';
import 'package:ui2/style.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
      child: Container(
        // color: Colors.amber,
        height: MediaQuery.of(context).size.height * 0.9,
        width: MediaQuery.of(context).size.width * 0.8,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Topic("Hello! Register to Get Started"),
              SizedBox(height: 20),
              Container(
                child: TextField(
                    decoration: InputDecoration(
                        label: inputText("Username"),
                        filled: true,
                        fillColor: Colors.grey[100],
                        enabledBorder: inputBorder(),
                        focusedBorder: inputBorder())),
              ),
              SizedBox(height: 20),
              Container(
                child: TextField(
                    decoration: InputDecoration(
                        label: inputText("Email"),
                        filled: true,
                        fillColor: Colors.grey[100],
                        enabledBorder: inputBorder(),
                        focusedBorder: inputBorder())),
              ),
              SizedBox(height: 20),
              Container(
                child: TextField(
                    decoration: InputDecoration(
                        label: inputText("Password"),
                        filled: true,
                        fillColor: Colors.grey[100],
                        enabledBorder: inputBorder(),
                        focusedBorder: inputBorder())),
              ),
              SizedBox(height: 20),
              Container(
                child: TextField(
                    decoration: InputDecoration(
                        label: inputText("Confirm password"),
                        filled: true,
                        fillColor: Colors.grey[100],
                        enabledBorder: inputBorder(),
                        focusedBorder: inputBorder())),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                style:
                    ElevatedButton.styleFrom(primary: StyleClass.primaryback),
                onPressed: () {},
                child: Container(
                    height: 50, child: Center(child: Text("Register"))),
              ),
              SizedBox(height: 30),
              Text("Or Register with", style: TextStyle(color: Colors.grey)),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(color: Color.fromARGB(255, 225, 225, 225)),
                    ),
                    width: 100,
                    height: 60,
                    child: MaterialButton(
                      onPressed: () {},
                      child: Container(
                          width: 30,
                          height: 30,
                          child: ImageEmail(path: "facebook")),
                    ),
                  ),
                  SizedBox(width: 8),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(color: Color.fromARGB(255, 225, 225, 225)),
                    ),
                    width: 100,
                    height: 60,
                    child: MaterialButton(
                      onPressed: () {},
                      child: Container(
                          height: 30,
                          width: 30,
                          child: ImageEmail(path: "gmail")),
                    ),
                  ),
                  SizedBox(width: 8),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 225, 225, 225)),
                        borderRadius: BorderRadius.circular(10)),
                    height: 60,
                    width: 100,
                    child: MaterialButton(
                      onPressed: () {},
                      child: Container(
                          width: 30,
                          child: Container(
                              width: 30,
                              height: 30,
                              child: ImageEmail(path: "apple"))),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? "),
                  Text(
                    "Login Now",
                    style: TextStyle(color: Colors.cyan),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    )));
  }
}
