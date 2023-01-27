import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:test1/widgets/componets.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ...

void main() async {
  runApp(MyApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List ListData = ["eat", "work", "fish"];

  TextEditingController box_f = TextEditingController();
  String box = "123";
  void _save() {
    setState(() {
      box = box_f.text;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    initfirebase();
    super.initState();
  }

  void read_firebase() async {
    print("read_firebase start");
    DatabaseReference starCountRef = FirebaseDatabase.instance.ref('beta');
    starCountRef.onValue.listen((DatabaseEvent event) {
      final data = event.snapshot.value;
      print("$data");
    });
  }

  void initfirebase() async {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
    read_firebase();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appbar("ToDoList"),
        body: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          width: 250,
                          height: 45,
                          child: Row(
                            children: [
                              Container(
                                width: 180,
                                child: TextField(
                                  controller: box_f,
                                ),
                              ),
                              Container(
                                width: 65,
                                color: Colors.amber,
                                child: ElevatedButton(
                                  onPressed: (() => _save()),
                                  child: const Text("Save"),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: List.generate(
                        ListData.length,
                        (index) => Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "${ListData[index]}",
                                  )
                                ],
                              ),
                            )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
