import 'dart:io';

import 'package:flutter/material.dart';

int uiRow = 1;
List scoreRow = [0, 0];
int resultscore = 0;
double resultAgv = 0;

void buildList() {
  scoreRow = [];
  List.generate(uiRow, (index) => scoreRow.add(0));
  print(scoreRow);
}

void cal(index, scoreRaw) {
  int score = int.tryParse(scoreRaw) ?? 0;
  scoreRow[index] = score;
  resultscore = 0;
  resultAgv = 0;
  for (int i in scoreRow) {
    resultscore += i;
  }
  print(resultscore);
  resultAgv = resultscore / uiRow;
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    scoreRow = [];
    List.generate(uiRow, (index) => scoreRow.add(0));
    print(scoreRow);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Calulater Grade")),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const createField(),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: MaterialButton(
                    color: Colors.blue,
                    onPressed: () => setState(() {
                      buildList();
                    }),
                    child: const Text(
                      "Buil",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: List.generate(
                uiRow,
                (index) => Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text("วิชาที่ ${index + 1} คะแนน"),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                        child: TextField(
                          textAlign: TextAlign.center,
                          onChanged: (text) {
                            cal(index, text);
                            setState(() {});
                          },
                        ),
                      ),
                      Text(scoreRow[index] >= 80
                          ? "A"
                          : scoreRow[index] >= 75
                              ? "B+"
                              : scoreRow[index] >= 70
                                  ? "B"
                                  : scoreRow[index] >= 65
                                      ? "C+"
                                      : scoreRow[index] >= 60
                                          ? "C"
                                          : scoreRow[index] >= 55
                                              ? "D+"
                                              : scoreRow[index] >= 50
                                                  ? "D"
                                                  : "F")
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
                "คะแนนรวม ${resultscore} คะแนนเฉลี่ย ${resultAgv} เกรด = ${resultscore / uiRow >= 80 ? "A" : resultscore / uiRow >= 75 ? "B+" : resultscore / uiRow >= 70 ? "B" : resultscore / uiRow >= 65 ? "C+" : resultscore / uiRow >= 60 ? "C" : resultscore / uiRow >= 55 ? "D+" : resultscore / uiRow >= 50 ? "D" : "F"} ")
          ],
        ),
      ),
    );
  }
}

class createField extends StatefulWidget {
  const createField({super.key});

  @override
  State<createField> createState() => _createFieldState();
}

class BuildRow {
  int row;
  BuildRow({required this.row});
}

class _createFieldState extends State<createField> {
  TextEditingController row = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  void reRow() {
    scoreRow = [];
    uiRow = int.tryParse(row.text) ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.10,
      child: TextField(
        onChanged: (text) {
          reRow();
          setState(() {});
        },
        textAlign: TextAlign.center,
        controller: row,
        decoration: InputDecoration(label: Text("unit")),
      ),
    );
  }
}
