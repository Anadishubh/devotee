import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
          () {
        Get.offAndToNamed('/login');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 250,
          height: 100,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/logo.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}