import 'package:flutter/material.dart';
import 'package:multigrade/animation.dart';

class start extends StatefulWidget {
  const start({super.key});

  @override
  State<start> createState() => _startState();
}

int i = 0;

class _startState extends State<start> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("${i += 1}");
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            child: AnimationToon(),
          ),
          AnimationText(aniText: "Touch To Start"),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      )),
    );
  }
}
