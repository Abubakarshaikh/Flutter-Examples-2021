import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterbootcamp/Counter/bloc/counter_event.dart';
import 'package:flutterbootcamp/Counter/bloc/counter_state.dart';
import 'bloc/counter_bloc.dart';

class Counter extends StatelessWidget {
  static const routeKey = "Counter";
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        home: DemoPage(),
      ),
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  // int counter = 0;
  // final counterBloc = CounterBloc();

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   counterBloc.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    final countBloc = context.read<CounterBloc>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Counter App"),
      ),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (contex, state) {
            return Text(
              "You have Pushed the Button this many times. \n${state.count}",
              textAlign: TextAlign.center,
            );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "heroTag1",
            backgroundColor: Colors.teal,
            child: Icon(Icons.add),
            onPressed: () {
              countBloc.add(const Increment());
            },
          ),
          FloatingActionButton(
            heroTag: "heroTag2",
            backgroundColor: Colors.teal,
            child: Icon(Icons.remove),
            onPressed: () {
              countBloc.add(const Decrement());
            },
          ),
          FloatingActionButton(
            heroTag: "heroTag3",
            backgroundColor: Colors.teal,
            child: Icon(Icons.loop),
            onPressed: () {
              countBloc.add(const Reset());
            },
          ),
        ],
      ),
    );
  }
}

class DemoPage extends StatelessWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<CounterBloc, CounterState>(
      listener: (context, state) {
        Flushbar(
          title: "Hey Ninja",
          message: "counter bloc",
          duration: Duration(seconds: 3),
        )..show(context);
      },
      child: CounterApp(),
    );
  }
}
