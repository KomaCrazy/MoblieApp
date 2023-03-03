import 'package:flutter/material.dart';

class ImageEmail extends StatelessWidget {
  String path;
  ImageEmail({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/${path}.png");
  }
}
