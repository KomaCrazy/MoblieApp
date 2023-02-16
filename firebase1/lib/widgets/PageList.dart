import 'package:firebase1/Fuc/firebase.dart';
import 'package:flutter/material.dart';

class PageList extends StatefulWidget {
  const PageList({super.key});

  @override
  State<PageList> createState() => _PageListState();
}

class _PageListState extends State<PageList> {
  @override
  void initState() {
    // TODO: implement initState
    firebaseRead();
    print("ok");
    List.generate(list.length, (index) => print(list[index].user));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Column(
            children: List.generate(
                list.length,
                (index) => Row(
                      children: [
                        Text(list[index].id),
                        Text(list[index].user),
                        Text(list[index].age.toString())
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text("PageList"),
          ),
          ElevatedButton(
              onPressed: (() => Navigator.pop(context)), child: Text("Back"))
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      )),
    );
  }
}
