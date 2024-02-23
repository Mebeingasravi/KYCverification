import 'package:flutter/material.dart';
import 'package:kyc_ocr/Features/historyPage/list_of_ocr.dart';
import 'package:kyc_ocr/Features/shared/global_data.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPage();
}

class _HistoryPage extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Text Recognization History'),
        backgroundColor: const Color.fromARGB(255, 240, 191, 42),
      ),
      body: Center(
        child: historyListView(readOCRHistoryData()),
      ),
    );
  }

  List<String> readOCRHistoryData(){
    return historyOCRData;
  }
}
