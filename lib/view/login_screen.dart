import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.pinkAccent,
              Colors.amber,
            ],
            begin: FractionalOffset(0, 0),
            end: FractionalOffset(1, 0),
            stops: [0, 1],
            tileMode: TileMode.clamp,
          ),
        ),
        child: ListView(
          children: [
            Image.asset("images/logo.png"),
            const Text(
              "Hello Friend,\n Welcome Back",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                letterSpacing: 3,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
