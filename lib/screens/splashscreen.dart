import 'dart:async';
import 'package:flutter/material.dart';
import './loginscreen.dart';
import '../helper/navigation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
        () => nextScreenReplace(context, const LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
          child: Column(
        children: [
          const SizedBox(height: 10),
          const Image(image: AssetImage('logo.png'), height: 400, width: 360),
          const SizedBox(height: 40),
          const Text('My Step towards Clean India',
              style: TextStyle(
                  color: Color(0xFF15AC51),
                  fontSize: 16,
                  decoration: TextDecoration.none))
        ],
      )),
    );
  }
}
