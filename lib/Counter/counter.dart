import 'package:flutter/material.dart';
import 'counterBloc_core.dart';

class Counter extends StatefulWidget {
  static const routeKey = "Counter";
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;
  final counterBloc = CounterBloc();

  @override
  void dispose() {
    // TODO: implement dispose
    counterBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Counter App"),
      ),
      body: StreamBuilder(
        initialData: 0,
        stream: counterBloc.stateStream,
        builder: (context, snapshot) {
          return Center(
            child: Text(
              "You have Pushed the Button this many times. \n${snapshot.data}",
              textAlign: TextAlign.center,
            ),
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "heroTag1",
            backgroundColor: Colors.teal,
            child: Icon(Icons.add),
            onPressed: () {
              counterBloc.eventSink.add(CounterAction.Increment);
            },
          ),
          FloatingActionButton(
            heroTag: "heroTag2",
            backgroundColor: Colors.teal,
            child: Icon(Icons.remove),
            onPressed: () {
              counterBloc.eventSink.add(CounterAction.Decrement);
            },
          ),
          FloatingActionButton(
            heroTag: "heroTag3",
            backgroundColor: Colors.teal,
            child: Icon(Icons.loop),
            onPressed: () {
              counterBloc.eventSink.add(CounterAction.Reset);
            },
          ),
        ],
      ),
    );
  }
}
