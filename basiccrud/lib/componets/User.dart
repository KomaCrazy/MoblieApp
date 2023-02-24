import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  void initState() {
    // TODO: implement initState
    Provi pro = Provi();
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Provi _provi = Provider.of(context);
    return Column(
      children: [
        Center(
            child: Consumer<Provi>(
                builder: (context, value, child) =>
                    Center(child: Text("Home ${value.i}")))),
        MaterialButton(
          onPressed: (() => {}),
          color: Colors.amber,
          child: Text("Cick"),
        )
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}
