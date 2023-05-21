import 'package:flutter/material.dart';
import 'package:project_tpm/view/page_currency_converter.dart';
import 'package:project_tpm/view/page_feedback.dart';
import 'package:project_tpm/view/page_home.dart';
import 'package:project_tpm/view/page_search_books.dart';
import 'package:project_tpm/view/widget/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'dBooks Library',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomNavBar(),
    );
  }
}
