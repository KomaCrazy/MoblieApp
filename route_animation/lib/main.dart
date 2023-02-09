import 'package:flutter/material.dart';
import 'package:route_animation/widgets/about.dart';
import 'package:route_animation/widgets/contact.dart';
import 'package:route_animation/widgets/home.dart';
import 'package:route_animation/widgets/tab.dart';

void main() {
  runApp(mainState());
}

class mainState extends StatefulWidget {
  const mainState({super.key});

  @override
  State<mainState> createState() => _mainStateState();
}

class _mainStateState extends State<mainState> {
  @override
  void initState() {
    RouteRender();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': ((_) => home()),
        '/about': ((_) => about()),
        '/contact': ((_) => contact()),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
