import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:xo/widgets/Table.dart';

const topicCenter = MainAxisAlignment.center;
const topicText = TextStyle(fontSize: 20);

class Board extends StatefulWidget {
  String p1 = "p1";
  String p2 = "p2";
  Board({super.key, required this.p1, required this.p2});

  @override
  State<Board> createState() => _BoardState();
}

String player1 = "Player1";
String player2 = "Player2";
bool turn = true;

List row = [null, null, null, null, null, null, null, null, null];

int scoreP1 = 0;
int scoreP2 = 0;
int scoreT = 0;
int scoreF = 0;

class _BoardState extends State<Board> {
  @override
  void initState() {
    // TODO: implement initState
    player1 = widget.p1;
    player2 = widget.p2;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: topicCenter,
          children: [
            Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Column(
                  children: [
                    Topic(topic: "Game RedBlue"),
                    SizedBox(height: 20),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                PlayerSet(name: "${widget.p1}"),
                              ],
                            ),
                            Column(children: [
                              const Text("Turn",
                                  style: TextStyle(fontSize: 20)),
                              Text(turn ? player1 : player2)
                            ]),
                            PlayerSet(name: "${widget.p2}"),
                          ]),
                    )
                  ],
                )),
            Row(
                mainAxisAlignment: topicCenter,
                children: List.generate(
                    3,
                    (index) => rowanimation(
                        position: index, player: turn, context: context))),
            Row(
                mainAxisAlignment: topicCenter,
                children: List.generate(
                    3,
                    (index) => rowanimation(
                        position: index + 3, player: turn, context: context))),
            Row(
                mainAxisAlignment: topicCenter,
                children: List.generate(
                    3,
                    (index) => rowanimation(
                        position: index + 6, player: turn, context: context))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    print(row);

                    setState(() {
                      for (var i = 0; i < row.length; i++) {
                        row[i] = null;
                      }
                      scoreT = 0;
                      scoreF = 0;
                    });

                    print(row);
                  },
                  child: Icon(Icons.restart_alt)),
            )
          ],
        ),
      ),
    );
  }

  rowanimation({required int position, bool? player, context}) {
    return AnimatedContainer(
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      height: 60,
      width: 60,
      duration: Duration(seconds: 2),
      child: Material(
        color: row[position] == null
            ? Colors.amber
            : row[position]
                ? Colors.red
                : Colors.blue,
        child: InkWell(
          onTap: () {
            setState(() {
              row[position] = turn;
              turn = !turn;
              check();
            });
          },
        ),
      ),
    );
  }
}

void win() {
  if (scoreT == 3) {
    EasyLoading.showSuccess('$player1 win!');
  } else if (scoreF == 3) {
    EasyLoading.showSuccess('$player2 Win!');
  }
}

void check({rows}) {
  if (row[win1[0]] != null && row[win1[1]] != null && row[win1[2]] != null) {
    scoreT = 0;
    scoreF = 0;
    for (var _i = 0; _i < 3; _i++) {
      if (row[win1[_i]] == true) {
        scoreT += 1;
      }
      if (row[win1[_i]] == false) {
        scoreF += 1;
      }
    }
    win();
  }
  if (row[win2[0]] != null && row[win2[1]] != null && row[win2[2]] != null) {
    scoreT = 0;
    scoreF = 0;
    for (var _i = 0; _i < 3; _i++) {
      if (row[win2[_i]] == true) {
        scoreT += 1;
      }
      if (row[win2[_i]] == false) {
        scoreF += 1;
      }
    }
    win();
  }
  if (row[win3[0]] != null && row[win3[1]] != null && row[win3[2]] != null) {
    scoreT = 0;
    scoreF = 0;
    for (var _i = 0; _i < 3; _i++) {
      if (row[win3[_i]] == true) {
        scoreT += 1;
      }
      if (row[win3[_i]] == false) {
        scoreF += 1;
      }
    }
    win();
  }
  if (row[win4[0]] != null && row[win4[1]] != null && row[win4[2]] != null) {
    scoreT = 0;
    scoreF = 0;
    for (var _i = 0; _i < 3; _i++) {
      if (row[win4[_i]] == true) {
        scoreT += 1;
      }
      if (row[win4[_i]] == false) {
        scoreF += 1;
      }
    }
    win();
  }
  if (row[win5[0]] != null && row[win5[1]] != null && row[win5[2]] != null) {
    scoreT = 0;
    scoreF = 0;
    for (var _i = 0; _i < 3; _i++) {
      print(row[win5[_i]]);
      if (row[win5[_i]] == true) {
        scoreT += 1;
      }
      if (row[win5[_i]] == false) {
        scoreF += 1;
      }
    }
    win();
  }
  if (row[win6[0]] != null && row[win6[1]] != null && row[win6[2]] != null) {
    scoreT = 0;
    scoreF = 0;
    for (var _i = 0; _i < 3; _i++) {
      if (row[win6[_i]] == true) {
        scoreT += 1;
      }
      if (row[win6[_i]] == false) {
        scoreF += 1;
      }
    }
    win();
  }
  if (row[win7[0]] != null && row[win7[1]] != null && row[win7[2]] != null) {
    scoreT = 0;
    scoreF = 0;
    for (var _i = 0; _i < 3; _i++) {
      if (row[win7[_i]] == true) {
        scoreT += 1;
      }
      if (row[win7[_i]] == false) {
        scoreF += 1;
      }
    }
    win();
  }
  if (row[win8[0]] != null && row[win8[1]] != null && row[win8[2]] != null) {
    scoreT = 0;
    scoreF = 0;
    for (var _i = 0; _i < 3; _i++) {
      if (row[win8[_i]] == true) {
        scoreT += 1;
      }
      if (row[win8[_i]] == false) {
        scoreF += 1;
      }
    }
  }
  win();
}

class PlayerSet extends StatelessWidget {
  String name;
  PlayerSet({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(name);
  }
}

class Topic extends StatelessWidget {
  String topic;

  Topic({Key? key, required this.topic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(topic, style: topicText),
    );
  }
}
