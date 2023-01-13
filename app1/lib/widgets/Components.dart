import 'package:flutter/material.dart';

AppBar Bar([name = "Default"]) => AppBar(
      title: Text('${name}'),
    );

Text text1(text) => Text(
      "$text",
      style: TextStyle(fontSize: 26),
    );

Center Main([count = 0]) => Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [text1("count : $count")],
      ),
    );
