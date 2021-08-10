import 'package:flutter/material.dart';
import 'package:flutterbootcamp/Counter/counter.dart';
import 'package:flutterbootcamp/Destini/destini.dart';
import 'package:flutterbootcamp/Dicee/dicee.dart';
import 'package:flutterbootcamp/FormValidation/formValidation.dart';
import 'package:flutterbootcamp/Magic8Ball/magic8ball.dart';
import 'package:flutterbootcamp/News/news.dart';
import 'package:flutterbootcamp/Quizzler/quizzler.dart';
import 'package:flutterbootcamp/ShoppingCart/app.dart';
import 'package:flutterbootcamp/Xylophone/xylophone.dart';
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
          Menu(
            title: "Dicee",
            onClick: () {
              Navigator.pushNamed(context, Dicee.routeKey);
            },
          ),
          Menu(
            title: "Magic 8 Ball",
            onClick: () {
              Navigator.pushNamed(context, Magic8Ball.routeKey);
            },
          ),
          Menu(
            title: "Xylophone",
            onClick: () {
              Navigator.pushNamed(context, Xylophone.routeKey);
            },
          ),
          Menu(
            title: "Quizzler",
            onClick: () {
              Navigator.pushNamed(context, Quizzler.routeKey);
            },
          ),
          Menu(
            title: "Destini",
            onClick: () {
              Navigator.pushNamed(context, Destini.routeKey);
            },
          ),
          Menu(
            title: "Counter",
            onClick: () {
              Navigator.pushNamed(context, Counter.routeKey);
            },
          ),
          Menu(
            title: "News",
            onClick: () {
              Navigator.pushNamed(context, NewsPage.routeKey);
            },
          ),
          Menu(
            title: "Form Validation",
            onClick: () {
              Navigator.pushNamed(context, FormValidation.routeKey);
            },
          ),
          Menu(
            title: "Shopping Cart",
            onClick: () {
              Navigator.pushNamed(context, ShoppingCart.routeKey);
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
