// import 'dart:async';

// abstract class CounterEvent {}

// class IncrementEvent extends CounterEvent {}

// class DecrementEvent extends CounterEvent {}

// class CounterBloc {
//   int _value = 0;

//   //event controller sink stream dalam bloc
//   final StreamController<CounterEvent> _eventController =
//       StreamController<CounterEvent>();
//   StreamSink<CounterEvent> get eventSink => _eventController.sink;
//   Stream<CounterEvent> get eventStream => _eventController.stream;

//   //event controller sink stream untuk mengubah state dalam UI
//   final StreamController<int> _stateController = StreamController<int>();
//   StreamSink<int> get _stateSink => _stateController.sink;
//   Stream<int> get stateStream => _stateController.stream;

//   void mapEventToState(CounterEvent event) {
//     if (event is IncrementEvent) {
//       _value++;
//     } else if (event is DecrementEvent) {
//       _value--;
//       if (_value <= 0) {
//         _value = 0;
//       }
//     }
//     _stateSink.add(_value);
//   }

//   CounterBloc() {
//     eventStream.listen((event) {
//       mapEventToState(event);
//     });
//   }

//   void dispose() {
//     _eventController.close();
//     _stateController.close();
//   }
// }
