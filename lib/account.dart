import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_seer/settings.dart';
import 'disease.dart';
import 'edit_profile.dart';
import 'notification.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Image as the background
            ClipPath(
              clipper: CustomClipPath(),
              child: Container(
                constraints: BoxConstraints.tight(
                  const Size.fromHeight(210),
                ),
                margin: const EdgeInsets.only(),
                height: 210,
                // Height of the image
                width: screenWidth * 1.0,
                decoration: const BoxDecoration(
                  color: Color(0xFF316DEF),
                ),
              ),
            ),

            Transform.translate(
              offset: const Offset(0, -210),
              child: ClipPath(
                clipper: CustomClipPath(),
                child: Container(
                  height: 170,
                  width: screenWidth * 1.0,
                  decoration: const BoxDecoration(
                    color: Color(0xFF588AF6),
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -380),
              child: ClipPath(
                clipper: CustomClipPath(),
                child: Container(
                  constraints: const BoxConstraints.tightFor(),
                  height: 130,
                  width: screenWidth * 1.0,
                  decoration: const BoxDecoration(
                    color: Color(0xFF6F9DFF),
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -530),
              child: ClipPath(
                clipper: CustomClipPath(),
                child: Container(
                  height: 105,
                  width: screenWidth * 1.0,
                  decoration: const BoxDecoration(
                    color: Color(0xFF8DB1FF),
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -565),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SettingsScreen(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.settings_outlined,
                      size: 24,
                      color: Colors.white,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      'Account',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'PolySans',
                        fontSize: 16,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NotificationScreen(),
                        ),
                      );
                    },
                    icon: SvgPicture.asset(
                      'assets/icons/bell.svg',
                    ),
                  ),
                ],
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -520),
              child: const CircleAvatar(
                radius: 40,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage(
                    'assets/images/profile.png',
                  ),
                  radius: 38,
                ),
              ),
            ),

            // Container overlapping the image
            Transform.translate(
              offset: const Offset(0, -515),
              child: const Text(
                'Joshua Okediji',
                style: TextStyle(
                  fontFamily: 'PolySans',
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -510),
              child: const Text(
                'joshuaokediji@gmail.com',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w200,
                  fontFamily: 'PolySans',
                ),
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -490),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        alignment: Alignment.center,
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                        backgroundColor: MaterialStatePropertyAll(
                          Color(0xFF000000),
                        ),
                        fixedSize: MaterialStatePropertyAll(
                          Size(90, 10),
                        ),
                        padding: MaterialStatePropertyAll(
                          EdgeInsets.all(2),
                        ),
                      ),
                      child: const Text(
                        'Diabetes',
                        style: TextStyle(
                          fontFamily: 'PolySans',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DiseaseForm(),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        alignment: Alignment.center,
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                        backgroundColor: MaterialStatePropertyAll(
                          Colors.black,
                        ),
                        fixedSize: MaterialStatePropertyAll(
                          Size(100, 10),
                        ),
                        padding: MaterialStatePropertyAll(
                          EdgeInsets.all(2),
                        ),
                      ),
                      child: const Text(
                        'Tuberculosis',
                        style: TextStyle(
                          fontFamily: 'PolySans',
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        alignment: Alignment.center,
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            side: BorderSide(
                              color: Color(0xFF78818D),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                        ),
                        backgroundColor: MaterialStatePropertyAll(
                          Color(0xFFE6EDF2),
                        ),
                        fixedSize: MaterialStatePropertyAll(
                          Size(80, 10),
                        ),
                        padding: MaterialStatePropertyAll(
                          EdgeInsets.all(2),
                        ),
                      ),
                      child: const Text(
                        'Typhoid',
                        style: TextStyle(
                          fontFamily: 'PolySans',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xFF000000),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),

            Transform.translate(
              offset: const Offset(0, -500),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        alignment: Alignment.center,
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            side: BorderSide(
                              color: Color(0xFF78818D),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                        backgroundColor: MaterialStatePropertyAll(
                          Color(0xFFE6EDF2),
                        ),
                        fixedSize: MaterialStatePropertyAll(
                          Size(70, 10),
                        ),
                        padding: MaterialStatePropertyAll(
                          EdgeInsets.all(2),
                        ),
                      ),
                      child: const Text(
                        'Cancer',
                        style: TextStyle(
                          fontFamily: 'PolySans',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xFF000000),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        alignment: Alignment.center,
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            side:
                                BorderSide(color: Color(0xFF78818D), width: 2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                        ),
                        backgroundColor: MaterialStatePropertyAll(
                          Color(0xFFE6EDF2),
                        ),
                        fixedSize: MaterialStatePropertyAll(
                          Size(90, 10),
                        ),
                        padding: MaterialStatePropertyAll(
                          EdgeInsets.all(2),
                        ),
                      ),
                      child: const Text(
                        'Leukemia',
                        style: TextStyle(
                          fontFamily: 'PolySans',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xFF000000),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -450),
              child: Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, MaterialPageRoute(builder: (context) => const EditProfile(),) as String);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            height: 28,
                            width: 28,
                            'assets/icons/edit.svg',
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Edit Profile',
                            style: TextStyle(
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'PolySans',
                            ),
                          ),
                        ],
                      ),
                      const Icon(
                        color: Colors.black,
                        Icons.arrow_forward_ios,
                        size: 20,
                        weight: 12,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -410),
              child: const Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(
                          size: 24,
                          Icons.sticky_note_2_outlined,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Privacy Policy',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'PolySans'),
                        ),
                      ],
                    ),
                    Icon(
                      color: Colors.black,
                      Icons.arrow_forward_ios,
                      size: 20,
                      weight: 12,
                    ),
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -370),
              child: const Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(
                          size: 24,
                          Icons.headset_mic_outlined,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Help & Support',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'PolySans'),
                        ),
                      ],
                    ),
                    Icon(
                      color: Colors.black,
                      Icons.arrow_forward_ios,
                      size: 20,
                      weight: 12,
                    ),
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -330),
              child: const Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(
                          size: 24,
                          Icons.logout_outlined,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Log out',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'PolySans'),
                        ),
                      ],
                    ),
                    Icon(
                      color: Colors.black,
                      Icons.arrow_forward_ios,
                      size: 20,
                      weight: 12,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 50,
    );
    path.lineTo(w, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<dynamic> oldClipper) {
    return false;
  }
}

