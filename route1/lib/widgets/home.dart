import 'package:flutter/material.dart';

void call1(x) {
  print("$x");
}

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text("Home"),
            TextButton(
                onPressed: () => Navigator.pushNamed(context, '/about'),
                child: Text("next"))
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
