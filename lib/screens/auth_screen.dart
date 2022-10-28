import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();
  String? errorText = null;

   _auth() {
    final login = _loginController.text;
    final password = _passwordController.text;

    if (login == 'admin' && password == '123456') {
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      errorText = 'Вказаний логін чи пароль не вірні';
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _loginController,
              decoration:  InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'Your Login',
                errorText: errorText,
              ),
            ),
            const SizedBox(height: 25),
            TextFormField(
              controller: _passwordController,
              decoration:  InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'Your Password',
                errorText: errorText,
              ),
            ),
            const SizedBox(height: 35),
            ElevatedButton(
              onPressed: _auth,
              child: const Text('Далі'),
            ),
          ],
        ),
      ),
    );
  }
}
