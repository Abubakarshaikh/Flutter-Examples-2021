import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterbootcamp/Counter/bloc/counter_event.dart';
import 'package:flutterbootcamp/Counter/bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(0));

  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is Increment) {
      final newCount = state.count + 1;
      yield CounterState(newCount);
    } else if (event is Decrement) {
      final newCount = state.count - 1;
      yield CounterState(newCount);
    } else if (event is Reset) {
      final newCount = state.count * 0 + 0;
      yield CounterState(newCount);
    }
  }
}
