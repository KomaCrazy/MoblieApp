import 'package:firebase1/Fuc/firebase.dart';
import 'package:firebase1/widgets/PageList.dart';
import 'package:firebase1/widgets/PageRegister.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Main());
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  void initState() {
    initFirebase();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: PageHome());
  }
}

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Page Home"),
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PageList()));
                },
                child: Text("Go To PageList")),
          ),
          ElevatedButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PageRegister())),
              child: Text("Register"))
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    ], mainAxisAlignment: MainAxisAlignment.center)));
  }
}
