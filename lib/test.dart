import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 1200,
          color: Colors.white,
          child: Stack(
            children: [
              // Image as the background
              ClipPath(
                clipper: CustomClipPath(),
                child: Container(
                  margin: const EdgeInsets.only(),
                  height: 210,
                  width: 1200, // Height of the image
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
              ),
              // Container overlapping the image

              Positioned(
                top: 60,
                child: ClipPath(
                  clipper: CustomClipPath(),
                  child: Container(
                    height: 110,
                    width: 400,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 10,
                child: ClipPath(
                  clipper: CustomClipPath(),
                  child: Container(
                    height: 110,
                    width: 400,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 30,
                          left: 8,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.settings_outlined,
                              size: 24,
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 160,
                          top: 50,
                          child: Text(
                            'Account',
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontFamily: 'PolySans',
                                fontSize: 18,
                                color: Colors.black),
                          ),
                        ),
                        Positioned(
                          top: 30,
                          right: 8,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.notifications_none_outlined,
                              size: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                child: ClipPath(
                  clipper: CustomClipPath(),
                  child: Container(
                    height: 80,
                    width: 400,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
              const Positioned(
                top: 146,
                left: 150,
                child: CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 42,
                    backgroundColor: Colors.green,
                  ),
                ),
              ),
              const Positioned(
                top: 250,
                left: 120,
                child: Text(
                  'Joshua Okediji',
                  style: TextStyle(
                    fontFamily: 'PolySans',
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
              ),
              const Positioned(
                top: 285,
                left: 110,
                child: Text(
                  'joshuaokediji@gmail.com',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w200,
                    fontFamily: 'PolySans',
                  ),
                ),
              ),
              Positioned(
                top: 330,
                left: 50,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    alignment: Alignment.center,
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                    ),
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.black,
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
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Positioned(
                top: 330,
                left: 150,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    alignment: Alignment.center,
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
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
              Positioned(
                top: 330,
                right: 50,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    alignment: Alignment.center,
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black12, width: 2),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                    ),
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.white60,
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
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Positioned(
                top: 380,
                left: 100,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    alignment: Alignment.center,
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black12, width: 2),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                    ),
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.white60,
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
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Positioned(
                top: 380,
                right: 120,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    alignment: Alignment.center,
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black12, width: 2),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                    ),
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.white60,
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
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              Positioned(
                top: 470,
                child: Container(
                  height: 70,
                  width: 700,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),
                  child: const Stack(
                    children: [
                      Positioned(
                        top: 8,
                        left: 8,
                        child: Icon(
                          size: 24,
                          Icons.edit_calendar_outlined,
                        ),
                      ),
                      Positioned(
                        left: 50,
                        top: 8,
                        child: Text(
                          'Edit Profile',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'PolySans'),
                        ),
                      ),
                      Positioned(
                        top: 8,
                        left: 350,
                        child: Icon(
                          color: Colors.black,
                          Icons.arrow_forward_ios,
                          size: 24,
                          weight: 12,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 540,
                child: Container(
                  color: Colors.black,
                  width: 700,
                  height: 1,
                ),
              ),
              Positioned(
                top: 541,
                child: Container(
                  height: 70,
                  width: 700,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),
                  child: const Stack(
                    children: [
                      Positioned(
                        top: 8,
                        left: 8,
                        child: Icon(
                          size: 24,
                          Icons.sticky_note_2_outlined,
                        ),
                      ),
                      Positioned(
                        left: 50,
                        top: 8,
                        child: Text(
                          'Privacy Policy',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'PolySans'),
                        ),
                      ),
                      Positioned(
                        top: 8,
                        left: 350,
                        child: Icon(
                          color: Colors.black,
                          Icons.arrow_forward_ios,
                          size: 24,
                          weight: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 598,
                child: Container(
                  color: Colors.black,
                  width: 700,
                  height: 1,
                ),
              ),
              Positioned(
                top: 610,
                child: Container(
                  height: 70,
                  width: 700,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),
                  child: const Stack(
                    children: [
                      Positioned(
                        top: 8,
                        left: 8,
                        child: Icon(
                          size: 24,
                          Icons.headset_mic_outlined,
                        ),
                      ),
                      Positioned(
                        left: 50,
                        top: 8,
                        child: Text(
                          'Help & Support',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'PolySans'),
                        ),
                      ),
                      Positioned(
                        top: 8,
                        left: 350,
                        child: Icon(
                          color: Colors.black,
                          Icons.arrow_forward_ios,
                          size: 24,
                          weight: 12,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 680,
                child: Container(
                  color: Colors.black,
                  width: 700,
                  height: 1,
                ),
              ),
              Positioned(
                top: 681,
                child: Container(
                  height: 70,
                  width: 700,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),
                  child: const Stack(
                    children: [
                      Positioned(
                        top: 8,
                        left: 8,
                        child: Icon(
                          size: 24,
                          Icons.logout_outlined,
                        ),
                      ),
                      Positioned(
                        left: 50,
                        top: 8,
                        child: Text(
                          'Log out',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'PolySans'),
                        ),
                      ),
                      Positioned(
                        top: 8,
                        left: 350,
                        child: Icon(
                          color: Colors.black,
                          Icons.arrow_forward_ios,
                          size: 24,
                          weight: 12,
                        ),
                      )
                    ],
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
