// import 'package:bloc_dasat/counter_bloc.dart';
// import 'package:flutter/material.dart';

// class CounterPage extends StatefulWidget {
//   const CounterPage({super.key});

//   @override
//   State<CounterPage> createState() => _CounterPageState();
// }

// class _CounterPageState extends State<CounterPage> {
//   CounterBloc counterBloc = CounterBloc();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 1,
//         title: const Text("Counter Page"),
//         centerTitle: true,
//         backgroundColor: Colors.lightBlue.shade300,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text('You have pushed the button this many times:'),
//             StreamBuilder<int>(
//               stream: counterBloc.stateStream,
//               initialData: 0,
//               builder: (context, snapshot) => Text(
//                 '${snapshot.data}',
//                 style: Theme.of(context).textTheme.headlineMedium,
//               ),
//             ),
//             const SizedBox(height: 25),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                     onPressed: () {
//                       counterBloc.eventSink.add(IncrementEvent());
//                     },
//                     child: const Icon(Icons.add)),
//                 const SizedBox(width: 25),
//                 ElevatedButton(
//                     onPressed: () {
//                       counterBloc.eventSink.add(DecrementEvent());
//                     },
//                     child: const Icon(Icons.remove)),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
