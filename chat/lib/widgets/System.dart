import 'package:flutter/material.dart';

void worring(context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => const AlertText()));
}

class AlertText extends StatefulWidget {
  const AlertText({super.key});

  @override
  State<AlertText> createState() => _AlertTextState();
}

class _AlertTextState extends State<AlertText> {
  @override
  @override
  Widget build(BuildContext context) {
    return const AlertDialog(

      actions: [Text("Worring")],
    );
  }
}
