import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Вітаю ти на домашній сторінці !',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
