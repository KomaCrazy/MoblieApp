import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text("Hi kaw",
                  style: TextStyle(color: Colors.grey, fontSize: 18)),
              Icon(Icons.notifications_active_outlined, size: 36)
            ]),
            Text("1,200.00",
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.w900)),
            SizedBox(
              height: 8,
            ),
            Row(children: [
              Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5))),
              SizedBox(width: 5),
              Text(
                "THB",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
              Icon(Icons.keyboard_arrow_down)
            ]),
            SizedBox(height: 50),
            Text("Here are some things you can do",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
            SizedBox(height: 20),
            Row(
              children: [
                MenuList(
                    icon: Icons.phone_android,
                    titleName: "Pay someone",
                    sub: "To wallet bank or mobile number",
                    color_: Colors.amber[100]),
                MenuList(
                    icon: Icons.phone_android,
                    titleName: "Request money",
                    sub: "Request money from OroboPay uses",
                    color_: Colors.green[100]),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            ),
            SizedBox(height: 20),
            Row(
              children: [
                MenuList(
                    icon: Icons.phone_android,
                    titleName: "Pay someone",
                    sub: "To wallet bank or mobile number",
                    color_: Colors.amber[100]),
                MenuList(
                    icon: Icons.phone_android,
                    titleName: "Request money",
                    sub: "Request money from OroboPay uses",
                    color_: Colors.green[100]),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            )
          ],
        ),
      )),
    );
  }
}

class MenuList extends StatelessWidget {
  final icon;
  final String titleName;
  final String sub;
  final color_;
  const MenuList(
      {Key? key,
      required this.icon,
      required this.titleName,
      required this.sub,
      required this.color_})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: color_,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Icon(icon),
          SizedBox(height: 8),
          Text(titleName, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text(sub, style: TextStyle(color: Colors.grey[500])),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}
