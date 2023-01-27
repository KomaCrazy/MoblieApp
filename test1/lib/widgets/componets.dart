import 'package:flutter/material.dart';

AppBar appbar(topic) => AppBar(
      centerTitle: true,
      title: Text("$topic"),
    );

Container input() => Container(
      height: 26,
      width: 200,
      child: const TextField(
        // controller: name,
        decoration: InputDecoration(hintText: "To Day Do you want"),
      ),
    );
