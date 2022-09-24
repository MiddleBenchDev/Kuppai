import 'package:flutter/material.dart';
import 'screens/contactscreen.dart';
import 'screens/profilescreen.dart';
import 'screens/homescreen.dart';

class BottomBar extends StatefulWidget {
  String title = '';
  BottomBar({Key? key, required this.title}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int index = 1;
  final pages = [
    const ContactScreen(),
    const HomeScreen(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        centerTitle: true,
        title: Text(widget.title, style: const TextStyle(fontSize: 24)),
      ),
      body: pages[index],
      bottomNavigationBar: botNav(context),
    );
  }

  Container botNav(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              enableFeedback: false,
              tooltip: 'Contact',
              onPressed: () {
                setState(() {
                  index = 0;
                  widget.title = 'Report';
                });
              },
              icon: index == 0
                  ? const Icon(
                      Icons.phone,
                      color: Color(0xFF15Ac51),
                      size: 35,
                    )
                  : const Icon(Icons.phone_outlined,
                      color: Color(0xFF15AC51), size: 25)),
          IconButton(
              enableFeedback: false,
              tooltip: 'Home',
              onPressed: () {
                setState(() {
                  index = 1;
                  widget.title = 'Kuppai';
                });
              },
              icon: index == 1
                  ? const Icon(
                      Icons.home,
                      color: Color(0xFF15Ac51),
                      size: 35,
                    )
                  : const Icon(Icons.home_outlined,
                      color: Color(0xFF15AC51), size: 25)),
          IconButton(
              enableFeedback: false,
              tooltip: 'Profile',
              onPressed: () {
                setState(() {
                  index = 2;
                  widget.title = 'Profile';
                });
              },
              icon: index == 2
                  ? const Icon(
                      Icons.person,
                      color: Color(0xFF15Ac51),
                      size: 35,
                    )
                  : const Icon(Icons.person_outlined,
                      color: Color(0xFF15AC51), size: 25))
        ],
      ),
    );
  }
}
