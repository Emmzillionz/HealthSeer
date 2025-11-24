import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'account.dart';
import 'home_chart.dart';

// Main screen with conditional bottom nav bar
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
 // Tracks selected nav bar item (0 = Home, 1 = Account)
  int _currentIndex = 0;

  // List of main screens
  final List<Widget> _screens = [
    const HomeScreen(),
    const AccountScreen(),
  ];


  // Update the current index when a nav item is tapped
  void _onNavItemTapped(int index) {
    setState(() {
      if (index == 2) {
        _currentIndex = 1; // Map the FAB index (1) to Account index (1)
      } else {
        _currentIndex = index; // Use index 0 for Chart
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentIndex,
        onNavItemTapped: _onNavItemTapped,
      ),
    );
  }
}

// Custom Bottom Navigation Bar
class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onNavItemTapped;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onNavItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      selectedItemColor: const Color(0xFF000000),
      unselectedItemColor: const Color(0xFF000000),
      backgroundColor: Colors.white,
      onTap: onNavItemTapped,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            currentIndex == 0
                ? 'assets/icons/pie_chart.svg'
                : 'assets/icons/chart.svg',
            color: const Color(0xFF000000),
            width: 19.5,
            height: 19.5,
          ),
          label: 'Chart',
        ),
        BottomNavigationBarItem(
          icon: Container(
            width: 56,
            height: 56,
            child: FloatingActionButton(
              shape: const CircleBorder(),
              backgroundColor: const Color(0xFF316DEF),
              onPressed: () {
                // Handle FAB action (e.g., show popup or perform action)
                print('FAB pressed');
              },
              child: const Icon(
                Icons.add,
                color: Color(0xFFFFFFFF),
                size: 24,
              ),
            ),
          ),
          label: '', // No label for FAB
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            currentIndex == 1
                ? 'assets/icons/acc_selected.svg'
                : 'assets/icons/acc_unselected.svg',
            color: const Color(0xFF000000),
            width: 19.5,
            height: 19.5,
          ),
          label: 'Account',
        ),
      ],
    );
  }
}
