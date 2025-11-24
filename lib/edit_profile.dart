import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(right: 13, left: 13),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              const SizedBox(
                height: 20,
              ),
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
                  hintText: 'joshuaokediji@gmail.com',
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
              const Text(
                'Date of birth',
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
              GestureDetector(
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime(1990, 3, 2),
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                  );
                  if (pickedDate != null) {
                    setState(() {
                      _dateController.text =
                          "${pickedDate.month} ${pickedDate.day}, ${pickedDate.year}";
                    });
                  }
                },
                child: AbsorbPointer(
                  child: TextFormField(
                    controller: _dateController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      suffixIcon: const Icon(Icons.calendar_month_outlined),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 10.0),
                    ),
                    readOnly: true,
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
                  suffixIcon: GestureDetector(
                    child: const Text('Edit'),
                  ),
                  hintText: '*********',
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
                    'Update profile',
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
