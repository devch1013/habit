import 'package:flutter/material.dart';
import '../widget/home_myhabit_widget.dart';
import 'dart:convert';

class HomeMyScreen extends StatelessWidget {
  const HomeMyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List testList2 = [
      1,
      2,
      3,
      4,
      5,
    ];

    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(onPressed: () {}, child: Text('click')),
          ...testList2.map((i) => HomeMyHabitWidget()).toList()
        ],
      ),
    );
  }
}
