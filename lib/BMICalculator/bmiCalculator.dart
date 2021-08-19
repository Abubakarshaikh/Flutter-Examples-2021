import 'package:flutter/material.dart';
import 'package:flutterbootcamp/BMICalculator/screens/input_page.dart';

class BMICalculator extends StatelessWidget {
  static const routeKey = "BMICalculator";
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}
