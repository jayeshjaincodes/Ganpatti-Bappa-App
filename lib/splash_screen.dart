import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ganpatibapa/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

    void initState() {
    super.initState();

    Timer(Duration(seconds: 2, milliseconds: 500), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => HomePage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          transitionDuration: Duration(seconds: 3),
        ),
      );
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: const Color(0xff060720),
      body: Center(child: Hero(tag: "bappa",child:Padding(padding: EdgeInsets.only(left: 20),child: Image.asset('assets/Bappa-removebg-preview.png')))),
    );
  }
}