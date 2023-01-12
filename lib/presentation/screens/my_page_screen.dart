import 'package:flutter/material.dart';

import '../../global/theme/colors.dart';

class MyPageSceen extends StatefulWidget {
  const MyPageSceen({super.key});

  @override
  State<MyPageSceen> createState() => _MyPageSceenState();
}

class _MyPageSceenState extends State<MyPageSceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: SwithColors.grey212529,
        alignment: Alignment.center,
        child: Text('mypage screen'),
      ),
    );
  }
}
