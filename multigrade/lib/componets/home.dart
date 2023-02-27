import 'package:flutter/material.dart';
import 'package:multigrade/animation.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

List rawList = [
  {
    'id': 's5s9q7',
    'name': 'kaw',
    'subject': {'cos1': 78, 'cos2': 93, 'cos3': 75}
  },
  {
    'id': 's4v52s',
    'name': 'jan',
    'subject': {'ram2': 50, 'ram1': 54, 'cos3': 69}
  },
];

List<conRaw> ListConv = [];
List<conRaw> ListMax = [];

class conRaw {
  String id;
  String name;
  String 
  conRaw({required this.id, required this.name});
}

class _HomeState extends State<Home> {
  List Topic = ["Rank", "Name", "SubJect", "Score"];

  @override
  void initState() {
    check();
    super.initState();
  }

  void check() {
    rawList.forEach((val) {
      ListConv.add(conRaw(id: val["id"], name: val["name"]));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("DashBoard", style: TextStyle(fontSize: 18)),
                    Text("overview", style: TextStyle(color: Colors.grey[500]))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 30,
                        decoration: const BoxDecoration(color: Colors.black),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: List.generate(
                            Topic.length,
                            (index) => Text(
                              "${Topic[index]}",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ), // Start Field Data
                    Container(
                      child: Column(
                          children: List.generate(
                              ListConv.length,
                              (index) => Row(
                                    children: [
                                      Text("${ListConv[index].name} "),
                                      Text("${ListConv[index].} "),
                                    ],
                                  ))),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
