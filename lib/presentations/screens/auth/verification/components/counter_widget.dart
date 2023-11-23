import 'dart:async';

import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  CounterWidgetState createState() => CounterWidgetState();
}

class CounterWidgetState extends State<CounterWidget> {
  late Timer _timer;
  DateTime targetTime = DateTime.now().add(const Duration(minutes: 5));

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      // Calculate the remaining time dynamically
      Duration remainingTime = targetTime.difference(DateTime.now());

      // Update the UI with the remaining time
      setState(() {});

      // Check if the target time has passed
      if (remainingTime.isNegative) {
        _timer.cancel(); // Stop the timer when the target time is reached
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Calculate the remaining time dynamically
    Duration remainingTime = targetTime.difference(DateTime.now());

    // Format the remaining time as HH:mm:ss
    String formattedTime =
        // '${remainingTime.inHours.remainder(24).toString().padLeft(2, '0')}:'
        '${(remainingTime.inMinutes.remainder(60)).toString().padLeft(2, '0')}:'
        '${(remainingTime.inSeconds.remainder(60)).toString().padLeft(2, '0')}';

    return Text(
      formattedTime,
      textAlign: TextAlign.start,
      style: const TextStyle(
        color: Color(0xFF7E3DFF),
        fontSize: 18,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w600,
        height: 0,
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }
}
