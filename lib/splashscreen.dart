import 'package:flutter/material.dart';
import 'package:health_seer/test.dart';
import 'package:health_seer/wel_screen.dart';

import 'account.dart';
import 'home_chart.dart';
import 'interests_screen.dart'; // We'll create this next

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to HomeScreen after 2 seconds
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  const WelcomeScreen(),),
      );
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF316DEF), // Change as needed
      body:Center(
        child: Image.asset(
          color: Colors.white,
          'assets/icons/logo.png', // Path to your PNG icon
          width: 208, // Adjust size as needed
          height: 200,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
