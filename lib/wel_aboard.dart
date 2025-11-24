import 'package:flutter/material.dart';

import 'create_acc.dart';
import 'home_chart.dart';
import 'navbar.dart';

class WelcomeAboard extends StatefulWidget {
  const WelcomeAboard({super.key});

  get lastName => CreateAccountScreen;

  @override
  State<WelcomeAboard> createState() => WelcomeAboardState();
}

class WelcomeAboardState extends State<WelcomeAboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF316DEF),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 60, right: 20),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                'Welcome aboard, Emmanuel!',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'PolySans',
                    color: Colors.white70,
                    fontSize: 24),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                textAlign: TextAlign.center,
                "You are in the right place. Let's run your first ever prediction on HealthSeer.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white60,
                  fontFamily: 'PolySans',
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 510,
              ),
              SafeArea(
                bottom: true,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                      width: 350,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          shape: const StadiumBorder(),
                        ),
                        onPressed: () {
                          {
                            // Verification logic here
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MainScreen(),
                              ),
                            );
                          }
                        },
                        child: const Text(
                          "Let's go",
                          style: TextStyle(
                            color: Color(0xFF316DEF),
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            fontFamily: 'PolySans',
                          ),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
