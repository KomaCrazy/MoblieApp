import 'package:flutter/material.dart';

class RoutesClass {
  String route;
  String map;
  RoutesClass({required this.route, required this.map});
}

List<RoutesClass> routes = [];

List<dynamic> routeList = [
  {'route': '/', 'map': 'Home'},
  {'route': '/about', 'map': 'About'},
  {'route': '/contact', 'map': 'Contact'},
];

void RouteRender() {
  List.generate(
      routeList.length,
      (index) => routes.add(RoutesClass(
          route: routeList[index]['route'], map: routeList[index]['map'])));
}

void Routing(context, rou) {
  Navigator.pushNamed(context, rou);
}

Row Menu(context) {
  return Row(
      children: List.generate(routes.length, (index) => btn(context, index)),
      mainAxisAlignment: MainAxisAlignment.center);
}

TextButton btn(context, int index) {
  return TextButton(
      onPressed: (() => Routing(context, routes[index].route)),
      child: Text(routes[index].map));
}
