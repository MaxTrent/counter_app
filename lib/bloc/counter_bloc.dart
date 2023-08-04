import 'package:counter_app/bloc/counter_event.dart';
import 'package:counter_app/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBlocs extends Bloc<CounterEvents, CounterStates> {
  CounterBlocs() : super(InitialState()) {

    on<Increment>((event, emit) {
      emit(CounterStates(counter: state.counter + 1));
    });

    on<Decrement>((event, emit) {
      if (state.counter > 0) {
        emit(CounterStates(counter: state.counter - 1));
      }
    });

    on<Reset>((event, emit) {
      if (state.counter > 0) {
        emit(CounterStates(counter: 0));
      }
    });
  }
}
