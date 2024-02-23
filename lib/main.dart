import 'package:flutter/material.dart';
import 'package:kyc_ocr/Features/homePage/home_page.dart';
import 'package:kyc_ocr/Features/shared/global_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Optical character recognition',
      theme: themeData,
      routes: routes,
      home: const HomePage(),
    );
  }
}
