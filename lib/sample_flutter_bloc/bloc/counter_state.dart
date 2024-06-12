part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

class CounterInitial extends CounterState {}

class CounterSuccess extends CounterState {
  final int counter;

  CounterSuccess(this.counter);
}

final class CounterFailure extends CounterState {
  final String message;

  CounterFailure(this.message);
}

final class CounterLoading extends CounterState {}
