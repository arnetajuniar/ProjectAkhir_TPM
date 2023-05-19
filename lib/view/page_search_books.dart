import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_tpm/view/page_list_books.dart';

class PageSearchBooks extends StatefulWidget {
  const PageSearchBooks({Key? key}) : super(key: key);

  @override
  State<PageSearchBooks> createState() => _PageSearchBooksState();
}

class _PageSearchBooksState extends State<PageSearchBooks> {
  final _controller = TextEditingController();
  String? text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Books"),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                padding: const EdgeInsets.all(1),
                child: Container(
                  child: TextField(
                    selectionHeightStyle: BoxHeightStyle.max,
                    style: GoogleFonts.nunitoSans(
                        textStyle: const TextStyle(fontSize: 15)),
                    decoration: InputDecoration(
                      hintStyle: GoogleFonts.nunitoSans(fontSize: 15.0),
                      hintText: "Enter book title or author",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7.0)),
                      filled: true,
                      icon: const Icon(
                        Icons.search,
                        size: 40.0,
                      ),
                    ),
                    controller: _controller,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              padding: const EdgeInsets.all(1),
              child: Container(
                  child: ElevatedButton(
                child: Text(
                  "Search",
                  style: GoogleFonts.nunitoSans(
                      textStyle: const TextStyle(
                          fontStyle: FontStyle.normal, fontSize: 20.0)),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PageListBooks(text: _controller.text);
                  }));
                },
              )),
            ),
          ],
        ),
      ),
    );
  }
}
