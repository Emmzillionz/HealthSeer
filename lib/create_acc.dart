import 'package:flutter/material.dart';
import 'package:health_seer/privacy.dart';
import 'package:health_seer/terms_cond.dart';
import 'package:health_seer/verification_createacc.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Heading
              const Text(
                'Create your account',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF000000),
                    fontFamily: 'PolySans',
                    letterSpacing: 0.0,
                    height: 1.4),
              ),
              const SizedBox(height: 10),
              // Subtext
              const Text(
                'Create an account to access various diseases prediction, and health recommendations.',
                style: TextStyle(
                  fontFamily: 'PolySans',
                  fontSize: 16,
                  letterSpacing: 0,
                  height: 1.4,
                  color: Color(0xFF444444),
                ),
              ),
              const SizedBox(height: 30),
              // First Name
              const Text(
                'First name',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF000000),
                  fontFamily: 'PolySans',
                  letterSpacing: 0.3,
                  height: 1.4,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 5),
              TextFormField(
                controller: _firstNameController,
                decoration: InputDecoration(
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'PolySans',
                    fontSize: 16,
                  ),
                  hintText: 'First name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Last Name
              const Text(
                'Last name',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'PolySans',
                  letterSpacing: 0.3,
                  height: 1.4,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 5),
              TextFormField(
                controller: _lastNameController,
                decoration: InputDecoration(
                  hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontFamily: 'PolySans',
                      letterSpacing: 0.3,
                      height: 1.4),
                  hintText: 'Last name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              // Email
              const Text(
                'Email',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF000000),
                  fontFamily: 'PolySans',
                  letterSpacing: 0.3,
                  height: 1.4,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 5),
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Email address',
                  hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontFamily: 'PolySans',
                      letterSpacing: 0.3,
                      height: 1.4),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Password
              const Text(
                'Password',
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontFamily: 'PolySans',
                  fontSize: 16,
                  letterSpacing: 0.3,
                  height: 1.4,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 5),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.visibility),
                  ),
                  hintText: 'Password (8+ characters)',
                  hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontFamily: 'PolySans',
                      letterSpacing: 0.3,
                      height: 1.4),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                clipBehavior: Clip.hardEdge,
                children: [
                  const Text(
                    'By continuing, you agree to HealthSeer\'s ',
                    style: TextStyle(
                      fontFamily: 'PolySans',
                      fontSize: 16,
                      letterSpacing: 0,
                      height: 1.4,
                      color: Color(0xFF444444),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const TermsAndConditionsScreen(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.padded,
                    ),
                    child: const Text(
                      'Terms & Conditions',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const Text(' and ',
                    style: TextStyle(
                      fontFamily: 'PolySans',
                      fontSize: 16,
                      letterSpacing: 0,
                      height: 1.4,
                      color: Color(0xFF444444),
                    ),),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PrivacyPolicyScreen(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.padded,
                    ),
                    child: const Text(
                      'Privacy Policy',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              // Create Account Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF316DEF),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Create Account',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
