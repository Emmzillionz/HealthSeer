import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Notifications',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontFamily: 'PolySans',
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SafeArea(
            left: false,
            right: false,
            top: false,
            child: ListView(
              children: const [
                ListTileW(),
                ListTileW(),
                ListTileW(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ListTileW extends StatelessWidget {
   const ListTileW({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Account activity',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          Text('Just now')
        ],
      ),
      subtitle: const Text(
        "Your prediction has been completed. Check it out on the home screen now",
      ),
      leading: Image.asset(
      'assets/images/Vector.png',
      height: 32,
      width: 41.95,
      color: Colors.blue,
    ),
      tileColor: Colors.white70,

    );
  }
}
