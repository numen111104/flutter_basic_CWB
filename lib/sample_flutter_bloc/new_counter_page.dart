import 'package:bloc_dasat/sample_flutter_bloc/widgets/button_widget.dart';
import 'package:bloc_dasat/sample_flutter_bloc/widgets/result_widget.dart';
import 'package:flutter/material.dart';

class NewCounterPage extends StatefulWidget {
  const NewCounterPage({super.key});

  @override
  State<NewCounterPage> createState() => _NewCounterPageState();
}

class _NewCounterPageState extends State<NewCounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text("Counter Page"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue.shade300,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:'),
            SizedBox(height: 25),
            ResultWidget(),
            SizedBox(height: 25),
            ButtonWidget(),
          ],
        ),
      ),
    );
  }
}
