import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  String companyname = "Koma";

  void _changcompany() {
    setState(() {
      companyname = "Bam";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('$companyname'),
        ElevatedButton(onPressed: _changcompany, child: Text('Cick Me!'))
      ],
    );
  }
}
