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
  int _currentIndex = 0;
  List _screens = [HomePage(), ProfilePage(), FeedbackPage(), HomePage()];

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

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
          currentIndex: _currentIndex,
          onTap: _updateIndex,
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

  Widget Logout() {
    return TextButton.icon(
      onPressed: () {
        // Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
        //   MaterialPageRoute(
        //     builder: (BuildContext context) {
        //       return const LoginPage();
        //     },
        //   ),
        //   (_) => false,
        // );
      },
      icon: const Icon(Icons.logout, size: 40.0),
      label: const Text("Logout"),
    );
  }
}
