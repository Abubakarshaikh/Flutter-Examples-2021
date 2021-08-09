import 'package:flutter/material.dart';

class Magic8Ball extends StatelessWidget {
  const Magic8Ball({Key? key}) : super(key: key);
  static const routeKey = "Magic8Ball";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue.shade800,
        title: Text("Ask Me Anythings"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AskMeAnyThings(),
        ],
      ),
    );
  }
}

class AskMeAnyThings extends StatefulWidget {
  const AskMeAnyThings({Key? key}) : super(key: key);

  @override
  _AskMeAnyThingsState createState() => _AskMeAnyThingsState();
}

class _AskMeAnyThingsState extends State<AskMeAnyThings> {
  int questions = 1;
  void changeQuestions() {
    setState(() {
      questions++;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (questions == 5) questions = 1;
    return TextButton(
      child: Image.asset("assets/images/ball$questions.png"),
      onPressed: () {
        changeQuestions();
      },
    );
  }
}
