import 'package:flutter/material.dart';
import 'package:kyc_ocr/Features/homePage/image_viewer.dart';
import 'package:kyc_ocr/Features/views/extract_text_view.dart';

Widget homePageUI(selectedMedia) {
  return SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        /**
         * Selected Image Viewer
         * ! only shows first selected image even if multiple images are selected.
         */
        imageViewVersion1(selectedMedia),
        const SizedBox(height: 20),
        const Text(
          'Result ',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        /**
         * Result Viewer, OCR of Image
         * ? Text will be shows here after extrating from Image.
         */
        Container(
          height: 300,
          width: double.infinity,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              // color: const Color.fromARGB(255, 141, 206, 216),
              border: Border.all(color: Colors.yellow),
              borderRadius: BorderRadius.circular(20)),
          child: extractTextView(selectedMedia),
        ),

        /**
         * ? Version1.0
         * Test Result Viewer, OCR of Image
         * ? Text will be shows here after extrating from Image.
         */
        // DraggableScrollableSheet(
        //   builder: (BuildContext context, ScrollController scrollController) {
        //     return Container(
        //       height: 300,
        //       width: double.infinity,
        //       margin: const EdgeInsets.all(10),
        //       padding: const EdgeInsets.all(10),
        //       decoration: BoxDecoration(
        //           // color: const Color.fromARGB(255, 141, 206, 216),
        //           border: Border.all(color: Colors.yellow),
        //           borderRadius: BorderRadius.circular(20)),
        //       child: extractTextView(selectedMedia),
        //     );
        //   },
        // )
      ],
    ),
  );
}
