import 'package:flutter/material.dart';

int uiRow = 1;
List ListRow = [];
void convertGrade(index, score) {
  ListRow[index] = int.tryParse(score) ?? 0;
  print(ListRow);
}

void addRow() {
  cleanRow();
  uiRow += 1;
  List.generate(uiRow, (index) => ListRow.add(0));
  print(ListRow);
}

void cleanRow() {
  ListRow = [];
}

void delRow() {
  cleanRow();
  uiRow -= 1;
  List.generate(uiRow, (index) => ListRow.add(0));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

double result() {
  double score = 0;
  for (int i in ListRow) {
    score += i;
  }
  score = score / uiRow;
  return score;
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    List.generate(uiRow, (index) => ListRow.add(0));
    print(ListRow);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Calulator Grade"),
        ),
        actions: [
          Center(
            child: MaterialButton(
                onPressed: () {
                  addRow();
                  setState(() {});
                },
                child: Icon(Icons.add, color: Colors.white)),
          ),
        ],
      ),
      body: ListView(
        children: [
          Center(
              child: Column(
            children: [
              Column(
                children: List.generate(
                  uiRow,
                  (index) => Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width * 0.95,
                          color: Colors.blue[200],
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("วิชาที่ ${index + 1}"),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.15,
                                    child: TextField(
                                        onChanged: (val) => setState(() {
                                              convertGrade(index, val);
                                            }),
                                        decoration: const InputDecoration(
                                            label: Text("คะแนน")))),
                              ),
                              Text(ListRow[index] >= 80
                                  ? "A"
                                  : ListRow[index] >= 75
                                      ? "B+"
                                      : ListRow[index] >= 70
                                          ? "B"
                                          : ListRow[index] >= 65
                                              ? "C+"
                                              : ListRow[index] >= 60
                                                  ? "C"
                                                  : ListRow[index] >= 55
                                                      ? "D+"
                                                      : ListRow[index] >= 50
                                                          ? "D"
                                                          : "Fail"),
                              MaterialButton(
                                onPressed: () {
                                  if (uiRow > 1) {
                                    delRow();
                                    setState(() {});
                                  }
                                },
                                child: Icon(Icons.delete),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("คะแนนรวม"),
                      Text("${result()}"),
                      Text(result() >= 80
                          ? "A"
                          : result() >= 75
                              ? "B+"
                              : result() >= 70
                                  ? "B"
                                  : result() >= 65
                                      ? "C+"
                                      : result() >= 60
                                          ? "C"
                                          : result() >= 55
                                              ? "D+"
                                              : result() >= 50
                                                  ? "D"
                                                  : "Fail"),
                    ],
                  ),
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}
