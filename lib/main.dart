import 'package:flutter/material.dart';
import 'package:project_tpm/view/feedback_page.dart';
import 'package:project_tpm/view/home_page.dart';
import 'package:project_tpm/view/page_search_books.dart';

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
      home: const FeedbackPage(),
    );
  }
}
