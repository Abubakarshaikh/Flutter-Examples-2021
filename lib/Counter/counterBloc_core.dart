import 'dart:async';

enum CounterAction {
  Increment,
  Decrement,
  Reset,
}

class CounterBloc {
  int _counter = 0;

  final _stateStreamController = StreamController<int>();
  StreamSink<int> get _stateSink => _stateStreamController.sink;
  Stream<int> get stateStream => _stateStreamController.stream;

  final _eventStreamController = StreamController<CounterAction>();
  StreamSink<CounterAction> get eventSink => _eventStreamController.sink;
  Stream<CounterAction> get _eventStream => _eventStreamController.stream;

  CounterBloc() {
    _eventStream.listen((event) {
      if (event == CounterAction.Increment) {
        _counter++;
      } else if (event == CounterAction.Decrement) {
        _counter--;
      } else if (event == CounterAction.Reset) {
        _counter = 0;
      }
      _stateSink.add(_counter);
    });
  }

  void dispose() {
    _stateStreamController.close();
    _eventStreamController.close();
  }
}
