import 'package:bills/componets/home.dart';
import 'package:bills/componets/into.dart';
import 'package:bills/componets/login.dart';
import 'package:bills/componets/register.dart';
import 'package:bills/componetslib/system/cookies.dart';
import 'package:bills/componetslib/system/firebase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() {
  runApp(Main());
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
    initfirebase();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Cookies.check ? "/home" : "/login",
      routes: {
        "/": (context) => const Into(),
        "/home": (context) => const Home(),
        "/login": (context) => const PageLogin(),
        "/register": (context) => const PageRegister(),
      },
      builder: EasyLoading.init(),
      debugShowCheckedModeBanner: false,
    );
  }
}
