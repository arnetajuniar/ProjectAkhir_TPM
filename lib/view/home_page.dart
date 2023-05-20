import 'package:flutter/material.dart';
import 'package:project_tpm/view/feedback_page.dart';
import 'package:project_tpm/view/page_search_books.dart';
import 'package:project_tpm/view/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedTab = 0;
  final _pageOptions = [
    const HomePage(),
    const ProfilePage(),
    const FeedbackPage(),
    const HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Menu"),
        ),
        body: GridView.count(
          padding: const EdgeInsets.all(30),
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              margin: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const PageSearchBooks();
                  }));
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(Icons.menu_book, size: 70, color: Colors.blue),
                      Text(
                        "Search Books",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return HitungLayang();
                  // }));
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(Icons.attach_money, size: 70, color: Colors.blue),
                      Text(
                        "Currency Converter",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return dataDiri();
                  // }));
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(Icons.watch, size: 70, color: Colors.blue),
                      Text(
                        "Time Zone Converter",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
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
      ),
    );
  }

  // Widget _buildBottomNavBar() {
  //   return Scaffold(
  //     bottomNavigationBar: BottomNavigationBar(
  //       type: BottomNavigationBarType.fixed,
  //       currentIndex: _selectedTab,
  //       onTap: (int index) {
  //         setState(() {
  //           _selectedTab = index;
  //         });
  //       },
  //       selectedItemColor: Colors.blue,
  //       selectedFontSize: 13,
  //       unselectedFontSize: 13,
  //       iconSize: 30,
  //       items: const [
  //         BottomNavigationBarItem(
  //           label: "Home",
  //           icon: Icon(Icons.home),
  //         ),
  //         BottomNavigationBarItem(
  //           label: "Profile",
  //           icon: Icon(Icons.account_circle),
  //         ),
  //         BottomNavigationBarItem(
  //           label: "Feedback",
  //           icon: Icon(Icons.feedback),
  //         ),
  //         BottomNavigationBarItem(label: "Logout", icon: Icon(Icons.logout)),
  //       ],
  //     ),
  //   );
  // }
}
