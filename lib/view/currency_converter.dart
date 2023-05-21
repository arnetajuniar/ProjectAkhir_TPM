import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ConvertCurrency extends StatefulWidget {
  const ConvertCurrency({Key? key}) : super(key: key);

  @override
  State<ConvertCurrency> createState() => _ConvertCurrencyState();
}

class _ConvertCurrencyState extends State<ConvertCurrency> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Currency Coverter"),
      ),
    ));
  }
}
