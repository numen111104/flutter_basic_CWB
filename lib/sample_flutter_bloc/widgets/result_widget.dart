import 'package:bloc_dasat/sample_flutter_bloc/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultWidget extends StatefulWidget {
  const ResultWidget({super.key});

  @override
  State<ResultWidget> createState() => _ResultWidgetState();
}

class _ResultWidgetState extends State<ResultWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewCounterBlade, CounterState>(
      builder: (context, state) {
        if (state is CounterSuccess) {
          return Text('${state.counter}',
              style: Theme.of(context).textTheme.headlineMedium);
        }

        if (state is CounterFailure) {
          return Text(state.message,
              style: Theme.of(context).textTheme.headlineMedium);
        }

        if (state is CounterLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        return Text('0', style: Theme.of(context).textTheme.headlineMedium);
      },
    );
  }
}
