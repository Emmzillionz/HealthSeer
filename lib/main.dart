import 'package:flutter/material.dart';
import 'package:health_seer/settings.dart';
import 'package:health_seer/splashscreen.dart';
import 'package:health_seer/test.dart';
import 'package:health_seer/wel_aboard.dart';
import 'package:health_seer/wel_screen.dart';
import 'account.dart';
import 'disease.dart';
import 'edit_profile.dart';
import 'home_chart.dart';
import 'navbar.dart';
import 'notification.dart';

void main() {
  runApp(const MyApp(),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HealthSeer',
      theme: ThemeData(
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}