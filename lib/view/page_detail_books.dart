import 'package:flutter/material.dart';
import '../model/books_detail.dart';
import '../controller/api_data_source.dart';

class PageDetailBooks extends StatefulWidget {
  final String id;
  const PageDetailBooks({Key? key, required this.id}) : super(key: key);

  @override
  State<PageDetailBooks> createState() => _PageDetailBooksState();
}

class _PageDetailBooksState extends State<PageDetailBooks> {
  BookDetail? filmDetail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Page"),
      ),
      body: _buildListUsersBody(),
    );
  }

  Widget _buildListUsersBody() {
    return FutureBuilder(
      future: ApiDataSource.instance.loadDetailBook(widget.id),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.hasError) {
          // Jika data ada error maka akan ditampilkan hasil error
          return _buildErrorSection();
        }
        if (snapshot.hasData) {
          // Jika data ada dan berhasil maka akan ditampilkan hasil datanya
          BookDetail filmDetail = BookDetail.fromJson(snapshot.data);
          return _buildItemUsers(filmDetail);
        }
        return _buildLoadingSection();
      },
    );
  }

  Widget _buildErrorSection() {
    return const Text("Error");
  }

  Widget _buildLoadingSection() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildItemUsers(BookDetail bookDetail) {
    return ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.all(15),
          width: 320,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blue,
              width: 1,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                alignment: Alignment.center,
                child: Image.network(
                  "${bookDetail.image}",
                  width: 150,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                alignment: Alignment.center,
                child: Text(
                  "${bookDetail.title}",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                alignment: Alignment.center,
                child: Text(
                  "${bookDetail.subtitle}",
                  style: const TextStyle(fontSize: 15),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: Text(
                  "by ${bookDetail.authors}",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: Text(
                  "Description:\n${bookDetail.description}",
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: Text(
                  "ISBN\n ${bookDetail.id}",
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: Text(
                  "Publisher:\n ${bookDetail.publisher}",
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: Text(
                  "Publisher:\n ${bookDetail.pages}",
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: Text(
                  "Publisher:\n ${bookDetail.year}",
                ),
              ),
              // Container(
              //   padding: const EdgeInsets.all(5),
              //   child: ElevatedButton(
              //       onPressed: _launchURLread(),
              //       child: const Text("Read Online")),
              // ),
              // Container(
              //   padding: const EdgeInsets.all(5),
              //   child: ElevatedButton(
              //       onPressed: _launchURLread(),
              //       child: const Text("Free Download")),
              // ),
            ],
          )),
        ),
      ],
    );
  }

  // Future<void> _launchURLread() async {
  //   String url = Uri.parse();
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }
}
