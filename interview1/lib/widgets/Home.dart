import 'package:flutter/material.dart';
import 'package:interview1/widgets/Tabs/RestaurantList.dart';
import 'package:interview1/widgets/Tabs/Search.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Restaurant"),
            bottom: const TabBar(tabs: [
              Icon(Icons.search),
              Icon(Icons.list),
            ]),
          ),
          body: const TabBarView(children: [
            Serach(),
            Restaurants(),
          ]),
        ));
  }
}
