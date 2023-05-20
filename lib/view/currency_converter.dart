import 'package:flutter/material.dart';

class CurrencyCoverter extends StatefulWidget {
  const CurrencyCoverter({Key? key}) : super(key: key);

  @override
  State<CurrencyCoverter> createState() => _CurrencyCoverterState();
}

class _CurrencyCoverterState extends State<CurrencyCoverter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Currency Converter"),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          // child: Column(

          // ),
        ),
      ),
    );
  }
}
