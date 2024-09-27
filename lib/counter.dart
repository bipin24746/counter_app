import 'package:counter_app/colors.dart';
import 'package:counter_app/container.dart';
import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Counter App",
          style: TextStyle(
            color: white,
          ),
        ),
        backgroundColor: blue,
      ),
      body: CounterButton(),
    );
  }
}
