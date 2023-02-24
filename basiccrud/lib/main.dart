import 'package:basiccrud/Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'componets/Home.dart';

void main() async {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<Provi>(
        create: (_) => Provi(),
      )
    ],
    child: Main(),
  ));
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