Widget _buildTextContainer() {
  return Container(
    width: 350,
    height: 154,
    margin: const EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: const Color(0xFFFFFFFF),
      shape: BoxShape.rectangle,
      border: Border.all(
        color: Colors.black38,
        width: 1,
      ),
      boxShadow: const [
        BoxShadow(
          color: Color(0xFFE4EAF2), // Matches #E4EAF233
          offset: Offset(0, 4), // 0px horizontal, 4px vertical
          blurRadius: 4, // 4px blur
          spreadRadius: 0,
        ),
      ],
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    child: Stack(
      children: [
        const Positioned(
          top: 15,
          left: 15,
          child: Text(
            'Hemoglobin A1c',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'PolySans',
              fontSize: 16,
              color: Color(0xFF000000),
            ),
          ),
        ),
        const Positioned(
          top: 42,
          left: 15,
          child: Text(
            'Updated 40 days ago',
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF444444),
              fontFamily: 'PolySans',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const Positioned(
          top: 73,
          left: 15,
          child: Text(
            '3.75',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
              fontFamily: 'PolySans',
              color: Color(0xFF5485ED),
            ),
          ),
        ),
        const Positioned(
          left: 15,
          top: 120,
          child: Text(
            'of 4.52 avg.',
            style: TextStyle(
              color: Color(0xFF7CA3F6),
              fontWeight: FontWeight.w400,
              fontFamily: 'PolySans',
            ),
          ),
        ),
        const Positioned(
          top: 15,
          right: 15,
          child: Icon(
            fill: 0.8,
            grade: 20,
            size: 16,
            weight: 50,
            color: Colors.black,
            Icons.arrow_forward_ios_sharp,
          ),
        ),
        Positioned(
          left: 144,
          top: 77,
          child: Image.asset('assets/icons/Graph.png'),
        )
      ],
    ),
  );
}
