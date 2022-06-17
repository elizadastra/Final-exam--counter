import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:math';

class CounterCubite extends Cubit<CounterState> {
  CounterCubite() : super(InitialCounterState(counter: 0));

  increment() {
    emit(InitialCounterState(counter: state.counter + 2));
  }

  decrement() {
    emit(InitialCounterState(counter: max(state.counter - 1, 0)));
  }
}

abstract class CounterState {
  final int counter;

  CounterState({required this.counter});
}

class InitialCounterState extends CounterState {
  final int counter;

  InitialCounterState({required this.counter}) : super(counter: counter);
}
