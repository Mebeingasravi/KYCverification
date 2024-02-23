import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:kyc_ocr/Features/shared/global_data.dart';
// import 'package:shared_preferences/shared_preferences.dart';

Widget extractTextView(File? selectedMedia) {
  String tempData = "abc";

  if (selectedMedia == null) {
    return const Center(
      child: Text('Result will be shown here'),
    );
  } else {
    return SingleChildScrollView(
      child: FutureBuilder(
        future: _extractText(selectedMedia),
        builder: (context, snapshot) {
          if (snapshot.data != null) {
            tempData = snapshot.data!;
            addDataIntoGlobalVariable(snapshot.data);
          }

          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(tempData ?? "Loading....",
                    style: const TextStyle(
                      fontSize: 25,
                    )),
              ),
              IconButton(
                onPressed: () async {
                  await Clipboard.setData(
                    ClipboardData(
                      text: tempData,
                    ),
                  );
                },
                icon: const Icon(Icons.copy_outlined),
              )
            ],
          );
        },
      ),
    );
  }
}

  /**
     * ? It currently only work with Android 'coz not testing in ios and windows
    */
 /// Recognized Text from an Image File in Android and Web


Future<String?> _extractText(File file) async {
  final textRecognizer = TextRecognizer(
    script: TextRecognitionScript.latin,
  );

  final InputImage inputImage = InputImage.fromFile(file);
  final RecognizedText recognizedText =
      await textRecognizer.processImage(inputImage);
  String text = recognizedText.text;
  textRecognizer.close();
  return text;

  /**
     * ? works with Web
    */
  // Recognized Text from an Image URL from web
  /// Test
  // final InputImage image = InputImage.fromFile(File('images\\download2.png'));
  // final recognized = await textRecognizer.processImage(image);
  // print('recognized.text ${recognized.text}');
  // return recognized.text;
}

/**
 * ! Add data to GlobalVariable tos storing scanned image text to easy access and copy
 */
///

void addDataIntoGlobalVariable(String? val) {
  if (val != null) {
    historyOCRData.add(val);
  }
}

/**
 * 
 * ! Shared Pref for storing scanned image text to easy access and copy
 * 
 */

// void writeIntoSharedPref(String snapData) async {
//   final SharedPreferences prefs = await SharedPreferences.getInstance();
//   await prefs.setString('action', 'Start');
// }