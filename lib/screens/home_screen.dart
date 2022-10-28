import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Вітаю!',
              style: TextStyle(fontSize: 25),
            ),
            Text(
              'OGO!',
              style: TextStyle(fontSize: 25),
            ),
            Text(
              'Ти на домашній сторінці !',
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
