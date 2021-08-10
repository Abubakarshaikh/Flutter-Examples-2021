import 'package:flutter_bloc/flutter_bloc.dart';

enum CounterAction2 {
  Increment,
  Decrement,
  Reset,
  Error,
}

class CounterBloc2 extends Bloc<CounterAction2, int> {
  CounterBloc2() : super(0);

  @override
  Stream<int> mapEventToState(CounterAction2 event) async* {
    switch (event) {
      case CounterAction2.Increment:
        yield state + 1;
        break;

      case CounterAction2.Decrement:
        yield state - 1;
        break;

      case CounterAction2.Reset:
        yield state * 0 + 0;
        break;
      case CounterAction2.Error:
        addError(Exception('unsupported event'));
    }
  }
} 