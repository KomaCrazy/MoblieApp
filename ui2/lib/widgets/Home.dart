import 'package:flutter/material.dart';
import 'package:ui2/widgets/emoji.dart';

import 'Excerises.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: '')
      ]),
      backgroundColor: Colors.blue[700],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(children: [
                SizedBox(height: 8),
                Row(
                  children: [
                    Column(children: [
                      Text("Hi, Kaw",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 8),
                      Text("2 Jan 2023",
                          style: TextStyle(color: Colors.blue[100]))
                    ], crossAxisAlignment: CrossAxisAlignment.start),
                    Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Colors.blue[500],
                            borderRadius: BorderRadius.circular(16)),
                        child: Icon(Icons.notifications, color: Colors.white))
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
                SizedBox(height: 8),
                //search bar
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.blue[500],
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.white),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text("How do you feel?",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                    Icon(Icons.more_horiz, color: Colors.white)
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
                SizedBox(
                  height: 24,
                ),

                Row(
                  children: [
                    Column(children: [
                      EmojiGood(emojiFace: '😀'),
                      SizedBox(height: 4),
                      Text("Good", style: TextStyle(color: Colors.white))
                    ]),
                    Column(children: [
                      EmojiGood(emojiFace: '🥹'),
                      SizedBox(height: 4),
                      Text("Bed", style: TextStyle(color: Colors.white))
                    ]),
                    Column(children: [
                      EmojiGood(emojiFace: '🥰'),
                      SizedBox(height: 4),
                      Text("Love",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold))
                    ]),
                    Column(children: [
                      EmojiGood(emojiFace: '😡'),
                      SizedBox(height: 4),
                      Text("angry",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold))
                    ])
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                ),
              ]),
            ),
            SizedBox(height: 12),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                color: Colors.grey[300],
                child: Center(
                  child: Column(children: [
                    Row(
                      children: [
                        Text(
                          "Excercises",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.more_horiz)
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    SizedBox(height: 6),
                    Excerises(
                        excolor: Colors.amber[400],
                        exIcon: Icons.favorite,
                        exName: "Specking",
                        exNumber: 10),
                    Excerises(
                        excolor: Colors.blue[400],
                        exIcon: Icons.favorite,
                        exName: "Reading",
                        exNumber: 10),
                    Excerises(
                        excolor: Colors.red[400],
                        exIcon: Icons.favorite,
                        exName: "Writing",
                        exNumber: 10),
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
