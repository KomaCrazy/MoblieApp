import 'package:lottie/lottie.dart';
import 'package:blinking_text/blinking_text.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:pie_chart/pie_chart.dart';
import 'componets/home.dart';

class AnimationText extends StatelessWidget {
  String aniText = "";
  AnimationText({super.key, required this.aniText});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home())),
        child: BlinkText(aniText,
            style: const TextStyle(fontSize: 20, color: Colors.redAccent),
            beginColor: Colors.grey[500],
            endColor: Colors.grey[100],
            duration: const Duration(seconds: 1)));
  }
}

String url = "https://assets7.lottiefiles.com/packages/lf20_awP420Zf8l.json";

class AnimationToon extends StatelessWidget {
  const AnimationToon({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.network(url);
  }
}

class Circly extends StatefulWidget {
  int per = 0;
  Circly({super.key, required this.per});

  @override
  State<Circly> createState() => _CirclyState();
}

class _CirclyState extends State<Circly> {
  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 45.0,
      lineWidth: 10,
      percent: 0.60,
      center: new Text("60%"),
      progressColor: Colors.green,
    );
  }
}

final dataMap = <String, double>{
  "Flutter": 5,
};

final colorList = <Color>[
  Colors.greenAccent,
];

class picpercen extends StatelessWidget {
  const picpercen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: PieChart(
        dataMap: dataMap,
        chartType: ChartType.ring,
        baseChartColor: Colors.grey[50]!.withOpacity(0.15),
        colorList: colorList,
        chartValuesOptions: ChartValuesOptions(
          showChartValuesInPercentage: true,
        ),
        totalValue: 20,
      ),
    );
  }
}
