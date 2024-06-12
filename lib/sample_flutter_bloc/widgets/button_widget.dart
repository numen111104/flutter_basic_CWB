import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_dasat/sample_flutter_bloc/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            context.read<NewCounterBlade>().add(IncrementEvent());
          },
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(
              const Color.fromARGB(255, 255, 198, 198),
            ),
          ),
          child: const Icon(
            Icons.add,
            color: Colors.lightBlue,
          ),
        ),
        const SizedBox(width: 25),
        ElevatedButton(
          onPressed: () {
            context.read<NewCounterBlade>().add(DecrementEvent());
          },
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(
              const Color.fromARGB(255, 168, 224, 246),
            ),
          ),
          child: const Icon(
            Icons.remove,
            color: Colors.redAccent,
          ),
        ),
      ],
    );
  }
}
