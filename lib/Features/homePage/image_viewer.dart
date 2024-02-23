import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

Widget imageView(File? selectedMedia) {
  if (selectedMedia == null) {
    return const Center(
      child: Text(
        'Pick an image for text recognition.',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
  return Center(
      child: !kIsWeb
          ? Image.file(
              selectedMedia,
              width: 200,
            )
          : Image.network(selectedMedia.path, height: 200, width: 200));
}

Widget imageViewVersion1(File? selectedMedia) {
  return Center(
    child: Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 240, 191, 42),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
      ),
      height: 350,
      width: double.infinity,
      child: imageBox(selectedMedia),
    ),
  );
}

Widget imageBox(File? selectedMedia) {
  if (selectedMedia == null) {
    return const Center(
      child: Text(
        'Pick an image for text recognition1.',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
  return SizedBox(
    height: double.infinity,
    child: Center(
        child: !kIsWeb
            ? Image.file(
                selectedMedia,
                width: 300,
              )
            : Image.network(selectedMedia.path, height: 200, width: 200)),
  );
}
