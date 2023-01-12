import 'package:flutter/material.dart';

import 'package:swith2023/presentation/screens/screens.dart';

import '../widgets/common/bottom_nav_bar.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {});
  }

  int _selectedIndex = 0;

  final List<Widget> _body = <Widget>[
    const CardScreen(),
    const CalendarScreen(),
    const TimerScreen(),
    const MyPageSceen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body[_selectedIndex],
      bottomNavigationBar: BottomNavBar(
        onTap: (changedIdx) {
          setState(() => _selectedIndex = changedIdx);
        },
      ),
    );
  }
}
