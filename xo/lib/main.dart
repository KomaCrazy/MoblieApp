import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:xo/widgets/Board.dart';

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
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {"/": (context) => PageSetPlayer()},
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
    );
  }
}

TextEditingController p1 = TextEditingController();
TextEditingController p2 = TextEditingController();

class PageSetPlayer extends StatefulWidget {
  const PageSetPlayer({super.key});

  @override
  State<PageSetPlayer> createState() => _PageSetPlayerState();
}

class _PageSetPlayerState extends State<PageSetPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Game RedBlue"),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 120,
                    height: 160,
                    decoration: BoxDecoration(
                        color: Colors.red[400], border: Border.all()),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  width: 120,
                                  height: 60,
                                  child: TextField(
                                      controller: p1,
                                      decoration: const InputDecoration(
                                          label: Text("Name Player1")))))
                        ])),
                const SizedBox(width: 10),
                OutlinedButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Board(
                                  p1: p1.text,
                                  p2: p2.text,
                                ))),
                    child: const Text("Fight!")),
                const SizedBox(width: 10),
                Container(
                    width: 120,
                    height: 160,
                    decoration: BoxDecoration(
                        color: Colors.blue[400], border: Border.all()),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                  width: 120,
                                  height: 60,
                                  child: TextField(
                                      controller: p2,
                                      decoration: const InputDecoration(
                                          label: Text("Name Player2")))))
                        ])),
              ],
            )
          ],
        ),
      ),
    );
  }
}
