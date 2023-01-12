import 'package:flutter/material.dart';

import '../../global/theme/colors.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({super.key});

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: SwithColors.greyF4F5F7,
        alignment: Alignment.center,
        child: Text('timer screen'),
      ),
    );
  }
}
