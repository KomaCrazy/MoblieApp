import 'package:flutter/material.dart';
import 'package:testfirebase/componets/system.dart';

class Write extends StatefulWidget {
  const Write({super.key});

  @override
  State<Write> createState() => _WriteState();
}

class _WriteState extends State<Write> {
  @override
  void initState() {
    // TODO: implement initState

    initFirebase();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Write Firebase")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            child: TextField(
                controller: wruser,
                decoration: InputDecoration(
                  label: Text("User"),
                )),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            child: TextField(
                controller: wrpassword,
                decoration: InputDecoration(
                  label: Text("Password"),
                )),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            child: TextField(
                controller: wrname,
                decoration: InputDecoration(
                  label: Text("name"),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                writeFirrbase();
              },
              child: Text("Save"),
            ),
          )
        ],
      )),
    );
  }
}
