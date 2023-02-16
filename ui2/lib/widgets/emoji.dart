import 'package:flutter/material.dart';

class EmojiGood extends StatelessWidget {
  final String emojiFace;
  const EmojiGood({super.key, required this.emojiFace});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue[500], borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Text(
        '$emojiFace',
        style: TextStyle(fontSize: 20),
      )),
      padding: EdgeInsets.all(12),
    );
  }
}
