import 'package:flutter/material.dart';
import 'package:flutterbootcamp/micard/micard.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  static const String routeKey = "Home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Complete Flutter Bootcamp"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 12),
        children: [
          Menu(
            title: "Micard",
            onClick: () {
              Navigator.pushNamed(context, Micard.routeKey);
            },
          ),
        ],
      ),
    );
  }
}

class Menu extends StatelessWidget {
  const Menu({Key? key, required this.title, required this.onClick})
      : super(key: key);
  final String title;
  final onClick;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.teal),
      ),
      child: Text(title, style: TextStyle(color: Colors.white)),
      onPressed: onClick,
    );
  }
}
