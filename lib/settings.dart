import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _pushNotificationEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Settings',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontFamily: 'PolySans',
            )),
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SafeArea(
            top: false,
            bottom: false,
            right: false,
            left: false,
            child: ListView(
              children:  [
                ListTile(
                  title: const Text(
                    'Push notifications',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: const Text(
                    "Allow notifications so you won't miss any update from us.",
                  ),
                  trailing: Switch(
                  value: _pushNotificationEnabled,
                  onChanged: (bool value) {
                    setState(() {
                      _pushNotificationEnabled =value;
                    });
                  },activeColor: const Color(0xFF316DEF),
                  inactiveThumbColor: Colors.grey,
                  inactiveTrackColor: Colors.grey[300],
                ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: 350,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: const StadiumBorder(
                      side: BorderSide(
                        color: Colors.red,
                      ),
                    ),
                  ),
                  onPressed: () {
                    {
                      // Verification logic here
                    }
                  },
                  child: const Text(
                    "Delete account",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      fontFamily: 'PolySans',
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
