import 'package:flutter/material.dart';

class PageMain extends StatefulWidget {
  const PageMain({super.key});

  @override
  State<PageMain> createState() => _PageMainState();
}

class _PageMainState extends State<PageMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
            Image.asset("assets/images/flutter.png", width: 10, height: 10),
        title: Text("Flutter"),
      ),
      body: Column(
        children: const [
          Padding(
            padding: EdgeInsets.all(40),
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(0),
                child: Text(
                  "Build apps for any Screen",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
