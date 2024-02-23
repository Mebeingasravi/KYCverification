import 'package:flutter/material.dart';
import 'package:kyc_ocr/Features/historyPage/history_page.dart';
import 'package:kyc_ocr/Features/homePage/home_page.dart';

ThemeData themeData = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
);

var routes = {
  '/homepage': (context) => const HomePage(),
  '/history': (context) => const HistoryPage(),
};

List<String> historyOCRData = [];