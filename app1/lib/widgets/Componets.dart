import 'package:flutter/material.dart';

class PageMain extends StatefulWidget {
  const PageMain({super.key});

  @override
  State<PageMain> createState() => _PageMainState();
}

 TextStyle StyleSub() {
  return const TextStyle(
      fontSize: 26, fontWeight: FontWeight.w800, color: Colors.white);
}

class _PageMainState extends State<PageMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
            Image.asset("assets/images/flutter.png", width: 10, height: 10),
        title: const Text("Flutter"),
      ),
      body: Column(
        children: const [
          Padding(
            padding: EdgeInsets.all(30),
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(0),
                child: Text(
                  "Build apps for any Screen",
                  style: 
                ),
              ),
            ),
          ),
          ImageTitle(),
          TopicSub()
        ],
      ),
    );
  }
}

class TopicSub extends StatelessWidget {
  const TopicSub({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          children: [
            Text("123"),
          ],
        ),
      ),
    );
  }
}

class ImageTitle extends StatelessWidget {
  const ImageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          ImgRow1(),
          ImgRow2(),
        ],
      ),
    );
  }
}

class ImgRow2 extends StatelessWidget {
  const ImgRow2({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/title/other1.png",
      width: 150,
    );
  }
}

class ImgRow1 extends StatelessWidget {
  const ImgRow1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20, left: 0),
      child: Column(
        children: [
          Image.asset(
            "assets/title/other2.png",
            width: 200,
          ),
          Center(
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50, right: 5),
                  child: Image.asset(
                    "assets/title/other5.png",
                    width: 100,
                  ),
                ),
                Image.asset(
                  "assets/title/other3.png",
                  width: 100,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
