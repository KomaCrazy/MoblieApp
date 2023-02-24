import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider.dart';
import 'Edit.dart';
import 'User.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Provi _provi = Provider.of(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Center(child: Text("CRUD with Provider ")),
            bottom: const TabBar(tabs: [
              Tab(icon: Icon(Icons.person)),
              Tab(icon: Icon(Icons.edit)),
            ]),
          ),
          body: TabBarView(children: [User(), Edit()])),
    );
  }
}
