import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:gallery_picker/gallery_picker.dart';
import 'package:kyc_ocr/Features/homePage/home_page_ui.dart';
import 'package:kyc_ocr/Features/views/bottom_navigationbar.dart';
import 'package:kyc_ocr/Features/views/floating_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File? selectedMedia;
  String? imageAddress;
  File? fileData;

  void setSelectedMedia(fileData) {
    setState(() {
      selectedMedia = fileData;
      imageAddress = fileData.path;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Text Recognization'),
        backgroundColor: const Color.fromARGB(255, 240, 191, 42),
      ),
      body: homePageUI(selectedMedia),
      floatingActionButton: floatingBar(selectMedia),
      bottomNavigationBar: bottomNavigationBar(context),
    );
  }

  void selectMedia() async {
    if (!kIsWeb) {
      List<MediaFile>? media =
          await GalleryPicker.pickMedia(context: context, singleMedia: true);

      if (media != null && media.isNotEmpty) {
        fileData = await media.first.getFile();
        setSelectedMedia(fileData);
      }
    } else {
      fileData = File('images\\download2.png');
      setSelectedMedia(fileData);
    }
  }
}
