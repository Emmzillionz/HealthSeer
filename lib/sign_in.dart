import 'package:flutter/material.dart';
import 'home_chart.dart';
import 'navbar.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: 
        const Color(0xFF316DEF),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 60, right: 20),
          child: Container(
            child: Column(
              children: [
                const SizedBox(height: 20),
                const Text(
                  "You're good to go!",
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
                  "You are in the right place. Let's get started and run your first ever prediction on HealthSeer.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white60,
                    fontFamily: 'PolySans',
                    fontWeight: FontWeight.w400,
                  ),
                ),

                SizedBox(
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
                        "Sign in",
                        style: TextStyle(
                          color: Color(0xFF316DEF),
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          fontFamily: 'PolySans',
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
