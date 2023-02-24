import 'package:flutter/material.dart';

class Serach extends StatefulWidget {
  const Serach({super.key});

  @override
  State<Serach> createState() => _SerachState();
}

class _SerachState extends State<Serach> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Container(
          width: MediaQuery.of(context).size.width * 0.25,
          child: TextField(
            decoration: InputDecoration(label: Text("Search")),
          ),
        ),
      ],
    );
  }
}
