import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_seer/wel_aboard.dart';

class InterestsScreen extends StatefulWidget {
  const InterestsScreen({super.key});

  @override
  State<InterestsScreen> createState() => _InterestsScreenState();
}

class _InterestsScreenState extends State<InterestsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(right: 20, top: 70, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Header
                const Text(
                  'Choose your interest',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                // Subheader
                const Text(
                  'What are the diseases you want to predict?',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    fontFamily: 'PolySans',
                    color: Color(0xFF444444),
                  ),
                ),
                const SizedBox(height: 30),

                // First Row (3 small containers)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xFFC9EFFE),
                          ),
                          padding: const EdgeInsets.all(15),
                          height: 72,
                          width: 72,
                          child: Image.asset(
                            'assets/images/Vector.png',
                            height: 32,
                            width: 41.95,
                            color: const Color(0xFFFFFFFF),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Icon(
                          Icons.check_circle_rounded,
                          color: Color(0xFF316DEF),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        _buildDiseaseContainer('Disease 2'),
                        const SizedBox(height: 8),
                        const Text('Disease 2')
                      ],
                    ),
                    Column(
                      children: [
                        _buildDiseaseContainer('Disease 3'),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text('Disease 3')
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Second Row (2 larger containers)
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 241,
                      width: 165,
                      decoration: BoxDecoration(
                        color: const Color(0xFFC9EFFE),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Stack(
                        children: [
                          // Info button (top right)
                          Positioned(
                            top: 0.5,
                            right: 0.5,
                            child: IconButton(
                              icon: const Icon(
                                Icons.info_outline,
                                size: 20,
                                color: Color(0xFF000000),
                              ),
                              onPressed: () {
                                // Show disease information
                              },
                            ),
                          ),
                          Positioned(
                            top: 38,
                            left: 28,
                            child: Image.asset(
                              'assets/images/Vector.png',
                              color: const Color(0xFFFFFFFF),
                            ),
                          ),
                          const SizedBox(height: 30),
                          // Disease name and Add button
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, top: 150, right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  'Dementia',
                                  style: TextStyle(
                                      fontFamily: 'PolySans',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF000000)),
                                ),
                                const SizedBox(height: 10),
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Add disease to selection
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 12),
                                    ),
                                    child: const Text('Remove'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      alignment: Alignment.center,
                      height: 241,
                      width: 165,
                      decoration: BoxDecoration(
                        color: const Color(0xFF90DABA),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Stack(
                        children: [
                          // Info button (top right)
                          Positioned(
                            top: 0.5,
                            right: 0.5,
                            child: IconButton(
                              icon: const Icon(
                                Icons.info_outline,
                                size: 20,
                                color: Color(0xFF000000),
                              ),
                              onPressed: () {
                                // Show disease information
                              },
                            ),
                          ),
                          Positioned(
                            top: 38,
                            left: 28,
                            child: Image.asset(
                              'assets/images/Vector.png',
                              color: const Color(0xFFE0BBF5),
                            ),
                          ),
                          const SizedBox(height: 30),
                          // Disease name and Add button
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, top: 150, right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  "Diabetes",
                                  style: TextStyle(
                                      fontFamily: 'PolySans',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF000000)),
                                ),
                                const SizedBox(height: 10),
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Add disease to selection
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFF316DEF),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      padding: const EdgeInsets.symmetric(),
                                    ),
                                    child: const Text(
                                      'Add',
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 14,
                                        fontFamily: 'PolySans',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 241,
                      width: 165,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFBE184),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Stack(
                        children: [
                          // Info button (top right)
                          Positioned(
                            top: 0.5,
                            right: 0.5,
                            child: IconButton(
                              icon: const Icon(
                                Icons.info_outline,
                                size: 20,
                                color: Color(0xFF000000),
                              ),
                              onPressed: () {
                                // Show disease information
                              },
                            ),
                          ),
                          Positioned(
                            top: 38,
                            left: 28,
                            child: Image.asset(
                              'assets/images/Vector.png',
                              color: const Color(0xFFF36E70),
                            ),
                          ),
                          const SizedBox(height: 30),
                          // Disease name and Add button
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, top: 150, right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  "Alzheimer's",
                                  style: TextStyle(
                                      fontFamily: 'PolySans',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF000000)),
                                ),
                                const SizedBox(height: 10),
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Add disease to selection
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFF316DEF),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      padding: const EdgeInsets.symmetric(),
                                    ),
                                    child: const Text(
                                      'Add',
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 14,
                                        fontFamily: 'PolySans',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 300,)
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 60,
                width: 350,
                child: ElevatedButton(
                  onPressed: () {
                    // Add your button action here
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WelcomeAboard(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF316DEF),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 16),
                  ),
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      fontFamily: 'PolySans',
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 200,)
        ],
      ),
    );
  }

  // Small container with dashed border and plus sign
  Widget _buildDiseaseContainer(String label) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(10),
      dashPattern: const [5, 3],
      child: SizedBox(
        width: 70,
        height: 70,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/Frame2.svg'),
          ],
        ),
      ),
    );
  }
}
