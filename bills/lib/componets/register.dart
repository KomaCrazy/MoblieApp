import 'package:bills/componetslib/style/style.dart';
import 'package:bills/componetslib/system/firebase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class PageRegister extends StatefulWidget {
  const PageRegister({super.key});

  @override
  State<PageRegister> createState() => _PageRegisterState();
}

class _PageRegisterState extends State<PageRegister> {
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController con = TextEditingController();

  bool hipass = true;
  bool hicon = true;
  bool wrrong = false;

  @override
  void initState() {
    // TODO: implement initState
    initfirebase();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: TextField(
                        controller: user,
                        decoration:
                            const InputDecoration(label: Text("User")))),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: TextField(
                        controller: pass,
                        obscureText: hipass,
                        decoration: InputDecoration(
                            label: Text("Password"),
                            suffixIcon: IconButton(
                                icon: hipass
                                    ? Icon(Icons.visibility_off)
                                    : Icon(Icons.visibility),
                                onPressed: () {
                                  setState(() {
                                    hipass = !hipass;
                                    print("$hipass");
                                  });
                                })))),
                SizedBox(height: 10),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: TextField(
                        controller: con,
                        obscureText: hicon,
                        decoration: InputDecoration(
                            label: Text("Confirm Password"),
                            suffixIcon: IconButton(
                              icon: hicon
                                  ? Icon(Icons.visibility_off)
                                  : Icon(Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  hicon = !hicon;
                                });
                              },
                            )))),
                SizedBox(height: 5),
                wrrong ? Alert(lable: "Confirm Wrrong", size: 12) : Text(""),
                SizedBox(height: 5),
                Center(
                  child: ElevatedButton(
                      onPressed: () {
                        if (pass.text == con.text) {
                          register(user.text, pass.text);
                          EasyLoading.showSuccess('Great Success!');
                          Navigator.pop(context);
                        } else {
                          wrrong = true;
                        }
                        setState(() {});
                      },
                      child: Text("Register")),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
