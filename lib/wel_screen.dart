import 'package:flutter/material.dart';
import 'package:gif/gif.dart';
import 'package:health_seer/sign_in.dart';
import 'package:health_seer/wel_back.dart';
import 'create_acc.dart';
import 'interests_screen.dart';
// Use gif package

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
             children: [
            // Animated GIF
            Container(
              height: screenHeight * (300 / 640),

              child: Center(
                child: Gif(
                  image: const AssetImage('assets/images/health_blue.gif'),
                  autostart: Autostart.loop,
                  // Auto-start with loop
                  placeholder: (context) => const Text(
                    'Loading...',
                    style: TextStyle(color: Colors.white),
                  ),
                  width: screenWidth * (300 / 360),
                  height: screenHeight * (300 / 640),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: screenHeight * (35 / 640)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * (20 / 360)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Welcome to HealthSeer',
                    style: TextStyle(
                      color: const Color(0xFF000000),
                      fontFamily: 'PolySans',
                      fontSize: screenWidth * (28 / 360),
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.0,
                      height: 1.4,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: screenHeight * (10 / 640)),
                  Text(
                    'Learn to build a healthy lifestyle that still lets you enjoy your life',
                    style: TextStyle(
                      color: const Color(0xFF000000),
                      fontFamily: 'PolySans',
                      fontSize: screenWidth * (16 / 360),
                      letterSpacing: 0.0,
                      height: 1.4,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * (90 / 640)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * (20 / 360)),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to CreateAccountScreen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CreateAccountScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF316DEF),
                      minimumSize: Size(screenWidth * (0.8), 50),
                    ),
                    child: Text(
                      'Create account',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenWidth * (16 / 360),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * (10 / 640),),
                  TextButton(
                    onPressed: () {
                      // Navigate to SignInScreen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInScreen(),),
                      );
                    },
                    child: Text(
                      'Sign in instead',
                      style: TextStyle(
                        color: const Color(0xFF2196F3),
                        fontWeight: FontWeight.w700,
                        fontSize: screenWidth * (16 / 360),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
