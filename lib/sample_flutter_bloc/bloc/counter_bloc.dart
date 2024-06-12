import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
part 'counter_event.dart';
part 'counter_state.dart';

class NewCounterBlade extends Bloc<CounterEvent, CounterState> {
  int value = 0;
  NewCounterBlade() : super(CounterSuccess(0)) {
    on<IncrementEvent>((event, emit) async {
      emit(CounterLoading());
      await Future.delayed(const Duration(seconds: 1));
      value++;
      emit(CounterSuccess(value));
    });

    on<DecrementEvent>((event, emit) {
      emit(CounterLoading());
      value--;
      if (value <= 0) {
        value = 0;
        emit(CounterFailure("value can't be negative"));
      }
      emit(CounterSuccess(value));
    });
  }
}
