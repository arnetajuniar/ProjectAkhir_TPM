import 'package:flutter/material.dart';
import 'package:project_tpm/view/page_currency_converter.dart';
import 'package:project_tpm/view/page_currency_converter.dart';
import 'package:project_tpm/view/page_feedback.dart';
import 'package:project_tpm/view/page_search_books.dart';
import 'package:project_tpm/view/page_profile.dart';
import 'package:project_tpm/view/page_time_converter.dart';
import 'package:project_tpm/view/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Menu"),
          automaticallyImplyLeading: false,
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
                        Padding(padding: EdgeInsets.only(top: 20)),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ConvertCurrency();
                    }));
                  },
                  splashColor: Colors.blue,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        Icon(Icons.attach_money, size: 70, color: Colors.blue),
                        Padding(padding: EdgeInsets.only(top: 20)),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const TimeConverter();
                    }));
                  },
                  splashColor: Colors.blue,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        Icon(Icons.watch, size: 70, color: Colors.blue),
                        Padding(padding: EdgeInsets.only(top: 20)),
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
