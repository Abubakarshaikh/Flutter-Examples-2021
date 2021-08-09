import 'package:flutter/material.dart';
import 'package:flutterbootcamp/Counter/counter.dart';
import 'package:flutterbootcamp/Destini/destini.dart';
import 'package:flutterbootcamp/Dicee/dicee.dart';
import 'package:flutterbootcamp/FormValidation/formValidation.dart';
import 'package:flutterbootcamp/Magic8Ball/magic8ball.dart';
import 'package:flutterbootcamp/News/news.dart';
import 'package:flutterbootcamp/Quizzler/quizzler.dart';
import 'package:flutterbootcamp/Xylophone/xylophone.dart';
import 'micard/micard.dart';
import 'app.dart';

void main() {
  runApp(FlutterBootcamp());
}

class FlutterBootcamp extends StatelessWidget {
  const FlutterBootcamp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: App.routeKey,
      routes: {
        App.routeKey: (context) => App(),
        Micard.routeKey: (context) => Micard(),
        Dicee.routeKey: (context) => Dicee(),
        Magic8Ball.routeKey: (context) => Magic8Ball(),
        Xylophone.routeKey: (context) => Xylophone(),
        Quizzler.routeKey: (context) => Quizzler(),
        Destini.routeKey: (context) => Destini(),
        NewsPage.routeKey: (context) => NewsPage(),
        Counter.routeKey: (context) => Counter(),
        FormValidation.routeKey: (context) => FormValidation(),
      },
    );
  }
}
