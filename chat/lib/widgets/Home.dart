import 'package:chat/widgets/System.dart';
import 'package:flutter/material.dart';

const styleTopic = TextStyle(fontSize: 36);
const mainCenter = MainAxisAlignment.center;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _passHiden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: mainCenter,
        children: [
          Row(mainAxisAlignment: mainCenter, children: const [
            Text("Chat 0.1", style: styleTopic),
            Icon(Icons.chat_rounded)
          ]),
          const SizedBox(
            height: 24,
          ),
          const SizedBox(
              width: 200,
              height: 36,
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), label: Text("User")))),
          const SizedBox(height: 12),
          SizedBox(
              width: 200,
              height: 36,
              child: TextField(
                  obscureText: _passHiden,
                  autocorrect: false,
                  enableSuggestions: false,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () => setState(() {
                                _passHiden = !_passHiden;
                              }),
                          icon: Icon(_passHiden
                              ? Icons.visibility_off
                              : Icons.visibility)),
                      border: const OutlineInputBorder(),
                      label: const Text("Password")))),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => worring(context),
                  child: const Text(
                    "Login",
                    style: TextStyle(fontSize: 16),
                  )),
              const SizedBox(width: 8),
              const Text("or"),
              const SizedBox(width: 8),
              OutlinedButton(onPressed: () {}, child: const Text("Register"))
            ],
          )
        ],
      )),
    );
  }
}
