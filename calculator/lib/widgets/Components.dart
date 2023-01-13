import 'package:flutter/material.dart';

AppBar bar([name = "Default"]) => AppBar(
      title: Text('${name}'),
    );

Text text1(text) => Text(
      "$text",
      style: const TextStyle(fontSize: 26),
    );

Center template([count = 0]) => Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [text1("count : $count")],
      ),
    );

