import 'package:flutter/material.dart';
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
      },
    );
  }
}
