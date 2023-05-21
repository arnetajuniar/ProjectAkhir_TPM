import 'package:flutter/material.dart';

import '../page_feedback.dart';
import '../page_home.dart';
import '../page_profile.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedTab = 0;
  final List<Widget> _pageOptions = <Widget>[
    HomePage(),
    ProfilePage(),
    FeedbackPage(),
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pageOptions.elementAt(_selectedTab),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedTab,
        onTap: (int index) {
          setState(() {
            _selectedTab = index;
          });
        },
        selectedItemColor: Colors.blue,
        selectedFontSize: 13,
        unselectedFontSize: 13,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.account_circle),
          ),
          BottomNavigationBarItem(
            label: "Feedback",
            icon: Icon(Icons.feedback),
          ),
          BottomNavigationBarItem(label: "Logout", icon: Icon(Icons.logout)),
        ],
      ),
    );
  }
}
