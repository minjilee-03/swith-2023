import 'package:flutter/material.dart';
import 'package:swith2023/global/theme/colors.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: SwithColors.blue,
        alignment: Alignment.center,
        child: Text('card screen'),
      ),
    );
  }
}
