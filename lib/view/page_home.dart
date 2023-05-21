import 'package:flutter/material.dart';
import 'package:project_tpm/view/page_feedback.dart';
import 'package:project_tpm/view/page_search_books.dart';
import 'package:project_tpm/view/page_profile.dart';
import 'package:project_tpm/view/widget/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int _selectedTab = 0;
  // final List<Widget> _pageOptions = <Widget>[
  //   HomePage(),
  //   ProfilePage(),
  //   FeedbackPage(),
  //   HomePage(),
  // ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Menu"),
        ),
        body: Center(
          child: GridView.count(
            padding: const EdgeInsets.all(30),
            crossAxisCount: 2,
            children: <Widget>[
              Card(
                margin: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
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
        ),
      ),
    );
  }
}
