import 'package:flutter/material.dart';
import 'package:optional_homework_1/screens/auth_screen.dart';
import 'package:optional_homework_1/screens/home_screen.dart';
import 'package:optional_homework_1/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) =>  const SplashScreen(),
        '/auth' : (context) => const AuthScreen(),
        '/home' : (context) => const HomeScreen(),
      },
    );
  }
}

