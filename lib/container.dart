import 'package:counter_app/colors.dart';
import 'package:flutter/material.dart';

class CounterButton extends StatefulWidget {
  const CounterButton({super.key});

  @override
  State<CounterButton> createState() => _CounterButtonState();
}

class _CounterButtonState extends State<CounterButton> {
  int counter = 0;

  void increase() {
    setState(() {
      counter++;
    });
  }

  void decrease() {
    setState(() {
      counter--;
    });
  }

  void reset() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              backgroundColor: red,
              minimumSize: Size(200, 60),
            ),
            onPressed: increase,
            child: Text(
              "Increase",
              style: TextStyle(color: white),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 60,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(20),
            ),
            child:
                Center(child: Text('$counter', style: TextStyle(fontSize: 24))),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              backgroundColor: blue,
              minimumSize: Size(200, 60),
            ),
            onPressed: decrease,
            child: Text(
              "Decrease",
              style: TextStyle(color: white),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              minimumSize: Size(200, 60),
              backgroundColor: red,
            ),
            onPressed: reset,
            child: Text(
              "Reset",
              style: TextStyle(color: white),
            ),
          ),
        ],
      ),
    );
  }
}
