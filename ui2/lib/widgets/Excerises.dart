import 'package:flutter/material.dart';

class Excerises extends StatelessWidget {
  final exIcon;
  final String exName;
  final int exNumber;
  final excolor;
  const Excerises(
      {super.key,
      required this.exIcon,
      required this.exName,
      required this.exNumber,
      required this.excolor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              Container(
                color: excolor,
                padding: EdgeInsets.all(16),
                child: Icon(
                  exIcon,
                  color: Colors.white,
                ),
              ),
              Row(children: [
                SizedBox(width: 8),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    exName,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 1),
                  Text('$exNumber Excerises')
                ])
              ])
            ]),
            Icon(Icons.more_horiz)
          ],
        ),
      ),
    );
  }
}
