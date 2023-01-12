import 'package:flutter/material.dart';

import '../../global/theme/colors.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: SwithColors.grey212529,
        alignment: Alignment.center,
        child: Text('calendar screen'),
      ),
    );
  }
}
