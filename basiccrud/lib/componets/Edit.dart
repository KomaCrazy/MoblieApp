import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider.dart';

class Edit extends StatefulWidget {
  const Edit({super.key});

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  @override
  Widget build(BuildContext context) {
    Provi _provi = Provider.of(context);
    return Center(
      child: Text("Edit ${_provi.i}"),
    );
  }
}
