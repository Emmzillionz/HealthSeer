import 'package:flutter/material.dart';
import 'interests_screen.dart';


class VerificationScreen extends StatefulWidget {

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(right: 20,bottom: 0,top: 0,left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            const Text(
              'Verify your email',
              style: TextStyle(
                color: Color(0xFF000000),
                fontSize: 28,
                fontWeight: FontWeight.w600,
                fontFamily: 'PonySans',
                height: 1.4
              ),
            ),
            const SizedBox(height: 10),
            // Subtext with dynamic email
             const Wrap(
                clipBehavior: Clip.none,
                crossAxisAlignment: WrapCrossAlignment.start,
                children: [
                  Text(
                    'Enter below the verification code we sent to ',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: Color(0xFF000000),
                      fontFamily: 'PolySans'
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.start,
                    'okedijiemmanuel2020@gmail.com',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'PolySans',
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  )
                ]),
            const SizedBox(height: 30),
            const Text(
              'Verification code',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Color(0xFF000000),
                fontFamily: 'PolySans',
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 8,
            ),

            // OTP Input Fields

            TextFormField(
              style: const TextStyle(),
              textAlign: TextAlign.start,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Verification code',
                hintStyle:
                    const TextStyle(decorationStyle: TextDecorationStyle.solid,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(height: 8),

            // Resend Code
            TextButton(
              onPressed: () {
                // TODO: Implement resend logic
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('New code sent!'),
                  ),
                );
              },
              child: const Text(
                "Resend code",
                style: TextStyle(
                  fontFamily: 'PolySans',
                  color: Color(0xFF000000),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 13),

            // Continue Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF316DEF),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {
                    {
                      // Verification logic here
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const InterestsScreen(),
                        ),
                      );
                    }
                  },
                  child: const Text(
                    'Verify email',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

