import 'package:flutter/material.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Feedback"),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 320,
              width: 50,
              child: Container(
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 1,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: const Text(
                        "Kesan dan Pesan Mata Kuliah Teknologi & Pemrograman Mobile",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: const Text(
                        "Pada mata kuliah ini, antara teori dan praktik berjalan dengan seimbang. Meskipun saya mengalami beberapa kesulitan saat mengerjakan tugas dan menyebabkan hasil yang kurang sempurna, sebenarnya saya hanya perlu untuk mengatur waktu dengan lebih baik.\nUntuk dosen mata kuliah ini, Pak Bagus, terima kasih telah berbagi ilmu dan membimbing kami dengan baik. Walaupun mata kuliah ini tidak bisa dianggap mudah, tetapi gurauan di tengah proses belajar tidak sedikit membantu saya melewati hari Jumat setiap minggunya. Semoga usaha kami membuahkan hasil yang cukup baik untuk dapat dinyatakan lulus di mata kuliah ini.",
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
