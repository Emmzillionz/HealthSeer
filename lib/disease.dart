import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DiseaseForm extends StatefulWidget {
  const DiseaseForm({super.key});

  @override
  State<DiseaseForm> createState() => _DiseaseFormState();
}

class _DiseaseFormState extends State<DiseaseForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(right: 13, left: 13),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Diabetes prediction',
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
                'Fill in the required health data for diabetes Prediction.',
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
                'Blood pressure',
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
                decoration: InputDecoration(
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'PolySans',
                    fontSize: 16,
                  ),
                  hintText: 'Blood pressure',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Body Mass Index',
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
                decoration: InputDecoration(
                  hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontFamily: 'PolySans',
                      letterSpacing: 0.3,
                      height: 1.4),
                  hintText: 'Body Mass Index',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              const Text(
                'Cholesterol Levels',
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
                decoration: InputDecoration(
                  hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontFamily: 'PolySans',
                      letterSpacing: 0.3,
                      height: 1.4),
                  hintText: 'Cholesterol Levels',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Hemoglobin A1c',
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
                decoration: InputDecoration(
                  hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontFamily: 'PolySans',
                      letterSpacing: 0.3,
                      height: 1.4),
                  hintText: 'Hemoglobin A1c',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Weight (Kg)',
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
                decoration: InputDecoration(
                  hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontFamily: 'PolySans',
                      letterSpacing: 0.3,
                      height: 1.4),
                  hintText: 'Weight (Kg)',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
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
                    'Continue',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
